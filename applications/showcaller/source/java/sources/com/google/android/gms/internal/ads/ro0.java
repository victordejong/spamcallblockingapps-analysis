package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.C6228f;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ro0.class */
public final class ro0 extends AbstractBinderC6603iu {

    /* renamed from: d */
    private final kk0 f29059d;

    /* renamed from: f */
    private final boolean f29061f;

    /* renamed from: g */
    private final boolean f29062g;

    /* renamed from: h */
    private int f29063h;

    /* renamed from: i */
    private AbstractC6751mu f29064i;

    /* renamed from: j */
    private boolean f29065j;

    /* renamed from: l */
    private float f29067l;

    /* renamed from: m */
    private float f29068m;

    /* renamed from: n */
    private float f29069n;

    /* renamed from: o */
    private boolean f29070o;

    /* renamed from: p */
    private boolean f29071p;

    /* renamed from: q */
    private n00 f29072q;

    /* renamed from: e */
    private final Object f29060e = new Object();

    /* renamed from: k */
    private boolean f29066k = true;

    public ro0(kk0 kk0Var, float f, boolean z, boolean z2) {
        this.f29059d = kk0Var;
        this.f29067l = f;
        this.f29061f = z;
        this.f29062g = z2;
    }

    /* renamed from: L6 */
    private final void m11357L6(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        qi0.f28499e.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.po0

            /* renamed from: d */
            private final ro0 f28079d;

            /* renamed from: e */
            private final Map f28080e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28079d = this;
                this.f28080e = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28079d.m11359J6(this.f28080e);
            }
        });
    }

    /* renamed from: M6 */
    private final void m11356M6(int i, int i2, boolean z, boolean z2) {
        qi0.f28499e.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.qo0

            /* renamed from: d */
            private final ro0 f28580d;

            /* renamed from: e */
            private final int f28581e;

            /* renamed from: f */
            private final int f28582f;

            /* renamed from: g */
            private final boolean f28583g;

            /* renamed from: h */
            private final boolean f28584h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28580d = this;
                this.f28581e = i;
                this.f28582f = i2;
                this.f28583g = z;
                this.f28584h = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28580d.m11360I6(this.f28581e, this.f28582f, this.f28583g, this.f28584h);
            }
        });
    }

    /* renamed from: F6 */
    public final void m11363F6(zzbis zzbisVar) {
        boolean z = zzbisVar.f33712d;
        boolean z2 = zzbisVar.f33713e;
        boolean z3 = zzbisVar.f33714f;
        synchronized (this.f29060e) {
            this.f29070o = z2;
            this.f29071p = z3;
        }
        m11357L6("initialState", C6228f.m16814d("muteStart", true != z ? "0" : "1", "customControlsRequested", true != z2 ? "0" : "1", "clickToExpandRequested", true != z3 ? "0" : "1"));
    }

    /* renamed from: G6 */
    public final void m11362G6(float f) {
        synchronized (this.f29060e) {
            this.f29068m = f;
        }
    }

    /* renamed from: H6 */
    public final void m11361H6(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.f29060e) {
            z2 = true;
            if (f2 == this.f29067l) {
                z2 = f3 != this.f29069n;
            }
            this.f29067l = f2;
            this.f29068m = f;
            z3 = this.f29066k;
            this.f29066k = z;
            i2 = this.f29063h;
            this.f29063h = i;
            float f4 = this.f29069n;
            this.f29069n = f3;
            if (Math.abs(f3 - f4) > 1.0E-4f) {
                this.f29059d.mo7960D().invalidate();
            }
        }
        if (z2) {
            try {
                n00 n00Var = this.f29072q;
                if (n00Var != null) {
                    n00Var.m13024a();
                }
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
        m11356M6(i2, i, z3, z);
    }

    /* renamed from: I6 */
    public final /* synthetic */ void m11360I6(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        int i3;
        boolean z4;
        AbstractC6751mu abstractC6751mu;
        AbstractC6751mu abstractC6751mu2;
        AbstractC6751mu abstractC6751mu3;
        synchronized (this.f29060e) {
            boolean z5 = this.f29065j;
            boolean z6 = false;
            if (z5 || i2 != 1) {
                i3 = i2;
                z3 = false;
            } else {
                i3 = 1;
                z3 = true;
            }
            if (i == i2 || i3 != 1) {
                z4 = false;
            } else {
                i3 = 1;
                z4 = true;
            }
            boolean z7 = i != i2 && i3 == 2;
            boolean z8 = i != i2 && i3 == 3;
            if (z5 || z3) {
                z6 = true;
            }
            this.f29065j = z6;
            if (z3) {
                try {
                    AbstractC6751mu abstractC6751mu4 = this.f29064i;
                    if (abstractC6751mu4 != null) {
                        abstractC6751mu4.mo11797a();
                    }
                } catch (RemoteException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
            if (z4 && (abstractC6751mu3 = this.f29064i) != null) {
                abstractC6751mu3.mo11796d();
            }
            if (z7 && (abstractC6751mu2 = this.f29064i) != null) {
                abstractC6751mu2.zzg();
            }
            if (z8) {
                AbstractC6751mu abstractC6751mu5 = this.f29064i;
                if (abstractC6751mu5 != null) {
                    abstractC6751mu5.mo11795f();
                }
                this.f29059d.mo7885u();
            }
            if (z != z2 && (abstractC6751mu = this.f29064i) != null) {
                abstractC6751mu.mo11794j4(z2);
            }
        }
    }

    /* renamed from: J6 */
    public final /* synthetic */ void m11359J6(Map map) {
        this.f29059d.mo7959D0("pubVideoCmd", map);
    }

    /* renamed from: K6 */
    public final void m11358K6(n00 n00Var) {
        synchronized (this.f29060e) {
            this.f29072q = n00Var;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: a */
    public final void mo11355a() {
        m11357L6("play", null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: b0 */
    public final void mo11354b0(boolean z) {
        m11357L6(true != z ? "unmute" : "mute", null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: d */
    public final void mo11353d() {
        m11357L6("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: f */
    public final boolean mo11352f() {
        boolean z;
        synchronized (this.f29060e) {
            z = this.f29066k;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: g */
    public final float mo11351g() {
        float f;
        synchronized (this.f29060e) {
            f = this.f29067l;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: g3 */
    public final void mo11350g3(AbstractC6751mu abstractC6751mu) {
        synchronized (this.f29060e) {
            this.f29064i = abstractC6751mu;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: h */
    public final float mo11349h() {
        float f;
        synchronized (this.f29060e) {
            f = this.f29068m;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: j */
    public final float mo11348j() {
        float f;
        synchronized (this.f29060e) {
            f = this.f29069n;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: k */
    public final void mo11347k() {
        m11357L6("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: l */
    public final boolean mo11346l() {
        boolean z;
        boolean mo11345m = mo11345m();
        synchronized (this.f29060e) {
            z = false;
            if (!mo11345m) {
                z = false;
                if (this.f29071p) {
                    z = false;
                    if (this.f29062g) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: m */
    public final boolean mo11345m() {
        boolean z;
        synchronized (this.f29060e) {
            z = false;
            if (this.f29061f) {
                z = false;
                if (this.f29070o) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: n */
    public final AbstractC6751mu mo11344n() {
        AbstractC6751mu abstractC6751mu;
        synchronized (this.f29060e) {
            abstractC6751mu = this.f29064i;
        }
        return abstractC6751mu;
    }

    /* renamed from: s */
    public final void m11343s() {
        boolean z;
        int i;
        synchronized (this.f29060e) {
            z = this.f29066k;
            i = this.f29063h;
            this.f29063h = 3;
        }
        m11356M6(i, 3, z, z);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    public final int zzi() {
        int i;
        synchronized (this.f29060e) {
            i = this.f29063h;
        }
        return i;
    }
}
