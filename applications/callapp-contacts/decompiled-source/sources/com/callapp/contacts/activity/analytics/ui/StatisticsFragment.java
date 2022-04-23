package com.callapp.contacts.activity.analytics.ui;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/StatisticsFragment.class */
public class StatisticsFragment extends BaseInsightsFragment {
    public static Fragment newInstance(boolean z, String str) {
        StatisticsFragment statisticsFragment = new StatisticsFragment();
        statisticsFragment.setEnterViaBottomBar(z);
        statisticsFragment.setSource(str);
        return statisticsFragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment
    public void addCardShowingAdEvent() {
        super.addCardShowingAdEvent();
    }

    @Override // com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment
    protected PresentersContainer.MODE getPresenterContainerMode() {
        return PresentersContainer.MODE.STATISTICS;
    }

    @Override // com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.enterFromBottomBar) {
            AnalyticsManager.get().a(Constants.INSIGHTS, "ViewInsightsStatsTab", (String) null, 0.0d, Payload.SOURCE, this.sourceForEvent);
        }
    }
}
