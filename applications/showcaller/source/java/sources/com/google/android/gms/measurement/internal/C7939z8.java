package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.HandlerC7313ba;
/* renamed from: com.google.android.gms.measurement.internal.z8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/z8.class */
public final class C7939z8 extends AbstractC7673c4 {

    /* renamed from: c */
    private Handler f35854c;

    /* renamed from: d */
    protected final C7928y8 f35855d = new C7928y8(this);

    /* renamed from: e */
    protected final C7917x8 f35856e = new C7917x8(this);

    /* renamed from: f */
    protected final C7895v8 f35857f = new C7895v8(this);

    public C7939z8(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: m */
    public static /* synthetic */ void m5875m(C7939z8 c7939z8, long j) {
        c7939z8.mo6113f();
        c7939z8.m5871q();
        c7939z8.f35460a.mo6047C().m6187u().m6215b("Activity resumed, time", Long.valueOf(j));
        C7692e m6006y = c7939z8.f35460a.m6006y();
        C7648a3<Boolean> c7648a3 = C7672c3.f35101t0;
        if (m6006y.m6471u(null, c7648a3)) {
            if (c7939z8.f35460a.m6006y().m6492B() || c7939z8.f35460a.m6005z().f35208r.m5887a()) {
                c7939z8.f35856e.m5891a(j);
            }
            c7939z8.f35857f.m5897a();
        } else {
            c7939z8.f35857f.m5897a();
            if (c7939z8.f35460a.m6006y().m6492B()) {
                c7939z8.f35856e.m5891a(j);
            }
        }
        C7928y8 c7928y8 = c7939z8.f35855d;
        c7928y8.f35831a.mo6113f();
        if (!c7928y8.f35831a.f35460a.m6022i()) {
            return;
        }
        if (!c7928y8.f35831a.f35460a.m6006y().m6471u(null, c7648a3)) {
            c7928y8.f35831a.f35460a.m6005z().f35208r.m5886b(false);
        }
        c7928y8.m5882b(c7928y8.f35831a.f35460a.mo6007x().mo16807a(), false);
    }

    /* renamed from: n */
    public static /* synthetic */ void m5874n(C7939z8 c7939z8, long j) {
        c7939z8.mo6113f();
        c7939z8.m5871q();
        c7939z8.f35460a.mo6047C().m6187u().m6215b("Activity paused, time", Long.valueOf(j));
        c7939z8.f35857f.m5896b(j);
        if (c7939z8.f35460a.m6006y().m6492B()) {
            c7939z8.f35856e.m5890b(j);
        }
        C7928y8 c7928y8 = c7939z8.f35855d;
        if (!c7928y8.f35831a.f35460a.m6006y().m6471u(null, C7672c3.f35101t0)) {
            c7928y8.f35831a.f35460a.m6005z().f35208r.m5886b(true);
        }
    }

    /* renamed from: q */
    public final void m5871q() {
        mo6113f();
        if (this.f35854c == null) {
            this.f35854c = new HandlerC7313ba(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7673c4
    /* renamed from: k */
    protected final boolean mo5876k() {
        return false;
    }
}
