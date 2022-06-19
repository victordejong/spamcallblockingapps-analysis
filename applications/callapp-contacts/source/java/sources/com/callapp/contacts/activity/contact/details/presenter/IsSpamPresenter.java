package com.callapp.contacts.activity.contact.details.presenter;

import android.content.Context;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.framework.phone.Phone;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter.class */
public class IsSpamPresenter extends BaseUserCorrectedInfoPresenter implements CallStateListener, ContactDataChangeListener {
    private static final String ANALYTICS_SPAM_PRESENTER_SHOWN_LABEL = "Is it spam show";
    private boolean forceShowPresenter = false;
    private boolean genomeLoadingDone = false;

    private void expandIsSpamView(final Phone phone, ContactData contactData) {
        if (contactData.isContactInDevice() || !contactData.isSpammer() || contactData.isUnsearchableNumber() || PhoneStateManager.get().isAnyCallActive() || UserCorrectedInfoUtil.m27342a(phone) != null) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.IsSpamPresenter.3
            @Override // java.lang.Runnable
            public void run() {
                IsSpamPresenter.this.showCorrectedInfo(Activities.getString(2131887074), phone, IsSpamPresenter.ANALYTICS_SPAM_PRESENTER_SHOWN_LABEL);
                IsSpamPresenter.this.forceShowPresenter = false;
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void forceShowPresenter() {
        this.forceShowPresenter = true;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected int getBackgroundColor(Context context) {
        return C0790b.m44492c(CallAppApplication.get(), 2131099675);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected int getLayoutId() {
        return 2131363121;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if (!callData.getState().isPostCall()) {
            if (callData.getState().isPreCall()) {
                return;
            }
            collapse(false);
            return;
        }
        ContactData contact = this.presentersContainer.getContact();
        if (contact == null || !contact.hasPhone(callData.getNumber()) || CallLogUtils.m27556b(contact.getPhone().getRawNumber())) {
            collapse(false);
        } else {
            expandIsSpamView(callData.getNumber(), contact);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            collapse(true);
            this.genomeLoadingDone = false;
        }
        boolean contains = set.contains(ContactField.genomeData);
        if (contains) {
            this.genomeLoadingDone = true;
        }
        if ((contains || (set.contains(ContactField.spamScore) && this.genomeLoadingDone)) && this.forceShowPresenter) {
            expandIsSpamView(contactData.getPhone(), contactData);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        presentersContainer.addContactChangedListener(this, EnumSet.of(ContactField.newContact, ContactField.spamScore));
        presentersContainer.addCallStateListener(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected void onNegativeBtnClicked(final Phone phone) {
        AnalyticsManager.get().m28449a(Constants.USER_CORRECTED_INFO, ANALYTICS_SPAM_PRESENTER_SHOWN_LABEL, "Negative");
        collapse(true);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.presenter.IsSpamPresenter.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                UserCorrectedInfoUtil.m27344a(IsSpamPresenter.this.presentersContainer.getContact(), phone, false);
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
            }
        }.execute();
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void onPositiveBtnClicked(final Phone phone) {
        super.onPositiveBtnClicked(phone);
        AnalyticsManager.get().mo28444a(Constants.USER_CORRECTED_INFO, ANALYTICS_SPAM_PRESENTER_SHOWN_LABEL, "Positive", 0.0d, new String[0]);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.presenter.IsSpamPresenter.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                UserCorrectedInfoUtil.m27344a(IsSpamPresenter.this.presentersContainer.getContact(), phone, true);
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
            }
        }.execute();
        BlockManager.m28748b(this.presentersContainer.getRealContext(), this.presentersContainer.getContact().getNameOrNumber(), phone);
    }
}
