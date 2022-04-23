package com.callapp.contacts.activity.contact.details.presenter;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.core.content.b;
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
            if (contactData.isContactInDevice()) {
                collapse(true);
            }
        } else if (set.contains(ContactField.isIncognito) && this.presentersContainer.a(contactData)) {
            collapse(true);
        }
    }

    private boolean expandUserCorrectedInfoPresenterIfNeeded(final Phone phone, ContactData contactData) {
        if (!(contactData != null && !contactData.isContactInDevice()) || UserCorrectedInfoUtil.a(contactData) || !contactData.hasPhone(phone) || PhoneStateManager.get().isAnyCallActive() || UserCorrectedDataManager.a(contactData.getDeviceId(), phone) || this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            return false;
        }
        String fullName = contactData.getFullName();
        if (StringUtils.b((CharSequence) fullName)) {
            final String a2 = Activities.a(2131886921, StringUtils.j(fullName));
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.4
                @Override // java.lang.Runnable
                public void run() {
                    UserCorrectedInfoPresenter.this.showCorrectedInfo(a2, phone, UserCorrectedInfoPresenter.ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL);
                }
            });
            return true;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.5
            @Override // java.lang.Runnable
            public void run() {
                UserCorrectedInfoPresenter.this.showHelpUsIdentifyNumber(phone);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHelpUsIdentifyNumber(final Phone phone) {
        if (!ViewUtils.a(this.correctedInfoViewForHelpUsIdentifyNumber)) {
            View inflate = ((ViewStub) this.correctedInfoViewForHelpUsIdentifyNumber).inflate();
            this.correctedInfoViewForHelpUsIdentifyNumber = inflate;
            ((RetractableView) inflate).setExpandMaxHeight((int) CallAppApplication.get().getResources().getDimension(2131166126));
            ((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).c();
            ((TextView) this.correctedInfoViewForHelpUsIdentifyNumber.findViewById(2131362149)).setText(Activities.getString(2131887889));
            this.correctedInfoViewForHelpUsIdentifyNumber.findViewById(2131362959).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, UserCorrectedInfoPresenter.ANALYTICS_HELP_US_IDENTIFY_NUMBER_BUTTON);
                    UserCorrectedInfoPresenter.this.showTellUsWhoItIsPopup(UserCorrectedInfoPresenter.this.presentersContainer.getContact(), phone, UserCorrectedInfoPresenter.ANALYTICS_HELP_US_IDENTIFY_NUMBER_BUTTON);
                }
            });
        }
        ((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).a();
        AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, ANALYTICS_HELP_US_IDENTIFY_PRESENTER_SHOWN_LABEL);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void collapse(final boolean z) {
        super.collapse(z);
        if (ViewUtils.a(this.correctedInfoViewForHelpUsIdentifyNumber)) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.7
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        ((RetractableView) UserCorrectedInfoPresenter.this.correctedInfoViewForHelpUsIdentifyNumber).b();
                    } else {
                        ((RetractableView) UserCorrectedInfoPresenter.this.correctedInfoViewForHelpUsIdentifyNumber).c();
                    }
                }
            });
        }
    }

    public void collapseCorrectedInfoViewForHelpUsIdentifyNumber() {
        if (ViewUtils.a(this.correctedInfoViewForHelpUsIdentifyNumber)) {
            ((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).b();
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
        return b.c(context, 2131099786);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    protected int getLayoutId() {
        return 2131362151;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public boolean isExpanded() {
        if (!super.isExpanded()) {
            return ViewUtils.a(this.correctedInfoViewForHelpUsIdentifyNumber) && !((RetractableView) this.correctedInfoViewForHelpUsIdentifyNumber).isCollapsed();
        }
        return true;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        ContactData contact = this.presentersContainer.getContact();
        if (!callData.getState().isPostCall() || this.presentersContainer.a(contact) || PhoneManager.get().a(callData.getNumber())) {
            if (!callData.getState().isPreCall()) {
                collapse(false);
            }
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
        if (!contactData.isContactInDevice() && !contactData.isUnsearchableNumber() && !this.presentersContainer.a(contactData)) {
            boolean contains = set.contains(ContactField.genomeData);
            boolean z = true;
            if (contains) {
                this.genomeLoadingDone = true;
            }
            if (contains || (set.contains(ContactField.fullName) && this.genomeLoadingDone)) {
                Phone phone = this.lastPhoneCall;
                if (phone == null) {
                    phone = contactData.getPhone();
                }
                if (!UserCorrectedDataManager.a(contactData.getDeviceId(), phone)) {
                    synchronized (this.expandSyncObject) {
                        if (this.forceShowPresenter) {
                            if (expandUserCorrectedInfoPresenterIfNeeded(contactData.getPhone(), contactData)) {
                                z = false;
                            }
                            this.forceShowPresenter = z;
                        }
                        final String fullName = contactData.getFullName();
                        if (StringUtils.b((CharSequence) fullName)) {
                            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (ViewUtils.a(UserCorrectedInfoPresenter.this.getRootView()) || ViewUtils.a(UserCorrectedInfoPresenter.this.correctedInfoViewForHelpUsIdentifyNumber)) {
                                        if (ViewUtils.a(UserCorrectedInfoPresenter.this.getRootView()) && !((RetractableView) UserCorrectedInfoPresenter.this.getRootView()).isCollapsed()) {
                                            UserCorrectedInfoPresenter.this.updateText(Activities.a(2131886921, StringUtils.j(fullName)));
                                        }
                                        UserCorrectedInfoPresenter.this.collapseCorrectedInfoViewForHelpUsIdentifyNumber();
                                    }
                                }
                            });
                        }
                    }
                    return;
                }
                collapse(true);
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
        AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL, ANALYTICS_NEGATIVE_BUTTON_CLICKED);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.2
            @Override // java.lang.Runnable
            public void run() {
                UserCorrectedInfoPresenter userCorrectedInfoPresenter = UserCorrectedInfoPresenter.this;
                userCorrectedInfoPresenter.showTellUsWhoItIsPopup(userCorrectedInfoPresenter.presentersContainer.getContact(), phone, UserCorrectedInfoPresenter.ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL);
            }
        }, 250L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.presenter.BaseUserCorrectedInfoPresenter
    public void onPositiveBtnClicked(final Phone phone) {
        super.onPositiveBtnClicked(phone);
        new Task() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RemoteAccountHelper remoteAccountHelper;
                        JSONSocialNetworkID a2;
                        ContactData contact = UserCorrectedInfoPresenter.this.presentersContainer.getContact();
                        if (contact != null) {
                            DataSource dataSource = contact.getDataSource(ContactField.fullName);
                            if (!(dataSource.socialIdField == null || (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode)) == null || (a2 = remoteAccountHelper.a(contact)) == null || !StringUtils.b((CharSequence) a2.getId()))) {
                                remoteAccountHelper.a(contact, a2.getId(), true);
                            }
                            UserCorrectedInfoUtil.a(contact, contact.getFullName(), phone, 1);
                        }
                    }
                }, 250L);
            }
        }.execute();
        AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, ANALYTICS_IS_IT_X_PRESENTER_SHOWN_LABEL, ANALYTICS_POSITIVE_BUTTON_CLICKED);
    }
}
