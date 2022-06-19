package com.callapp.contacts.service.jobs;

import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.overlay.MultipleIncomingSmsOverlayView;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.RecognizedContactNotificationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import com.callapp.contacts.receiver.ScreenUnlockReceiver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import io.objectbox.C17944a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/SmsReceivedServiceV1.class */
public class SmsReceivedServiceV1 extends SafeJobIntentService {

    /* renamed from: j */
    private static RegistrationCodeListener f27584j;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener.class */
    public interface RegistrationCodeListener {
        /* renamed from: a */
        void mo27777a(String str);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData.class */
    public static class SmsData implements Parcelable {
        public static final Parcelable.Creator<SmsData> CREATOR = new Parcelable.Creator<SmsData>() { // from class: com.callapp.contacts.service.jobs.SmsReceivedServiceV1.SmsData.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SmsData createFromParcel(Parcel parcel) {
                return new SmsData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SmsData[] newArray(int i) {
                return new SmsData[i];
            }
        };
        public final String message;
        public final String phoneNumber;

        private SmsData(Parcel parcel) {
            this.phoneNumber = parcel.readString();
            this.message = parcel.readString();
        }

        public SmsData(String str, String str2) {
            this.phoneNumber = str;
            this.message = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.phoneNumber);
            parcel.writeString(this.message);
        }
    }

    /* renamed from: a */
    public static void m27780a(RegistrationCodeListener registrationCodeListener) {
        f27584j = registrationCodeListener;
    }

    /* renamed from: b */
    private static SmsData m27779b(Intent intent) {
        if (intent.getExtras() == null) {
            return null;
        }
        try {
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            if (messagesFromIntent != null && messagesFromIntent.length > 0) {
                StringBuilder sb = new StringBuilder();
                int length = messagesFromIntent.length;
                int i = 0;
                String str = null;
                while (true) {
                    String str2 = str;
                    if (i >= length) {
                        return new SmsData(str2, sb.toString());
                    }
                    SmsMessage smsMessage = messagesFromIntent[i];
                    String str3 = str2;
                    if (smsMessage != null) {
                        str3 = str2;
                        if (StringUtils.m26059a((CharSequence) str2)) {
                            str3 = smsMessage.getDisplayOriginatingAddress();
                        }
                        sb.append(smsMessage.getDisplayMessageBody());
                    }
                    i++;
                    str = str3;
                }
            }
            return null;
        } catch (Throwable th) {
            CLog.m27609a(SmsReceivedServiceV1.class, th);
            return null;
        }
    }

    /* renamed from: d */
    public static void m27778d() {
        f27584j = null;
    }

    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        if ("android.provider.Telephony.SMS_RECEIVED".equals(intent.getAction())) {
            AnalyticsManager.get().m28450a(Constants.SMS, "SMS received");
            SmsData m27779b = m27779b(intent);
            RegistrationCodeListener registrationCodeListener = f27584j;
            if (registrationCodeListener != null && m27779b != null) {
                registrationCodeListener.mo27777a(m27779b.message);
            }
            if (m27779b == null || !Prefs.f26246aW.get().booleanValue() || !Activities.m27641e() || !Prefs.f26656m.get().booleanValue() || ((Boolean) BlockManager.m28755a(PhoneManager.get().m28239a(m27779b.phoneNumber)).first).booleanValue()) {
                AnalyticsManager.get().m28449a(Constants.SMS, "Not showing SMS", m27779b == null ? "no SMS data" : !Activities.m27641e() ? "cant draw overlays" : !Prefs.f26246aW.get().booleanValue() ? "setup not complete" : !Prefs.f26656m.get().booleanValue() ? "incoming sms disabled" : "blocked");
                return;
            }
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, m27779b.phoneNumber);
            intent.putExtra(SingleSmsData.EXTRA_SMS_TEXT, m27779b.message);
            final SingleSmsData createFromIntent = SingleSmsData.createFromIntent(intent);
            if (((KeyguardManager) CallAppApplication.get().m31868a("keyguard")).isKeyguardLocked()) {
                AnalyticsManager.get().m28449a(Constants.SMS, "Not showing SMS overlay", "keyguard locked");
                CallAppApplication.get().getObjectBoxStore().m4727d(SingleSmsData.class).m4711a((C17944a) createFromIntent);
                ScreenUnlockReceiver.m27888a();
            } else {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.service.jobs.SmsReceivedServiceV1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MultipleIncomingSmsOverlayView m28523a = OverlayManager.get().m28523a(MultipleIncomingSmsOverlayView.class);
                        if (m28523a == null) {
                            m28523a = new MultipleIncomingSmsOverlayView(CallAppApplication.get());
                            m28523a.onCreate();
                            AnalyticsManager.get().m28450a(Constants.SMS, "creating SMS overlay");
                        } else {
                            AnalyticsManager.get().m28450a(Constants.SMS, "Adding page to existing SMS overlay");
                        }
                        ((MultipleIncomingSmsOverlayView) m28523a).addPage(createFromIntent);
                    }
                });
            }
            try {
                if (DeviceIdLoader.m28854a(PhoneManager.get().m28239a(m27779b.phoneNumber), 500) != 0) {
                    return;
                }
                ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
                builder.phoneAsRaw = m27779b.phoneNumber;
                builder.comType = IMDataExtractionUtils.ComType.TEXT;
                builder.recognizedPersonOrigin = IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE;
                builder.when = System.currentTimeMillis();
                ExtractedInfo build = builder.build();
                RecognizedContactNotificationManager.get();
                RecognizedContactNotificationManager.m28505a(build);
            } catch (DeviceIdLoader.OperationFailedException e) {
                AnalyticsManager.get().m28449a(Constants.SMS, "Not showing SMS", "exception");
            }
        }
    }
}
