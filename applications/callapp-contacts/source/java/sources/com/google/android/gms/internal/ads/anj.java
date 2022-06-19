package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anj.class */
public final class anj implements atb, eeg {

    /* renamed from: a */
    private final cov f42476a;

    /* renamed from: b */
    private final asc f42477b;

    /* renamed from: c */
    private final atf f42478c;

    /* renamed from: d */
    private final AtomicBoolean f42479d = new AtomicBoolean();

    /* renamed from: e */
    private final AtomicBoolean f42480e = new AtomicBoolean();

    public anj(cov covVar, asc ascVar, atf atfVar) {
        this.f42476a = covVar;
        this.f42477b = ascVar;
        this.f42478c = atfVar;
    }

    /* renamed from: b */
    private final void m18536b() {
        if (this.f42479d.compareAndSet(false, true)) {
            this.f42477b.m18434a();
        }
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        synchronized (this) {
            if (this.f42476a.f46258e != 1) {
                m18536b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    /* renamed from: a */
    public final void mo13778a(eeh eehVar) {
        if (this.f42476a.f46258e == 1 && eehVar.f48872j) {
            m18536b();
        }
        if (!eehVar.f48872j || !this.f42480e.compareAndSet(false, true)) {
            return;
        }
        this.f42478c.m18419a();
    }
}
