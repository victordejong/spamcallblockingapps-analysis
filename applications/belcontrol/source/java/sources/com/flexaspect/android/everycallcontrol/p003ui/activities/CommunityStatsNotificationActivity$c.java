package com.flexaspect.android.everycallcontrol.p003ui.activities;

import java.io.Serializable;
import java.util.EnumSet;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CommunityStatsNotificationActivity$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$c.class */
public enum CommunityStatsNotificationActivity$c implements Serializable {
    TRIAL_PURCHASE(true);
    

    /* renamed from: a */
    public boolean f2758a;

    /* renamed from: b */
    public EnumSet<CommunityStatsNotificationActivity$c> f2759b = null;

    CommunityStatsNotificationActivity$c(boolean z) {
        this.f2758a = z;
    }

    /* renamed from: a */
    public void m4836a(CommunityStatsNotificationActivity communityStatsNotificationActivity) {
        if (this.f2759b != null) {
            CommunityStatsNotificationActivity.p(communityStatsNotificationActivity).removeAll(this.f2759b);
        }
        CommunityStatsNotificationActivity.p(communityStatsNotificationActivity).add(this);
        j91.m1499q(this, "Current Actions: " + CommunityStatsNotificationActivity.p(communityStatsNotificationActivity));
        if (this.f2758a) {
            CommunityStatsNotificationActivity.q(communityStatsNotificationActivity);
        }
    }
}
