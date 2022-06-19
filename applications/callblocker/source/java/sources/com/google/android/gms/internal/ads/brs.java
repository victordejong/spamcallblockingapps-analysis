package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.AbstractC2303e;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/brs.class */
public final class brs implements AbstractC2303e {

    /* renamed from: a */
    private final apo f12123a;

    /* renamed from: b */
    private final aqh f12124b;

    /* renamed from: c */
    private final auu f12125c;

    /* renamed from: d */
    private final aup f12126d;

    /* renamed from: e */
    private final ajb f12127e;

    /* renamed from: f */
    private AtomicBoolean f12128f = new AtomicBoolean(false);

    public brs(apo apoVar, aqh aqhVar, auu auuVar, aup aupVar, ajb ajbVar) {
        this.f12123a = apoVar;
        this.f12124b = aqhVar;
        this.f12125c = auuVar;
        this.f12126d = aupVar;
        this.f12127e = ajbVar;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2303e
    /* renamed from: a */
    public final void mo11679a() {
        if (this.f12128f.get()) {
            this.f12123a.mo8200e();
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2303e
    /* renamed from: a */
    public final void mo11678a(View view) {
        synchronized (this) {
            if (this.f12128f.compareAndSet(false, true)) {
                this.f12127e.mo11652b();
                this.f12126d.m12420a(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2303e
    /* renamed from: b */
    public final void mo11677b() {
        if (this.f12128f.get()) {
            this.f12124b.m12811a();
            this.f12125c.m12416a();
        }
    }
}
