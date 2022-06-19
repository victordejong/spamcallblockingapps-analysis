package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CommunityStatsNotificationActivity$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d.class */
public class CommunityStatsNotificationActivity$d {

    /* renamed from: a */
    public static LinearLayout f2760a;

    /* renamed from: b */
    public static LinearLayout f2761b;

    /* renamed from: c */
    public static TextView f2762c;

    /* renamed from: d */
    public static TextView f2763d;

    /* renamed from: e */
    public static TextView f2764e;

    /* renamed from: f */
    public static TextView f2765f;

    /* renamed from: g */
    public static TextView f2766g;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CommunityStatsNotificationActivity$d$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$d$a.class */
    public static final class View$OnClickListenerC0388a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CommunityStatsNotificationActivity f2767a;

        public View$OnClickListenerC0388a(CommunityStatsNotificationActivity communityStatsNotificationActivity) {
            this.f2767a = communityStatsNotificationActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommunityStatsNotificationActivity.q(this.f2767a);
        }
    }

    /* renamed from: a */
    public static void m4835a(CommunityStatsNotificationActivity communityStatsNotificationActivity) {
        f2760a = (LinearLayout) communityStatsNotificationActivity.findViewById(2131363250);
        f2761b = (LinearLayout) communityStatsNotificationActivity.findViewById(2131362005);
        f2762c = (TextView) communityStatsNotificationActivity.findViewById(2131362137);
        f2763d = (TextView) communityStatsNotificationActivity.findViewById(2131361960);
        f2764e = (TextView) communityStatsNotificationActivity.findViewById(2131361959);
        f2765f = (TextView) communityStatsNotificationActivity.findViewById(2131363111);
        f2766g = (TextView) communityStatsNotificationActivity.findViewById(2131362805);
        f2761b.setTag(CommunityStatsNotificationActivity$c.TRIAL_PURCHASE);
        f2761b.setOnClickListener(communityStatsNotificationActivity);
        communityStatsNotificationActivity.findViewById(2131362267).setOnClickListener(new View$OnClickListenerC0388a(communityStatsNotificationActivity));
    }
}
