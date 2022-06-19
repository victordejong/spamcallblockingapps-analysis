package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.C2709f;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adn.class */
public final class adn extends eaz {

    /* renamed from: a */
    private final aad f7952a;

    /* renamed from: c */
    private final boolean f7954c;

    /* renamed from: d */
    private final boolean f7955d;
    @GuardedBy("lock")

    /* renamed from: e */
    private int f7956e;
    @GuardedBy("lock")

    /* renamed from: f */
    private ebb f7957f;
    @GuardedBy("lock")

    /* renamed from: g */
    private boolean f7958g;
    @GuardedBy("lock")

    /* renamed from: i */
    private float f7960i;
    @GuardedBy("lock")

    /* renamed from: j */
    private float f7961j;
    @GuardedBy("lock")

    /* renamed from: k */
    private float f7962k;
    @GuardedBy("lock")

    /* renamed from: l */
    private boolean f7963l;
    @GuardedBy("lock")

    /* renamed from: m */
    private boolean f7964m;
    @GuardedBy("lock")

    /* renamed from: n */
    private AbstractC2997dh f7965n;

    /* renamed from: b */
    private final Object f7953b = new Object();
    @GuardedBy("lock")

    /* renamed from: h */
    private boolean f7959h = true;

    public adn(aad aadVar, float f, boolean z, boolean z2) {
        this.f7952a = aadVar;
        this.f7960i = f;
        this.f7954c = z;
        this.f7955d = z2;
    }

    /* renamed from: a */
    private final void m13566a(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        C3650yg.f17646e.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.adm

            /* renamed from: a */
            private final adn f7950a;

            /* renamed from: b */
            private final Map f7951b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7950a = this;
                this.f7951b = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7950a.m13565a(this.f7951b);
            }
        });
    }

    /* renamed from: b */
    private final void m13564b(int i, int i2, boolean z, boolean z2) {
        C3650yg.f17646e.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.adp

            /* renamed from: a */
            private final adn f7968a;

            /* renamed from: b */
            private final int f7969b;

            /* renamed from: c */
            private final int f7970c;

            /* renamed from: d */
            private final boolean f7971d;

            /* renamed from: e */
            private final boolean f7972e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7968a = this;
                this.f7969b = i;
                this.f7970c = i2;
                this.f7971d = z;
                this.f7972e = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7968a.m13569a(this.f7969b, this.f7970c, this.f7971d, this.f7972e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7658a() {
        m13566a("play", null);
    }

    /* renamed from: a */
    public final void m13571a(float f) {
        synchronized (this.f7953b) {
            this.f7961j = f;
        }
    }

    /* renamed from: a */
    public final void m13570a(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        int i2;
        boolean z3 = false;
        synchronized (this.f7953b) {
            if (f2 != this.f7960i || f3 != this.f7962k) {
                z3 = true;
            }
            this.f7960i = f2;
            this.f7961j = f;
            z2 = this.f7959h;
            this.f7959h = z;
            i2 = this.f7956e;
            this.f7956e = i;
            float f4 = this.f7962k;
            this.f7962k = f3;
            if (Math.abs(this.f7962k - f4) > 1.0E-4f) {
                this.f7952a.getView().invalidate();
            }
        }
        if (z3) {
            try {
                if (this.f7965n != null) {
                    this.f7965n.mo9363a();
                }
            } catch (RemoteException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
        m13564b(i2, i, z2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x005c, code lost:
        if (r4 != false) goto L36;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m13569a(int r4, int r5, boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.adn.m13569a(int, int, boolean, boolean):void");
    }

    /* renamed from: a */
    public final void m13568a(AbstractC2997dh abstractC2997dh) {
        synchronized (this.f7953b) {
            this.f7965n = abstractC2997dh;
        }
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7657a(ebb ebbVar) {
        synchronized (this.f7953b) {
            this.f7957f = ebbVar;
        }
    }

    /* renamed from: a */
    public final void m13567a(ecn ecnVar) {
        boolean z = ecnVar.f16288a;
        boolean z2 = ecnVar.f16289b;
        boolean z3 = ecnVar.f16290c;
        synchronized (this.f7953b) {
            this.f7963l = z2;
            this.f7964m = z3;
        }
        m13566a("initialState", C2709f.m13869a("muteStart", z ? "1" : "0", "customControlsRequested", z2 ? "1" : "0", "clickToExpandRequested", z3 ? "1" : "0"));
    }

    /* renamed from: a */
    public final /* synthetic */ void m13565a(Map map) {
        this.f7952a.mo7737a("pubVideoCmd", map);
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7656a(boolean z) {
        m13566a(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: b */
    public final void mo7655b() {
        m13566a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: c */
    public final void mo7654c() {
        m13566a("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: d */
    public final boolean mo7653d() {
        boolean z;
        synchronized (this.f7953b) {
            z = this.f7959h;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: e */
    public final int mo7652e() {
        int i;
        synchronized (this.f7953b) {
            i = this.f7956e;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: f */
    public final float mo7651f() {
        float f;
        synchronized (this.f7953b) {
            f = this.f7960i;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: g */
    public final float mo7650g() {
        float f;
        synchronized (this.f7953b) {
            f = this.f7961j;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: h */
    public final ebb mo7649h() {
        ebb ebbVar;
        synchronized (this.f7953b) {
            ebbVar = this.f7957f;
        }
        return ebbVar;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: i */
    public final float mo7648i() {
        float f;
        synchronized (this.f7953b) {
            f = this.f7962k;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: j */
    public final boolean mo7647j() {
        boolean z;
        synchronized (this.f7953b) {
            z = this.f7954c && this.f7963l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: k */
    public final boolean mo7646k() {
        boolean z;
        boolean mo7647j = mo7647j();
        synchronized (this.f7953b) {
            if (!mo7647j) {
                if (this.f7964m && this.f7955d) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public final void m13563l() {
        boolean z;
        int i;
        synchronized (this.f7953b) {
            z = this.f7959h;
            i = this.f7956e;
            this.f7956e = 3;
        }
        m13564b(i, 3, z, z);
    }
}
