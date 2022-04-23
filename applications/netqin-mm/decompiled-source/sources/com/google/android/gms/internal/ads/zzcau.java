package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3992rg;
import p131c.p161d.p170b.p224d.p252g.p253a.C4029sg;
import p131c.p161d.p170b.p224d.p252g.p253a.C4066tg;
import p131c.p161d.p170b.p224d.p252g.p253a.C4103ug;
import p131c.p161d.p170b.p224d.p252g.p253a.C4140vg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcau.class */
public final class zzcau extends zzbyr<VideoController.VideoLifecycleCallbacks> {

    /* renamed from: b */
    public boolean f25660b;

    public zzcau(Set<zzcab<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    /* renamed from: Q */
    public final void m14856Q() {
        synchronized (this) {
            m14941a(C4029sg.f15304a);
            this.f25660b = true;
        }
    }

    /* renamed from: q */
    public final void m14855q() {
        m14941a(C4066tg.f15403a);
    }

    /* renamed from: s */
    public final void m14854s() {
        m14941a(C3992rg.f15009a);
    }

    /* renamed from: u */
    public final void m14853u() {
        synchronized (this) {
            if (!this.f25660b) {
                m14941a(C4140vg.f15860a);
                this.f25660b = true;
            }
            m14941a(C4103ug.f15640a);
        }
    }
}
