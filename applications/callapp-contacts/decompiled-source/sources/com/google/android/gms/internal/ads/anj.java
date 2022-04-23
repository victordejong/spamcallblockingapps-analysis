package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/anj.class */
public final class anj implements atb, eeg {

    /* renamed from: a  reason: collision with root package name */
    private final cov f23627a;

    /* renamed from: b  reason: collision with root package name */
    private final asc f23628b;

    /* renamed from: c  reason: collision with root package name */
    private final atf f23629c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f23630d = new AtomicBoolean();
    private final AtomicBoolean e = new AtomicBoolean();

    public anj(cov covVar, asc ascVar, atf atfVar) {
        this.f23627a = covVar;
        this.f23628b = ascVar;
        this.f23629c = atfVar;
    }

    private final void b() {
        if (this.f23630d.compareAndSet(false, true)) {
            this.f23628b.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        synchronized (this) {
            if (this.f23627a.e != 1) {
                b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        if (this.f23627a.e == 1 && eehVar.j) {
            b();
        }
        if (eehVar.j && this.e.compareAndSet(false, true)) {
            this.f23629c.a();
        }
    }
}
