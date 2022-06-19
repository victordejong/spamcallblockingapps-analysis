package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import p000.k61;
import p000.q61;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CommunityStatsNotificationActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a.class */
public class CommunityStatsNotificationActivity$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CommunityStatsNotificationActivity f2750a;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CommunityStatsNotificationActivity$a$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$a.class */
    public class RunnableC0386a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ q61 f2751a;

        public RunnableC0386a(q61 q61Var) {
            CommunityStatsNotificationActivity$a.this = r4;
            this.f2751a = q61Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            q61.C1613b c1613b = this.f2751a.f7704a;
            CommunityStatsNotificationActivity$d.f2760a.setVisibility(0);
            CommunityStatsNotificationActivity$d.f2762c.setText(ka1.m1409o(Long.parseLong(c1613b.f7705a)));
            CommunityStatsNotificationActivity$d.f2763d.setText(ka1.m1409o(Long.parseLong(c1613b.f7706b)));
            CommunityStatsNotificationActivity$d.f2764e.setText(CommunityStatsNotificationActivity$a.this.f2750a.getResources().getString(2131822245, !TextUtils.isEmpty(c1613b.f7709f) ? c1613b.f7709f : CommunityStatsNotificationActivity$a.this.f2750a.getResources().getString(2131821057)));
            CommunityStatsNotificationActivity$d.f2765f.setText(ka1.m1409o(c1613b.f7707c.longValue()));
            CommunityStatsNotificationActivity$d.f2766g.setText(ka1.m1409o(Long.parseLong(c1613b.f7708d)));
        }
    }

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CommunityStatsNotificationActivity$a$b */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CommunityStatsNotificationActivity$a$b.class */
    public class RunnableC0387b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ k61.C1456a f2753a;

        public RunnableC0387b(k61.C1456a c1456a) {
            CommunityStatsNotificationActivity$a.this = r4;
            this.f2753a = c1456a;
        }

        @Override // java.lang.Runnable
        public void run() {
            j91.m1505k(this, this.f2753a.toString());
            CommunityStatsNotificationActivity$a.this.f2750a.finish();
        }
    }

    public CommunityStatsNotificationActivity$a(CommunityStatsNotificationActivity communityStatsNotificationActivity) {
        this.f2750a = communityStatsNotificationActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable;
        try {
            runnable = new RunnableC0386a(k61.m1452j());
        } catch (k61.C1456a e) {
            runnable = new RunnableC0387b(e);
        }
        new Handler(Looper.getMainLooper()).post(runnable);
    }
}
