package com.callapp.contacts.activity.contact.details.presenter;

import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/BasePresenter.class */
public abstract class BasePresenter {
    public PresentersContainer presentersContainer;

    public PresentersContainer getPresentersContainer() {
        return this.presentersContainer;
    }

    protected String getTrackerCategory() {
        AnalyticsManager.get();
        return AnalyticsManager.a(this.presentersContainer);
    }

    public abstract void onCreate(PresentersContainer presentersContainer);

    public void setPresentersContainer(PresentersContainer presentersContainer) {
        this.presentersContainer = presentersContainer;
    }

    public boolean shouldAdd() {
        return true;
    }
}
