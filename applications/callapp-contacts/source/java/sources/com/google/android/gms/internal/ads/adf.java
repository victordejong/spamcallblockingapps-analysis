package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adf.class */
public final class adf extends acu implements acg {

    /* renamed from: d */
    private abw f39967d;

    /* renamed from: e */
    private String f39968e;

    /* renamed from: f */
    private boolean f39969f;

    /* renamed from: g */
    private Exception f39970g;

    /* renamed from: h */
    private boolean f39971h;

    public adf(abb abbVar, aay aayVar) {
        super(abbVar);
        abw abwVar = new abw(abbVar.getContext(), aayVar, this.f39926c.get());
        this.f39967d = abwVar;
        abwVar.f39866h = this;
    }

    /* renamed from: c */
    private static String m18861c(String str, Exception exc) {
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

    /* renamed from: c */
    private final void m18862c(String str) {
        synchronized (this) {
            this.f39969f = true;
            notify();
            mo11351a();
        }
        String str2 = this.f39968e;
        if (str2 != null) {
            String mo18856b = mo18856b(str2);
            Exception exc = this.f39970g;
            if (exc != null) {
                m18873a(this.f39968e, mo18856b, "badUrl", m18861c(str, exc));
            } else {
                m18873a(this.f39968e, mo18856b, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.acu, com.google.android.gms.common.api.AbstractC11924l
    /* renamed from: a */
    public final void mo11351a() {
        abw abwVar = this.f39967d;
        if (abwVar != null) {
            abwVar.f39866h = null;
            this.f39967d.m18899a();
        }
        super.mo11351a();
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: a */
    public final void mo18866a(int i) {
        this.f39967d.f39862d.m18886b(i);
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: a */
    public final void mo13845a(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: a */
    public final void mo13842a(String str, Exception exc) {
        String str2 = (String) ekb.m14831e().m18571a(C12187aq.f42983i);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.f39970g = exc;
        zzd.zzd("Precache error", exc);
        m18862c(str);
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: a */
    public final void mo13840a(boolean z, long j) {
        abb abbVar = this.f39926c.get();
        if (abbVar != null) {
            C13091zd.f50122e.execute(new Runnable(abbVar, z, j) { // from class: com.google.android.gms.internal.ads.adi

                /* renamed from: a */
                private final abb f39983a;

                /* renamed from: b */
                private final boolean f39984b;

                /* renamed from: c */
                private final long f39985c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39983a = abbVar;
                    this.f39984b = z;
                    this.f39985c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f39983a.mo13764a(this.f39984b, this.f39985c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: a */
    public final boolean mo18858a(String str) {
        return mo18865a(str, new String[]{str});
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0352, code lost:
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04a7, code lost:
        r0 = r22;
        r22 = r0;
        r20 = r21;
        r21 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0192, code lost:
        r0 = r21.f39970g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x019a, code lost:
        if (r0 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a3, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01c3, code lost:
        throw new java.io.IOException("Abort requested before buffering finished. ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01c4, code lost:
        r27 = th;
     */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Type inference failed for: r0v321, types: [long] */
    /* JADX WARN: Type inference failed for: r0v325, types: [long] */
    /* JADX WARN: Type inference failed for: r0v329, types: [long] */
    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo18865a(java.lang.String r19, java.lang.String[] r20) {
        /*
            Method dump skipped, instructions count: 1366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.adf.mo18865a(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: b */
    public final String mo18856b(String str) {
        String valueOf = String.valueOf(super.mo18856b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: b */
    public final void mo18857b() {
        m18862c(null);
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: b */
    public final void mo18864b(int i) {
        this.f39967d.f39862d.m18888a(i);
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: b */
    public final void mo13836b(String str, Exception exc) {
        zzd.zzd("Precache exception", exc);
    }

    /* renamed from: c */
    public final abw m18863c() {
        synchronized (this) {
            this.f39971h = true;
            notify();
        }
        this.f39967d.f39866h = null;
        abw abwVar = this.f39967d;
        this.f39967d = null;
        return abwVar;
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: d */
    public final void mo18860d(int i) {
        this.f39967d.f39862d.m18885c(i);
    }

    @Override // com.google.android.gms.internal.ads.acu
    /* renamed from: e */
    public final void mo18859e(int i) {
        this.f39967d.f39862d.m18884d(i);
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: g */
    public final void mo13825g(int i) {
    }
}
