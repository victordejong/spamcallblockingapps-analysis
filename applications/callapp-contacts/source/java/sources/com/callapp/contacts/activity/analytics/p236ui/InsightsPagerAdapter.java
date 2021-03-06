package com.callapp.contacts.activity.analytics.p236ui;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeablePagerAdapter;
import com.callapp.contacts.util.Activities;
/* renamed from: com.callapp.contacts.activity.analytics.ui.InsightsPagerAdapter */
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/InsightsPagerAdapter.class */
public class InsightsPagerAdapter extends BaseSwipeablePagerAdapter {
    public InsightsPagerAdapter(FragmentManager fragmentManager, boolean z, String str) {
        super(fragmentManager);
        Fragment newInstance = StatisticsFragment.newInstance(z, str);
        Fragment newInstance2 = InsightsFragment.newInstance(z, str);
        m31467a(newInstance, Activities.getString(2131887749));
        m31467a(newInstance2, Activities.getString(2131887056));
    }
}
