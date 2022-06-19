package com.callapp.contacts.activity.contact.details.presenter;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.UserCorrectedDataManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.RetractableView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter.class */
public class UserCorrectedInfoPresenter extends BaseUserCorrectedInfoPresenter implements CallStateListener, ContactDataChangeListener {
    private static final String ANALYTICS_HELP_US_IDENTIFY_NUMBER_BUTTON = "Help us identify clicked";
    private static final String ANALYTICS_HELP_US_IDENTIFY_PRESENTER_SHOWN_LABEL = "Help us identify shown";
    private static final String ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL = "Is it X shown";
    private static final String ANALYTICS_NEGATIVE_BUTTON_CLICKED = "Negative";
    private static final String ANALYTICS_POSITIVE_BUTTON_CLICKED = "Positive";
    private View correctedInfoViewForHelpUsIdentifyNumber;
    private boolean forceShowPresenter = false;
    private boolean genomeLoadingDone = false;
    private Phone lastPhoneCall;

    private void collapseIfNeededCorrectedInfoOnContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.newContact)) {
            collapse(false);
            this.genomeLoadingDone = false;
        } else if (set.contains(ContactField.deviceId)) {
            if (!contactData.isContactInDevice()) {
                return;
            }
            collapse(true);
        } else if (!set.contains(ContactField.isIncognito) || !this.presentersContainer.mo30920a(contactData)) {
        } else {
            collapse(true);
        }
    }

    private boolean expandUserCorrectedInfoPresenterIfNeeded(final Phone phone, ContactData contactData) {
        if (!(contactData != null && !contactData.isContactInDevice()) || UserCorrectedInfoUtil.m27345a(contactData) || !contactData.hasPhone(phone) || PhoneStateManager.get().isAnyCallActive() || UserCorrectedDataManager.m28903a(contactData.getDeviceId(), phone) || this.presentersContainer.mo30920a(contactData) || contactData.isVoiceMail()) {
            return false;
        }
        String fullName = contactData.getFullName();
        if (!StringUtils.m26045b((CharSequence) fullName)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.5
                @Override // java.lang.Runnable
                public void run() {
                    UserCorrectedInfoPresenter.this.showHelpUsIdentifyNumber(phone);
                }
            });
            return true;
        }
        final String m27697a = Activities.m27697a(2131886921, StringUtils.m26020j(fullName));
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.4
            @Override // java.lang.Runnable
            public void run() {
                UserCorrectedInfoPresenter.this.showCorrectedInfo(m27697a, phone, UserCorrectedInfoPresenter.ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL);
            }
        });
        return true;
    }

    public void showHelpUsIdentifyNumber(final Phone phone) {
        if (!ViewUtils.m27329a(this.correctedInfoViewForHelpUsIdentifyNumber)) {
            View inflate = ((ViewStub) this.correctedInfoViewForHelpUsIdentifyNumber).inflate();
            this.correctedInfoViewForHelpUsIdentifyNumber = inflate;
            ((RetractableView) inflate).setExpandMaxHeight((int) CallAppApplication.get().getResources().getDimension(2131166126));
            ((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).mo26651c();
            ((TextView) this.correctedInfoViewForHelpUsIdentifyNumber.findViewById(2131362149)).setText(Activities.getString(2131887889));
            this.correctedInfoViewForHelpUsIdentifyNumber.findViewById(2131362959).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, UserCorrectedInfoPresenter.ANALYTICS_HELP_US_IDENTIFY_NUMBER_BUTTON);
                    UserCorrectedInfoPresenter.this.showTellUsWhoItIsPopup(UserCorrectedInfoPresenter.this.presentersContainer.getContact(), phone, UserCorrectedInfoPresenter.ANALYTICS_HELP_US_IDENTIFY_NUMBER_BUTTON);
                }
            });
        }
        ((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).mo26661a();
        AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, ANALYTICS_HELP_US_IDENTIFY_PRESENTER_SHOWN_LABEL);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void collapse(final boolean z) {
        super.collapse(z);
        if (ViewUtils.m27329a(this.correctedInfoViewForHelpUsIdentifyNumber)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.7
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        ((RetractableView) UserCorrectedInfoPresenter.this.correctedInfoViewForHelpUsIdentifyNumber).mo26655b();
                    } else {
                        ((RetractableView) UserCorrectedInfoPresenter.this.correctedInfoViewForHelpUsIdentifyNumber).mo26651c();
                    }
                }
            });
        }
    }

    public void collapseCorrectedInfoViewForHelpUsIdentifyNumber() {
        if (ViewUtils.m27329a(this.correctedInfoViewForHelpUsIdentifyNumber)) {
            ((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).mo26655b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void forceShowPresenter() {
        synchronized (this.expandSyncObject) {
            this.forceShowPresenter = true;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected int getBackgroundColor(Context context) {
        return C0790b.m44492c(context, 2131099786);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected int getLayoutId() {
        return 2131362151;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public boolean isExpanded() {
        if (!super.isExpanded()) {
            return ViewUtils.m27329a(this.correctedInfoViewForHelpUsIdentifyNumber) && !((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).isCollapsed();
        }
        return true;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        ContactData contact = this.presentersContainer.getContact();
        if (!callData.getState().isPostCall() || this.presentersContainer.mo30920a(contact) || PhoneManager.get().m28240a(callData.getNumber())) {
            if (callData.getState().isPreCall()) {
                return;
            }
            collapse(false);
        } else if (contact == null || !contact.hasPhone(callData.getNumber()) || contact.isUnsearchableNumber()) {
            collapse(false);
        } else {
            this.lastPhoneCall = callData.getNumber();
            synchronized (this.expandSyncObject) {
                expandUserCorrectedInfoPresenterIfNeeded(callData.getNumber(), contact);
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        collapseIfNeededCorrectedInfoOnContactChanged(contactData, set);
        if (contactData.isContactInDevice() || contactData.isUnsearchableNumber() || this.presentersContainer.mo30920a(contactData)) {
            return;
        }
        boolean contains = set.contains(ContactField.genomeData);
        boolean z = true;
        if (contains) {
            this.genomeLoadingDone = true;
        }
        if (!contains && (!set.contains(ContactField.fullName) || !this.genomeLoadingDone)) {
            return;
        }
        Phone phone = this.lastPhoneCall;
        if (phone == null) {
            phone = contactData.getPhone();
        }
        if (UserCorrectedDataManager.m28903a(contactData.getDeviceId(), phone)) {
            collapse(true);
            return;
        }
        synchronized (this.expandSyncObject) {
            if (this.forceShowPresenter) {
                if (expandUserCorrectedInfoPresenterIfNeeded(contactData.getPhone(), contactData)) {
                    z = false;
                }
                this.forceShowPresenter = z;
            }
            final String fullName = contactData.getFullName();
            if (StringUtils.m26045b((CharSequence) fullName)) {
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ViewUtils.m27329a(UserCorrectedInfoPresenter.this.getRootView()) || ViewUtils.m27329a(UserCorrectedInfoPresenter.this.correctedInfoViewForHelpUsIdentifyNumber)) {
                            if (ViewUtils.m27329a(UserCorrectedInfoPresenter.this.getRootView()) && !((RetractableView) UserCorrectedInfoPresenter.this.getRootView()).isCollapsed()) {
                                UserCorrectedInfoPresenter.this.updateText(Activities.m27697a(2131886921, StringUtils.m26020j(fullName)));
                            }
                            UserCorrectedInfoPresenter.this.collapseCorrectedInfoViewForHelpUsIdentifyNumber();
                        }
                    }
                });
            }
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        this.correctedInfoViewForHelpUsIdentifyNumber = presentersContainer.findViewById(2131362150);
        presentersContainer.addContactChangedListener(this, EnumSet.of(ContactField.fullName, ContactField.newContact, ContactField.deviceId, ContactField.genomeData, ContactField.isIncognito));
        presentersContainer.addCallStateListener(this);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected void onNegativeBtnClicked(final Phone phone) {
        AnalyticsManager.get().m28449a(Constants.USER_CORRECTED_INFO, ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL, ANALYTICS_NEGATIVE_BUTTON_CLICKED);
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.2
            @Override // java.lang.Runnable
            public void run() {
                UserCorrectedInfoPresenter userCorrectedInfoPresenter = UserCorrectedInfoPresenter.this;
                userCorrectedInfoPresenter.showTellUsWhoItIsPopup(userCorrectedInfoPresenter.presentersContainer.getContact(), phone, UserCorrectedInfoPresenter.ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL);
            }
        }, 250L);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void onPositiveBtnClicked(final Phone phone) {
        super.onPositiveBtnClicked(phone);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RemoteAccountHelper remoteAccountHelper;
                        JSONSocialNetworkID mo29108a;
                        ContactData contact = UserCorrectedInfoPresenter.this.presentersContainer.getContact();
                        if (contact != null) {
                            DataSource dataSource = contact.getDataSource(ContactField.fullName);
                            if (dataSource.socialIdField != null && (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode)) != null && (mo29108a = remoteAccountHelper.mo29108a(contact)) != null && StringUtils.m26045b((CharSequence) mo29108a.getId())) {
                                remoteAccountHelper.m29245a(contact, mo29108a.getId(), true);
                            }
                            UserCorrectedInfoUtil.m27343a(contact, contact.getFullName(), phone, 1);
                        }
                    }
                }, 250L);
            }
        }.execute();
        AnalyticsManager.get().m28449a(Constants.USER_CORRECTED_INFO, ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL, ANALYTICS_POSITIVE_BUTTON_CLICKED);
    }
}
