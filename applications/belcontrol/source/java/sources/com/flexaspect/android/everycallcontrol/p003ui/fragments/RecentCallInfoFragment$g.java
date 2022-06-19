package com.flexaspect.android.everycallcontrol.p003ui.fragments;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentCallInfoFragment$g */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g.class */
public class RecentCallInfoFragment$g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecentCallInfoFragment f3104a;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentCallInfoFragment$g$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$g$a.class */
    public class RunnableC0398a implements Runnable {
        public RunnableC0398a() {
            RecentCallInfoFragment$g.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecentCallInfoFragment.z(RecentCallInfoFragment$g.this.f3104a);
        }
    }

    public RecentCallInfoFragment$g(RecentCallInfoFragment recentCallInfoFragment) {
        this.f3104a = recentCallInfoFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecentCallInfoFragment.A(this.f3104a).post(new RunnableC0398a());
    }
}
