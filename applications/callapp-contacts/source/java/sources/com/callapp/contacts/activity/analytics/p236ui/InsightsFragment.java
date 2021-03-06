package com.callapp.contacts.activity.analytics.p236ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
/* renamed from: com.callapp.contacts.activity.analytics.ui.InsightsFragment */
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/InsightsFragment.class */
public class InsightsFragment extends BaseInsightsFragment {
    private View rootView;

    public static Fragment newInstance(boolean z, String str) {
        InsightsFragment insightsFragment = new InsightsFragment();
        insightsFragment.setEnterViaBottomBar(z);
        insightsFragment.setSource(str);
        return insightsFragment;
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment
    public void addCardShowingAdEvent() {
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.INSIGHTS;
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().mo28444a(Constants.INSIGHTS, "ViewInsightsTab", (String) null, 0.0d, Payload.SOURCE, this.sourceForEvent);
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment, com.callapp.contacts.activity.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.rootView = onCreateView;
        return onCreateView;
    }
}
