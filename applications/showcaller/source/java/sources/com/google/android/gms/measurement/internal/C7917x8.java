package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C7626y9;
/* renamed from: com.google.android.gms.measurement.internal.x8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/x8.class */
public final class C7917x8 {

    /* renamed from: a */
    protected long f35798a;

    /* renamed from: b */
    protected long f35799b;

    /* renamed from: c */
    private final AbstractC7776l f35800c;

    /* renamed from: d */
    final /* synthetic */ C7939z8 f35801d;

    public C7917x8(C7939z8 c7939z8) {
        this.f35801d = c7939z8;
        this.f35800c = new C7906w8(this, c7939z8.f35460a);
        long mo16806b = c7939z8.f35460a.mo6007x().mo16806b();
        this.f35798a = mo16806b;
        this.f35799b = mo16806b;
    }

    /* renamed from: a */
    public final void m5891a(long j) {
        this.f35801d.mo6113f();
        this.f35800c.m6253d();
        this.f35798a = j;
        this.f35799b = j;
    }

    /* renamed from: b */
    public final void m5890b(long j) {
        this.f35800c.m6253d();
    }

    /* renamed from: c */
    public final void m5889c() {
        this.f35800c.m6253d();
        this.f35798a = 0L;
        this.f35799b = 0L;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: d */
    public final boolean m5888d(boolean z, boolean z2, long j) {
        this.f35801d.mo6113f();
        this.f35801d.m6572h();
        C7626y9.m6717a();
        if (!this.f35801d.f35460a.m6006y().m6471u(null, C7672c3.f35093p0)) {
            this.f35801d.f35460a.m6005z().f35206p.m6587b(this.f35801d.f35460a.mo6007x().mo16807a());
        } else if (this.f35801d.f35460a.m6022i()) {
            this.f35801d.f35460a.m6005z().f35206p.m6587b(this.f35801d.f35460a.mo6007x().mo16807a());
        }
        char c = j - this.f35798a;
        if (!z && c < 1000) {
            this.f35801d.f35460a.mo6047C().m6187u().m6215b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.f35799b;
            this.f35799b = j;
        }
        this.f35801d.f35460a.mo6047C().m6187u().m6215b("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        C7772k7.m6295v(this.f35801d.f35460a.m6033Q().m6300q(!this.f35801d.f35460a.m6006y().m6492B()), bundle, true);
        C7692e m6006y = this.f35801d.f35460a.m6006y();
        C7648a3<Boolean> c7648a3 = C7672c3.f35057V;
        if (!m6006y.m6471u(null, c7648a3) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!this.f35801d.f35460a.m6006y().m6471u(null, c7648a3) || !z2) {
            this.f35801d.f35460a.m6044F().m5917X("auto", "_e", bundle);
        }
        this.f35798a = j;
        this.f35800c.m6253d();
        this.f35800c.m6255b(3600000L);
        return true;
    }
}
