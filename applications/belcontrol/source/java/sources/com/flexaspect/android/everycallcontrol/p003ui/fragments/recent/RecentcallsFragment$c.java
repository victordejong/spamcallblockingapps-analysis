package com.flexaspect.android.everycallcontrol.p003ui.fragments.recent;

import p000.m91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$c.class */
public class RecentcallsFragment$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ m91.EnumC1470c f3137a;

    /* renamed from: b */
    public final /* synthetic */ Object f3138b;

    /* renamed from: c */
    public final /* synthetic */ RecentcallsFragment f3139c;

    public RecentcallsFragment$c(RecentcallsFragment recentcallsFragment, m91.EnumC1470c enumC1470c, Object obj) {
        this.f3139c = recentcallsFragment;
        this.f3137a = enumC1470c;
        this.f3138b = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3139c.i0(this.f3137a, this.f3138b);
    }
}
