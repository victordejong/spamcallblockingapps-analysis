package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.CallHistoryData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter.class */
public class PhonesPresenter extends BasePresenter implements CallStateListener, ContactDataChangeListener {
    private ImageView callIcon;
    private TextView phoneText;
    private TextView providerText;
    private ImageView simIdIcon;
    private View spamView;
    private TextView timeText;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.PhonesPresenter$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$5.class */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12440a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f12440a = iArr;
            try {
                iArr[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12440a[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12440a[PresentersContainer.MODE.DURING_CALL_OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12440a[PresentersContainer.MODE.CONTACT_DETAILS_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12440a[PresentersContainer.MODE.POST_CALL_SCREEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private boolean isLater(CallHistoryData callHistoryData, CallHistoryData callHistoryData2) {
        if (callHistoryData != null && callHistoryData2 == null) {
            return true;
        }
        if (callHistoryData == null && callHistoryData2 != null) {
            return false;
        }
        if (callHistoryData == null || callHistoryData2 == null) {
            return true;
        }
        return callHistoryData.getLastCallTimeStamp().after(callHistoryData2.getLastCallTimeStamp());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCallLogIcon(int i) {
        int i2;
        ImageView imageView = this.callIcon;
        if (imageView != null) {
            int i3 = 0;
            if (i == 1) {
                i2 = 2131231544;
            } else if (i != 2) {
                if (!(i == 3 || i == 5 || i == 6000)) {
                    if (i == 40) {
                        i2 = 2131231551;
                    } else if (i != 41) {
                        i2 = 0;
                    }
                }
                i2 = 2131231550;
            } else {
                i2 = 2131231554;
            }
            if (i2 == 0) {
                i3 = 8;
            }
            imageView.setVisibility(i3);
            ImageUtils.a(this.callIcon, i2, (ColorFilter) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPhoneNumberInfoText(ContactData contactData) {
        if (this.providerText != null) {
            this.providerText.setText(contactData.getPhone().getPhoneInfo());
            if (((ThemeState) Prefs.di.get()).isLightTheme()) {
                this.providerText.setTextColor(ThemeUtils.getColor(2131099918));
            } else {
                this.providerText.setTextColor(ThemeUtils.getColor(2131100228));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTimeText(String str) {
        if (this.timeText == null) {
            return;
        }
        if (StringUtils.a((CharSequence) str)) {
            this.timeText.setVisibility(8);
            return;
        }
        this.timeText.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100108));
        this.timeText.setText(str);
        this.timeText.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewAsSpam() {
        View view = this.spamView;
        if (view != null) {
            View b2 = ViewUtils.b(view);
            this.spamView = b2;
            if (b2 != null) {
                int color = ThemeUtils.getColor(2131099675);
                ((ImageView) this.spamView.findViewById(2131363928)).setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                TextView textView = (TextView) this.spamView.findViewById(2131363929);
                textView.setText(Activities.getString(2131886354));
                textView.setTextColor(color);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLastCallTimeAndIcon(CallHistoryData callHistoryData) {
        if (callHistoryData != null) {
            if (this.timeText != null) {
                setTimeText(DateUtils.d(callHistoryData.getLastCallTimeStamp()));
            }
            if (this.callIcon != null) {
                setCallLogIcon(callHistoryData.getCallType());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePhonesText(final ContactData contactData, CallState callState, final CallData callData, final boolean z) {
        if (contactData != null) {
            int i = AnonymousClass5.f12440a[this.presentersContainer.getContainerMode().ordinal()];
            if (i == 1 || i == 2) {
                final Phone phone = contactData.getPhone();
                final CallHistoryData lastCallHistoryData = contactData.getLastCallHistoryData(phone);
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhonesPresenter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        PhonesPresenter.this.updateLastCallTimeAndIcon(lastCallHistoryData);
                        if (PhonesPresenter.this.phoneText != null) {
                            PhonesPresenter.this.phoneText.setText(phone.e());
                        }
                    }
                });
            } else if (i == 3 || i == 4) {
                if (callData != null) {
                    CallHistoryData lastCallHistoryData2 = contactData.getLastCallHistoryData(callData.getNumber());
                    final CallHistoryData callHistoryData = lastCallHistoryData2;
                    if (lastCallHistoryData2 == null) {
                        Iterator<Phone> it2 = contactData.getPhonesList().iterator();
                        while (true) {
                            callHistoryData = lastCallHistoryData2;
                            if (!it2.hasNext()) {
                                break;
                            }
                            CallHistoryData lastCallHistoryData3 = contactData.getLastCallHistoryData(it2.next());
                            if (isLater(lastCallHistoryData3, lastCallHistoryData2)) {
                                lastCallHistoryData2 = lastCallHistoryData3;
                            }
                        }
                    }
                    this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhonesPresenter.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (UserCorrectedInfoUtil.a(contactData)) {
                                PhonesPresenter.this.setViewAsSpam();
                                return;
                            }
                            if (PhonesPresenter.this.presentersContainer.getContainerMode() == PresentersContainer.MODE.DURING_CALL_OVERLAY) {
                                CallHistoryData callHistoryData2 = callHistoryData;
                                if (callHistoryData2 != null) {
                                    PhonesPresenter.this.updateLastCallTimeAndIcon(callHistoryData2);
                                } else {
                                    PhonesPresenter.this.setTimeText(Activities.getString(2131887328));
                                    PhonesPresenter.this.setCallLogIcon(callData.isIncoming() ? 1 : 2);
                                }
                            }
                            if (z && PhonesPresenter.this.phoneText != null) {
                                PhonesPresenter.this.phoneText.setText(callData.getNumber().e());
                            }
                            PhonesPresenter.this.setPhoneNumberInfoText(contactData);
                        }
                    });
                }
            } else if (i == 5 && z && callData != null && this.phoneText != null) {
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhonesPresenter.4
                    @Override // java.lang.Runnable
                    public void run() {
                        PhonesPresenter.this.phoneText.setText(callData.getNumber().e());
                    }
                });
            }
        }
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(final CallData callData) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhonesPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                PhonesPresenter.this.updatePhonesText(PhonesPresenter.this.getPresentersContainer().getContact(), callData.getState(), callData, true);
            }
        });
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        CallData lastCall = PhoneStateManager.get().getLastCall();
        updatePhonesText(contactData, lastCall == null ? CallState.PRE_CALL : lastCall.getState(), lastCall, false);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        presentersContainer.addCallStateListener(this);
        presentersContainer.addContactChangedListener(this, EnumSet.of(ContactField.phones, ContactField.phone, ContactField.callHistoryData, ContactField.spamScore));
        this.spamView = presentersContainer.findViewById(2131363930);
        this.phoneText = (TextView) presentersContainer.findViewById(2131363500);
        this.callIcon = (ImageView) presentersContainer.findViewById(2131362214);
        this.timeText = (TextView) presentersContainer.findViewById(2131364122);
        this.providerText = (TextView) presentersContainer.findViewById(2131363498);
    }
}
