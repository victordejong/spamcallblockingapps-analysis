package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbdu;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfw.class */
public final class zzbfw extends zzbfl implements zzbey {

    /* renamed from: d */
    public zzber f24939d;

    /* renamed from: e */
    public String f24940e;

    /* renamed from: f */
    public boolean f24941f;

    /* renamed from: g */
    public Exception f24942g;

    /* renamed from: h */
    public boolean f24943h;

    public zzbfw(zzbdu zzbduVar, zzbdv zzbdvVar) {
        super(zzbduVar);
        zzber zzberVar = new zzber(zzbduVar.getContext(), zzbdvVar);
        this.f24939d = zzberVar;
        zzberVar.m15691a(this);
    }

    /* renamed from: b */
    public static String m15649b(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzbfl, com.google.android.gms.common.api.Releasable
    /* renamed from: a */
    public final void mo15656a() {
        zzber zzberVar = this.f24939d;
        if (zzberVar != null) {
            zzberVar.m15691a((zzbey) null);
            this.f24939d.m15682c();
        }
        super.mo15656a();
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: a */
    public final void mo15655a(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: a */
    public final void mo15654a(String str, Exception exc) {
        String str2 = (String) zzwm.m11166e().m16921a(zzabb.f23832j);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.f24942g = exc;
        zzbbq.m15853c("Precache error", exc);
        m15645d(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: a */
    public final void mo15652a(final boolean z, final long j) {
        final zzbdu zzbduVar = this.f24934c.get();
        if (zzbduVar != null) {
            zzbbz.f24768e.execute(new Runnable(zzbduVar, z, j) { // from class: c.d.b.d.g.a.z8

                /* renamed from: a */
                public final zzbdu f16263a;

                /* renamed from: b */
                public final boolean f16264b;

                /* renamed from: c */
                public final long f16265c;

                {
                    this.f16263a = zzbduVar;
                    this.f16264b = z;
                    this.f16265c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f16263a.mo15574a(this.f16264b, this.f16265c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: a */
    public final boolean mo15643a(String str) {
        return mo15653a(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.internal.ads.zzbfw, com.google.android.gms.internal.ads.zzbfl, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Type inference failed for: r29v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo15653a(java.lang.String r12, java.lang.String[] r13) {
        /*
            Method dump skipped, instructions count: 755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbfw.mo15653a(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final String mo15641b(String str) {
        String valueOf = String.valueOf(super.mo15641b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final void mo15642b() {
        m15645d((String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: b */
    public final void mo15651b(int i) {
        this.f24939d.m15680e().m15698c(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbey
    /* renamed from: b */
    public final void mo15650b(int i, int i2) {
    }

    /* renamed from: c */
    public final zzber m15648c() {
        synchronized (this) {
            this.f24943h = true;
            notify();
        }
        this.f24939d.m15691a((zzbey) null);
        zzber zzberVar = this.f24939d;
        this.f24939d = null;
        return zzberVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: c */
    public final void mo15647c(int i) {
        this.f24939d.m15680e().m15697d(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: d */
    public final void mo15646d(int i) {
        this.f24939d.m15680e().m15701a(i);
    }

    /* renamed from: d */
    public final void m15645d(String str) {
        synchronized (this) {
            this.f24941f = true;
            notify();
            mo15656a();
        }
        String str2 = this.f24940e;
        if (str2 != null) {
            String b = mo15641b(str2);
            Exception exc = this.f24942g;
            if (exc != null) {
                m15662a(this.f24940e, b, "badUrl", m15649b(str, exc));
            } else {
                m15662a(this.f24940e, b, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    /* renamed from: e */
    public final void mo15644e(int i) {
        this.f24939d.m15680e().m15699b(i);
    }
}
