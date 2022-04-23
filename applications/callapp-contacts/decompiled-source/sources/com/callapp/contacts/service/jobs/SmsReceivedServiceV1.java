package com.callapp.contacts.service.jobs;

import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.telephony.SmsMessage;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.overlay.ContactDetailsOverlayView;
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
import io.objectbox.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/SmsReceivedServiceV1.class */
public class SmsReceivedServiceV1 extends SafeJobIntentService {
    private static RegistrationCodeListener j;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener.class */
    public interface RegistrationCodeListener {
        void a(String str);
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

    public static void a(RegistrationCodeListener registrationCodeListener) {
        j = registrationCodeListener;
    }

    private static SmsData b(Intent intent) {
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
                while (i < length) {
                    SmsMessage smsMessage = messagesFromIntent[i];
                    str = str;
                    if (smsMessage != null) {
                        str = str;
                        if (StringUtils.a((CharSequence) str)) {
                            str = smsMessage.getDisplayOriginatingAddress();
                        }
                        sb.append(smsMessage.getDisplayMessageBody());
                    }
                    i++;
                }
                return new SmsData(str, sb.toString());
            }
            return null;
        } catch (Throwable th) {
            CLog.a(SmsReceivedServiceV1.class, th);
            return null;
        }
    }

    public static void d() {
        j = null;
    }

    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        if ("android.provider.Telephony.SMS_RECEIVED".equals(intent.getAction())) {
            AnalyticsManager.get().a(Constants.SMS, "SMS received");
            SmsData b2 = b(intent);
            RegistrationCodeListener registrationCodeListener = j;
            if (!(registrationCodeListener == null || b2 == null)) {
                registrationCodeListener.a(b2.message);
            }
            if (b2 == null || !Prefs.aW.get().booleanValue() || !Activities.e() || !Prefs.m.get().booleanValue() || ((Boolean) BlockManager.a(PhoneManager.get().a(b2.phoneNumber)).first).booleanValue()) {
                AnalyticsManager.get().a(Constants.SMS, "Not showing SMS", b2 == null ? "no SMS data" : !Activities.e() ? "cant draw overlays" : !Prefs.aW.get().booleanValue() ? "setup not complete" : !Prefs.m.get().booleanValue() ? "incoming sms disabled" : "blocked");
                return;
            }
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, b2.phoneNumber);
            intent.putExtra(SingleSmsData.EXTRA_SMS_TEXT, b2.message);
            final SingleSmsData createFromIntent = SingleSmsData.createFromIntent(intent);
            if (((KeyguardManager) CallAppApplication.get().a("keyguard")).isKeyguardLocked()) {
                AnalyticsManager.get().a(Constants.SMS, "Not showing SMS overlay", "keyguard locked");
                CallAppApplication.get().getObjectBoxStore().d(SingleSmsData.class).a((a) createFromIntent);
                ScreenUnlockReceiver.a();
            } else {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.service.jobs.SmsReceivedServiceV1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactDetailsOverlayView a2 = OverlayManager.get().a(MultipleIncomingSmsOverlayView.class);
                        if (a2 == null) {
                            a2 = new MultipleIncomingSmsOverlayView(CallAppApplication.get());
                            a2.onCreate();
                            AnalyticsManager.get().a(Constants.SMS, "creating SMS overlay");
                        } else {
                            AnalyticsManager.get().a(Constants.SMS, "Adding page to existing SMS overlay");
                        }
                        ((MultipleIncomingSmsOverlayView) a2).addPage(SingleSmsData.this);
                    }
                });
            }
            try {
                if (DeviceIdLoader.a(PhoneManager.get().a(b2.phoneNumber), 500) == 0) {
                    ExtractedInfo.Builder builder = new ExtractedInfo.Builder();
                    builder.phoneAsRaw = b2.phoneNumber;
                    builder.comType = IMDataExtractionUtils.ComType.TEXT;
                    builder.recognizedPersonOrigin = IMDataExtractionUtils.RecognizedPersonOrigin.SMS_MESSAGE;
                    builder.when = System.currentTimeMillis();
                    ExtractedInfo build = builder.build();
                    RecognizedContactNotificationManager.get();
                    RecognizedContactNotificationManager.a(build);
                }
            } catch (DeviceIdLoader.OperationFailedException e) {
                AnalyticsManager.get().a(Constants.SMS, "Not showing SMS", "exception");
            }
        }
    }
}
