package com.callapp.contacts.activity.contact.details.presenter.simple;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.framework.util.CollectionUtils;
import com.pnikosis.materialishprogress.ProgressWheel;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter.class */
abstract class ProgressWheelWrapperPresenter extends BasePresenter implements DestroyListener, ContactDataChangeListener {
    private static final int MAX_PROGRESS_WHEEL_TO_HIDE_DELAY_MILLIS = 9500;
    private static final int START_PREGRESS_WHEEL_DELAY_MILLIS = 500;
    private static final int STOP_PREGRESS_WHEEL_DELAY_MILLIS = 1500;
    private ProgressWheel progressWheel;
    private Runnable showProgressWheelRunnable = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter.1
        @Override // java.lang.Runnable
        public void run() {
            if (ProgressWheelWrapperPresenter.this.progressWheel != null) {
                ProgressWheelWrapperPresenter.this.progressWheel.setVisibility(0);
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ProgressWheelWrapperPresenter.this.progressWheel != null && ProgressWheelWrapperPresenter.this.progressWheel.getVisibility() != 8) {
                            ProgressWheelWrapperPresenter.this.hideProgressWheel(0);
                        }
                    }
                }, 9500L);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProgressWheel(int i) {
        if (this.showProgressWheelRunnable != null) {
            CallAppApplication.get().c(this.showProgressWheelRunnable);
        }
        if (this.progressWheel == null) {
            return;
        }
        if (i <= 0) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter.2
                @Override // java.lang.Runnable
                public void run() {
                    ProgressWheelWrapperPresenter.this.progressWheel.setVisibility(8);
                }
            });
        } else {
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter.3
                @Override // java.lang.Runnable
                public void run() {
                    if (ProgressWheelWrapperPresenter.this.progressWheel != null) {
                        ProgressWheelWrapperPresenter.this.progressWheel.setVisibility(8);
                    }
                }
            }, i);
        }
    }

    protected abstract ProgressWheel getProgressWheel();

    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.progressWheel != null && CollectionUtils.a(set, ContactField.genomeData, ContactField.photoUrl)) {
            hideProgressWheel(1500);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        presentersContainer.addDestroyListener(this);
        ProgressWheel progressWheel = getProgressWheel();
        this.progressWheel = progressWheel;
        if (progressWheel != null) {
            progressWheel.setVisibility(0);
            CallAppApplication.get().a(this.showProgressWheelRunnable, 500L);
        }
    }

    public void onDestroy() {
        CallAppApplication.get().c(this.showProgressWheelRunnable);
        this.showProgressWheelRunnable = null;
        this.progressWheel = null;
    }
}
