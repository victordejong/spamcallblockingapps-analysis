package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.C12103g;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aem.class */
public final class aem extends emn {

    /* renamed from: a */
    final abb f40117a;

    /* renamed from: c */
    int f40119c;

    /* renamed from: d */
    emp f40120d;

    /* renamed from: e */
    boolean f40121e;

    /* renamed from: g */
    AbstractC12550ff f40123g;

    /* renamed from: h */
    private final boolean f40124h;

    /* renamed from: i */
    private final boolean f40125i;

    /* renamed from: j */
    private float f40126j;

    /* renamed from: k */
    private float f40127k;

    /* renamed from: l */
    private float f40128l;

    /* renamed from: m */
    private boolean f40129m;

    /* renamed from: n */
    private boolean f40130n;

    /* renamed from: b */
    final Object f40118b = new Object();

    /* renamed from: f */
    boolean f40122f = true;

    public aem(abb abbVar, float f, boolean z, boolean z2) {
        this.f40117a = abbVar;
        this.f40126j = f;
        this.f40124h = z;
        this.f40125i = z2;
    }

    /* renamed from: a */
    private final void m18803a(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        C13091zd.f50122e.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.ael

            /* renamed from: a */
            private final aem f40115a;

            /* renamed from: b */
            private final Map f40116b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f40115a = this;
                this.f40116b = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                aem aemVar = this.f40115a;
                aemVar.f40117a.mo13770a("pubVideoCmd", this.f40116b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14466a() {
        m18803a("play", null);
    }

    /* renamed from: a */
    public final void m18807a(float f) {
        synchronized (this.f40118b) {
            this.f40127k = f;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061 A[Catch: all -> 0x009f, TryCatch #1 {, blocks: (B:4:0x0009, B:6:0x0012, B:11:0x0028, B:13:0x0061, B:15:0x006f), top: B:32:0x0009 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18806a(float r7, float r8, int r9, boolean r10, float r11) {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.f40118b
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r8
            r1 = r6
            float r1 = r1.f40126j     // Catch: java.lang.Throwable -> L9f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L25
            r0 = r11
            r1 = r6
            float r1 = r1.f40128l     // Catch: java.lang.Throwable -> L9f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L1f
            goto L25
        L1f:
            r0 = 0
            r13 = r0
            goto L28
        L25:
            r0 = 1
            r13 = r0
        L28:
            r0 = r6
            r1 = r8
            r0.f40126j = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            r1 = r7
            r0.f40127k = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            boolean r0 = r0.f40122f     // Catch: java.lang.Throwable -> L9f
            r14 = r0
            r0 = r6
            r1 = r10
            r0.f40122f = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            int r0 = r0.f40119c     // Catch: java.lang.Throwable -> L9f
            r15 = r0
            r0 = r6
            r1 = r9
            r0.f40119c = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            float r0 = r0.f40128l     // Catch: java.lang.Throwable -> L9f
            r7 = r0
            r0 = r6
            r1 = r11
            r0.f40128l = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r11
            r1 = r7
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)     // Catch: java.lang.Throwable -> L9f
            r1 = 953267991(0x38d1b717, float:1.0E-4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L6d
            r0 = r6
            com.google.android.gms.internal.ads.abb r0 = r0.f40117a     // Catch: java.lang.Throwable -> L9f
            android.view.View r0 = r0.mo13731s()     // Catch: java.lang.Throwable -> L9f
            r0.invalidate()     // Catch: java.lang.Throwable -> L9f
        L6d:
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9f
            r0 = r13
            if (r0 == 0) goto L93
            r0 = r6
            com.google.android.gms.internal.ads.ff r0 = r0.f40123g     // Catch: android.os.RemoteException -> L8a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L93
            r0 = r12
            r0.mo14679a()     // Catch: android.os.RemoteException -> L8a
            goto L93
        L8a:
            r12 = move-exception
            java.lang.String r0 = "#007 Could not call remote method."
            r1 = r12
            com.google.android.gms.internal.ads.C13088za.zze(r0, r1)
        L93:
            r0 = r6
            r1 = r15
            r2 = r9
            r3 = r14
            r4 = r10
            r0.m18805a(r1, r2, r3, r4)
            return
        L9f:
            r16 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9f
            r0 = r16
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aem.m18806a(float, float, int, boolean, float):void");
    }

    /* renamed from: a */
    public final void m18805a(int i, int i2, boolean z, boolean z2) {
        C13091zd.f50122e.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.aeo

            /* renamed from: a */
            private final aem f40131a;

            /* renamed from: b */
            private final int f40132b;

            /* renamed from: c */
            private final int f40133c;

            /* renamed from: d */
            private final boolean f40134d;

            /* renamed from: e */
            private final boolean f40135e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f40131a = this;
                this.f40132b = i;
                this.f40133c = i2;
                this.f40134d = z;
                this.f40135e = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                aem aemVar = this.f40131a;
                int i3 = this.f40132b;
                int i4 = this.f40133c;
                boolean z3 = this.f40134d;
                boolean z4 = this.f40135e;
                synchronized (aemVar.f40118b) {
                    boolean z5 = false;
                    boolean z6 = i3 != i4;
                    boolean z7 = !aemVar.f40121e && i4 == 1;
                    boolean z8 = z6 && i4 == 1;
                    boolean z9 = z6 && i4 == 2;
                    boolean z10 = z6 && i4 == 3;
                    boolean z11 = z3 != z4;
                    if (aemVar.f40121e || z7) {
                        z5 = true;
                    }
                    aemVar.f40121e = z5;
                    if (z7) {
                        try {
                            if (aemVar.f40120d != null) {
                                aemVar.f40120d.mo14054a();
                            }
                        } catch (RemoteException e) {
                            C13088za.zze("#007 Could not call remote method.", e);
                        }
                    }
                    if (z8 && aemVar.f40120d != null) {
                        aemVar.f40120d.mo14052b();
                    }
                    if (z9 && aemVar.f40120d != null) {
                        aemVar.f40120d.mo14051c();
                    }
                    if (z10) {
                        if (aemVar.f40120d != null) {
                            aemVar.f40120d.mo14050d();
                        }
                        aemVar.f40117a.mo13736n();
                    }
                    if (z11 && aemVar.f40120d != null) {
                        aemVar.f40120d.mo14053a(z4);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14465a(emp empVar) {
        synchronized (this.f40118b) {
            this.f40120d = empVar;
        }
    }

    /* renamed from: a */
    public final void m18804a(zzaaz zzaazVar) {
        boolean z = zzaazVar.zzaee;
        boolean z2 = zzaazVar.zzaef;
        boolean z3 = zzaazVar.zzaeg;
        synchronized (this.f40118b) {
            this.f40129m = z2;
            this.f40130n = z3;
        }
        String str = z ? "1" : "0";
        String str2 = z2 ? "1" : "0";
        String str3 = z3 ? "1" : "0";
        Map m19042a = C12103g.m19042a(3);
        m19042a.put("muteStart", str);
        m19042a.put("customControlsRequested", str2);
        m19042a.put("clickToExpandRequested", str3);
        m18803a("initialState", Collections.unmodifiableMap(m19042a));
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14464a(boolean z) {
        m18803a(z ? EventConstants.MUTE : EventConstants.UNMUTE, null);
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: b */
    public final void mo14463b() {
        m18803a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: c */
    public final void mo14462c() {
        m18803a("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: d */
    public final boolean mo14461d() {
        boolean z;
        synchronized (this.f40118b) {
            z = this.f40122f;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: e */
    public final int mo14460e() {
        int i;
        synchronized (this.f40118b) {
            i = this.f40119c;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: f */
    public final float mo14459f() {
        float f;
        synchronized (this.f40118b) {
            f = this.f40126j;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: g */
    public final float mo14458g() {
        float f;
        synchronized (this.f40118b) {
            f = this.f40127k;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: h */
    public final emp mo14457h() throws RemoteException {
        emp empVar;
        synchronized (this.f40118b) {
            empVar = this.f40120d;
        }
        return empVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: i */
    public final float mo14456i() {
        float f;
        synchronized (this.f40118b) {
            f = this.f40128l;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: j */
    public final boolean mo14455j() {
        boolean z;
        synchronized (this.f40118b) {
            z = this.f40124h && this.f40129m;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: k */
    public final boolean mo14454k() {
        boolean z;
        boolean mo14455j = mo14455j();
        synchronized (this.f40118b) {
            if (!mo14455j) {
                if (this.f40130n && this.f40125i) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
