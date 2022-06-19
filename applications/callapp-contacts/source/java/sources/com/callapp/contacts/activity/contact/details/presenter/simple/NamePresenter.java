package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.recorder.service.RecordService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter.class */
public class NamePresenter extends TextViewPresenter implements OnIncognitoCallStartedListener, DestroyListener {

    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.NamePresenter$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$3.class */
    public static /* synthetic */ class C63863 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22305a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f22305a = iArr;
            try {
                iArr[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22305a[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public void trackEvent() {
        int i = C63863.f22305a[this.presentersContainer.getContainerMode().ordinal()];
        if (i == 1) {
            AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickOverlayCopyNumber");
        } else if (i != 2) {
        } else {
            AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickOverlaySMS");
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter
    protected int getTextViewId() {
        return 2131363348;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        if (contactData != null && CollectionUtils.m26073a(set, ContactField.fullName, ContactField.phone, ContactField.isIncognito)) {
            setText(this.presentersContainer.mo30920a(contactData) ? contactData.getPhone().m26095b() : contactData.isVoiceMail() ? Activities.getString(2131888153) : (this.presentersContainer.getContainerMode() != PresentersContainer.MODE.CALL_RECORDER_POPUP || !StringUtils.m26044b((Object) StringUtils.m26020j(contactData.getNameOrNumber()), (Object) RecordService.PRIVATE_NUMBER_STRING)) ? contactData.getPhone().getRawNumber().equals(Activities.getString(2131886488)) ? Activities.getString(2131886488) : StringUtils.m26020j(contactData.getNameOrNumber()) : Activities.getString(2131886488));
        }
        if (!CollectionUtils.m26073a(set, ContactField.spamScore) || getTextView() == null || this.presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.NamePresenter.2
            @Override // java.lang.Runnable
            public void run() {
                if (NamePresenter.this.isContainsContactHeader()) {
                    NamePresenter.this.getTextView().setTextColor(ThemeUtils.m27386a(NamePresenter.this.getPresentersContainer().getRealContext(), 2131100228));
                } else if (UserCorrectedInfoUtil.m27345a(contactData)) {
                    NamePresenter.this.getTextView().setTextColor(ThemeUtils.m27386a(NamePresenter.this.getPresentersContainer().getRealContext(), 2131099675));
                } else {
                    NamePresenter.this.getTextView().setTextColor(ThemeUtils.m27386a(NamePresenter.this.getPresentersContainer().getRealContext(), 2131100140));
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.TextViewPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(final PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        ContactData contact = presentersContainer.getContact();
        if (contact != null) {
            String nameOrNumber = contact.getNameOrNumber();
            if (StringUtils.m26045b((CharSequence) nameOrNumber)) {
                setText(StringUtils.m26020j(nameOrNumber));
            }
        }
        presentersContainer.addContactChangedListener(this, ContactFieldEnumSets.NAME_PRESENTER);
        presentersContainer.addDestroyListener(this);
        if (presentersContainer.getEventBus() != null) {
            presentersContainer.getEventBus().m29048a(OnIncognitoCallStartedListener.f23126a, this);
        }
        if (presentersContainer.getContainerMode() != PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
            getTextView().setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.NamePresenter.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    ContactData contact2 = presentersContainer.getContact();
                    if (contact2 == null || !PhoneManager.get().m28239a(contact2.getPhone().getRawNumber()).isValidForSearch()) {
                        return;
                    }
                    NamePresenter.this.trackEvent();
                    CallAppApplication callAppApplication = CallAppApplication.get();
                    long deviceId = contact2.getDeviceId();
                    String rawNumber = contact2.getPhone().getRawNumber();
                    Activities.m27685a(CallAppApplication.get(), ContactDetailsActivity.createIntent(callAppApplication, deviceId, rawNumber, null, true, null, "TextName-" + presentersContainer.getContainerMode().name(), null));
                }
            });
        }
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        if (this.presentersContainer.getEventBus() != null) {
            this.presentersContainer.getEventBus().m29045b(OnIncognitoCallStartedListener.f23126a, this);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener
    public void onIncognitoCallStarted(ContactData contactData) {
        if (contactData != null) {
            setText(contactData.getPhone().m26095b());
        }
    }
}
