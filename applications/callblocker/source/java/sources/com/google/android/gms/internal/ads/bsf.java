package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.AbstractC2303e;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsf.class */
public final class bsf implements AbstractC2303e {
    @GuardedBy("this")

    /* renamed from: a */
    private AbstractC2303e f12154a;

    @Override // com.google.android.gms.ads.internal.AbstractC2303e
    /* renamed from: a */
    public final void mo11679a() {
        synchronized (this) {
            if (this.f12154a != null) {
                this.f12154a.mo11679a();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2303e
    /* renamed from: a */
    public final void mo11678a(View view) {
        synchronized (this) {
            if (this.f12154a != null) {
                this.f12154a.mo11678a(view);
            }
        }
    }

    /* renamed from: a */
    public final void m11682a(AbstractC2303e abstractC2303e) {
        synchronized (this) {
            this.f12154a = abstractC2303e;
        }
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2303e
    /* renamed from: b */
    public final void mo11677b() {
        synchronized (this) {
            if (this.f12154a != null) {
                this.f12154a.mo11677b();
            }
        }
    }
}
