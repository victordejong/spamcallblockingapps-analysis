package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eak.class */
public final class eak implements ecn {

    /* renamed from: b */
    private final Uri f48500b;

    /* renamed from: c */
    private final ecb f48501c;

    /* renamed from: d */
    private final ean f48502d;

    /* renamed from: e */
    private final ect f48503e;

    /* renamed from: g */
    private volatile boolean f48505g;

    /* renamed from: i */
    private long f48507i;

    /* renamed from: j */
    private final /* synthetic */ eah f48508j;

    /* renamed from: f */
    private final dyb f48504f = new dyb();

    /* renamed from: h */
    private boolean f48506h = true;

    /* renamed from: a */
    long f48499a = -1;

    public eak(eah eahVar, Uri uri, ecb ecbVar, ean eanVar, ect ectVar) {
        this.f48508j = eahVar;
        this.f48500b = (Uri) ecr.m15251a(uri);
        this.f48501c = (ecb) ecr.m15251a(ecbVar);
        this.f48502d = (ean) ecr.m15251a(eanVar);
        this.f48503e = ectVar;
    }

    @Override // com.google.android.gms.internal.ads.ecn
    /* renamed from: a */
    public final void mo15266a() {
        this.f48505g = true;
    }

    /* renamed from: a */
    public final void m15367a(long j, long j2) {
        this.f48504f.f47994a = j;
        this.f48507i = j2;
        this.f48506h = true;
    }

    @Override // com.google.android.gms.internal.ads.ecn
    /* renamed from: b */
    public final boolean mo15265b() {
        return this.f48505g;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecn
    /* renamed from: c */
    public final void mo15264c() throws IOException, InterruptedException {
        Throwable th;
        ?? r0;
        dxr dxrVar;
        int i;
        int i2;
        int i3 = 0;
        while (i3 == 0 && !this.f48505g) {
            dxr dxrVar2 = null;
            try {
                r0 = this.f48504f.f47994a;
                long mo15281a = this.f48501c.mo15281a(new ecf(this.f48500b, r0, -1L, this.f48508j.f48472c));
                this.f48499a = mo15281a;
                if (mo15281a != -1) {
                    this.f48499a = mo15281a + r0;
                }
                dxrVar = new dxr(this.f48501c, r0, this.f48499a);
                i = i3;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                dxv m15366a = this.f48502d.m15366a(dxrVar, this.f48501c.mo15282a());
                int i4 = i3;
                char c = r0;
                if (this.f48506h) {
                    int i5 = i3;
                    m15366a.mo15421a((long) r0, this.f48507i);
                    int i6 = i3;
                    this.f48506h = false;
                    c = r0;
                    i4 = i3;
                }
                while (i4 == 0 && !this.f48505g) {
                    int i7 = i4;
                    this.f48503e.m15241c();
                    int i8 = i4;
                    int mo15419a = m15366a.mo15419a(dxrVar, this.f48504f);
                    i4 = mo15419a;
                    if (dxrVar.mo15495b() > this.f48508j.f48473d + c) {
                        c = dxrVar.mo15495b();
                        this.f48503e.m15242b();
                        this.f48508j.f48478i.post(this.f48508j.f48477h);
                        i4 = mo15419a;
                    }
                }
                if (i4 == 1) {
                    i2 = 0;
                } else {
                    this.f48504f.f47994a = dxrVar.mo15495b();
                    i2 = i4;
                }
                i3 = i2;
                ede.m15195a(this.f48501c);
            } catch (Throwable th3) {
                th = th3;
                dxrVar2 = dxrVar;
                i3 = i;
                if (i3 != 1 && dxrVar2 != null) {
                    this.f48504f.f47994a = dxrVar2.mo15495b();
                }
                ede.m15195a(this.f48501c);
                throw th;
            }
        }
    }
}
