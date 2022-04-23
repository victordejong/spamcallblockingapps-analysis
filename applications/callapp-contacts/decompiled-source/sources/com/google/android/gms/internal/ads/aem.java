package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.g;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aem.class */
public final class aem extends emn {

    /* renamed from: a  reason: collision with root package name */
    final abb f23198a;

    /* renamed from: c  reason: collision with root package name */
    int f23200c;

    /* renamed from: d  reason: collision with root package name */
    emp f23201d;
    boolean e;
    ff g;
    private final boolean h;
    private final boolean i;
    private float j;
    private float k;
    private float l;
    private boolean m;
    private boolean n;

    /* renamed from: b  reason: collision with root package name */
    final Object f23199b = new Object();
    boolean f = true;

    public aem(abb abbVar, float f, boolean z, boolean z2) {
        this.f23198a = abbVar;
        this.j = f;
        this.h = z;
        this.i = z2;
    }

    private final void a(String str, Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zd.e.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.ael

            /* renamed from: a  reason: collision with root package name */
            private final aem f23196a;

            /* renamed from: b  reason: collision with root package name */
            private final Map f23197b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23196a = this;
                this.f23197b = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                aem aemVar = this.f23196a;
                aemVar.f23198a.a("pubVideoCmd", this.f23197b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a() {
        a("play", null);
    }

    public final void a(float f) {
        synchronized (this.f23199b) {
            this.k = f;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061 A[Catch: all -> 0x009f, TryCatch #1 {, blocks: (B:4:0x0009, B:6:0x0012, B:11:0x0028, B:13:0x0061, B:15:0x006f), top: B:32:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(float r7, float r8, int r9, boolean r10, float r11) {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.f23199b
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r8
            r1 = r6
            float r1 = r1.j     // Catch: all -> 0x009f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0025
            r0 = r11
            r1 = r6
            float r1 = r1.l     // Catch: all -> 0x009f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001f
            goto L_0x0025
        L_0x001f:
            r0 = 0
            r13 = r0
            goto L_0x0028
        L_0x0025:
            r0 = 1
            r13 = r0
        L_0x0028:
            r0 = r6
            r1 = r8
            r0.j = r1     // Catch: all -> 0x009f
            r0 = r6
            r1 = r7
            r0.k = r1     // Catch: all -> 0x009f
            r0 = r6
            boolean r0 = r0.f     // Catch: all -> 0x009f
            r14 = r0
            r0 = r6
            r1 = r10
            r0.f = r1     // Catch: all -> 0x009f
            r0 = r6
            int r0 = r0.f23200c     // Catch: all -> 0x009f
            r15 = r0
            r0 = r6
            r1 = r9
            r0.f23200c = r1     // Catch: all -> 0x009f
            r0 = r6
            float r0 = r0.l     // Catch: all -> 0x009f
            r7 = r0
            r0 = r6
            r1 = r11
            r0.l = r1     // Catch: all -> 0x009f
            r0 = r11
            r1 = r7
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)     // Catch: all -> 0x009f
            r1 = 953267991(0x38d1b717, float:1.0E-4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006d
            r0 = r6
            com.google.android.gms.internal.ads.abb r0 = r0.f23198a     // Catch: all -> 0x009f
            android.view.View r0 = r0.s()     // Catch: all -> 0x009f
            r0.invalidate()     // Catch: all -> 0x009f
        L_0x006d:
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x009f
            r0 = r13
            if (r0 == 0) goto L_0x0093
            r0 = r6
            com.google.android.gms.internal.ads.ff r0 = r0.g     // Catch: RemoteException -> 0x008a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0093
            r0 = r12
            r0.a()     // Catch: RemoteException -> 0x008a
            goto L_0x0093
        L_0x008a:
            r12 = move-exception
            java.lang.String r0 = "#007 Could not call remote method."
            r1 = r12
            com.google.android.gms.internal.ads.za.zze(r0, r1)
        L_0x0093:
            r0 = r6
            r1 = r15
            r2 = r9
            r3 = r14
            r4 = r10
            r0.a(r1, r2, r3, r4)
            return
        L_0x009f:
            r16 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x009f
            r0 = r16
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aem.a(float, float, int, boolean, float):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final int i2, final boolean z, final boolean z2) {
        zd.e.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.aeo

            /* renamed from: a  reason: collision with root package name */
            private final aem f23202a;

            /* renamed from: b  reason: collision with root package name */
            private final int f23203b;

            /* renamed from: c  reason: collision with root package name */
            private final int f23204c;

            /* renamed from: d  reason: collision with root package name */
            private final boolean f23205d;
            private final boolean e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23202a = this;
                this.f23203b = i;
                this.f23204c = i2;
                this.f23205d = z;
                this.e = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                aem aemVar = this.f23202a;
                int i3 = this.f23203b;
                int i4 = this.f23204c;
                boolean z3 = this.f23205d;
                boolean z4 = this.e;
                synchronized (aemVar.f23199b) {
                    boolean z5 = false;
                    boolean z6 = i3 != i4;
                    boolean z7 = !aemVar.e && i4 == 1;
                    boolean z8 = z6 && i4 == 1;
                    boolean z9 = z6 && i4 == 2;
                    boolean z10 = z6 && i4 == 3;
                    boolean z11 = z3 != z4;
                    if (aemVar.e || z7) {
                        z5 = true;
                    }
                    aemVar.e = z5;
                    if (z7) {
                        try {
                            if (aemVar.f23201d != null) {
                                aemVar.f23201d.a();
                            }
                        } catch (RemoteException e) {
                            za.zze("#007 Could not call remote method.", e);
                        }
                    }
                    if (z8 && aemVar.f23201d != null) {
                        aemVar.f23201d.b();
                    }
                    if (z9 && aemVar.f23201d != null) {
                        aemVar.f23201d.c();
                    }
                    if (z10) {
                        if (aemVar.f23201d != null) {
                            aemVar.f23201d.d();
                        }
                        aemVar.f23198a.n();
                    }
                    if (z11 && aemVar.f23201d != null) {
                        aemVar.f23201d.a(z4);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(emp empVar) {
        synchronized (this.f23199b) {
            this.f23201d = empVar;
        }
    }

    public final void a(zzaaz zzaazVar) {
        boolean z = zzaazVar.zzaee;
        boolean z2 = zzaazVar.zzaef;
        boolean z3 = zzaazVar.zzaeg;
        synchronized (this.f23199b) {
            this.m = z2;
            this.n = z3;
        }
        String str = z ? "1" : "0";
        String str2 = z2 ? "1" : "0";
        String str3 = z3 ? "1" : "0";
        Map a2 = g.a(3);
        a2.put("muteStart", str);
        a2.put("customControlsRequested", str2);
        a2.put("clickToExpandRequested", str3);
        a("initialState", Collections.unmodifiableMap(a2));
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(boolean z) {
        a(z ? EventConstants.MUTE : EventConstants.UNMUTE, null);
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void b() {
        a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void c() {
        a("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean d() {
        boolean z;
        synchronized (this.f23199b) {
            z = this.f;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final int e() {
        int i;
        synchronized (this.f23199b) {
            i = this.f23200c;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float f() {
        float f;
        synchronized (this.f23199b) {
            f = this.j;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float g() {
        float f;
        synchronized (this.f23199b) {
            f = this.k;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final emp h() throws RemoteException {
        emp empVar;
        synchronized (this.f23199b) {
            empVar = this.f23201d;
        }
        return empVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float i() {
        float f;
        synchronized (this.f23199b) {
            f = this.l;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean j() {
        boolean z;
        synchronized (this.f23199b) {
            z = this.h && this.m;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean k() {
        boolean z;
        boolean j = j();
        synchronized (this.f23199b) {
            if (!j) {
                if (this.n && this.i) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
