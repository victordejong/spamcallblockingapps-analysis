package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b.class */
public class RecentcallsFragment$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecentcallsFragment f3135a;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$b$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$b$a.class */
    public class RunnableC0400a implements Runnable {
        public RunnableC0400a() {
            RecentcallsFragment$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecentcallsFragment recentcallsFragment = RecentcallsFragment$b.this.f3135a;
            recentcallsFragment.w = true;
            recentcallsFragment.q0();
        }
    }

    public RecentcallsFragment$b(RecentcallsFragment recentcallsFragment) {
        this.f3135a = recentcallsFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecentcallsFragment.G(this.f3135a).runOnUiThread(new RunnableC0400a());
    }
}
