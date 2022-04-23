package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adf.class */
public final class adf extends acu implements acg {

    /* renamed from: d  reason: collision with root package name */
    private abw f23144d;
    private String e;
    private boolean f;
    private Exception g;
    private boolean h;

    public adf(abb abbVar, aay aayVar) {
        super(abbVar);
        abw abwVar = new abw(abbVar.getContext(), aayVar, this.f23120c.get());
        this.f23144d = abwVar;
        abwVar.h = this;
    }

    private static String c(String str, Exception exc) {
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

    private final void c(String str) {
        synchronized (this) {
            this.f = true;
            notify();
            a();
        }
        String str2 = this.e;
        if (str2 != null) {
            String b2 = b(str2);
            Exception exc = this.g;
            if (exc != null) {
                a(this.e, b2, "badUrl", c(str, exc));
            } else {
                a(this.e, b2, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.acu, com.google.android.gms.common.api.l
    public final void a() {
        abw abwVar = this.f23144d;
        if (abwVar != null) {
            abwVar.h = null;
            this.f23144d.a();
        }
        super.a();
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void a(int i) {
        this.f23144d.f23079d.b(i);
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void a(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void a(String str, Exception exc) {
        String str2 = (String) ekb.e().a(aq.i);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.g = exc;
        zzd.zzd("Precache error", exc);
        c(str);
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void a(final boolean z, final long j) {
        final abb abbVar = this.f23120c.get();
        if (abbVar != null) {
            zd.e.execute(new Runnable(abbVar, z, j) { // from class: com.google.android.gms.internal.ads.adi

                /* renamed from: a  reason: collision with root package name */
                private final abb f23146a;

                /* renamed from: b  reason: collision with root package name */
                private final boolean f23147b;

                /* renamed from: c  reason: collision with root package name */
                private final long f23148c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23146a = abbVar;
                    this.f23147b = z;
                    this.f23148c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23146a.a(this.f23147b, this.f23148c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final boolean a(String str) {
        return a(str, new String[]{str});
    }

    /* JADX WARN: Code restructure failed: missing block: B:162:0x04a7, code lost:
        r22 = r0;
        r20 = r21;
        r21 = r22;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0192, code lost:
        r0 = r21.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x019a, code lost:
        if (r0 == null) goto L_0x01a4;
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
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Type inference failed for: r27v35, types: [com.google.android.gms.internal.ads.dvl] */
    /* JADX WARN: Type inference failed for: r40v10 */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r40v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.gms.internal.ads.acu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r19, java.lang.String[] r20) {
        /*
            Method dump skipped, instructions count: 1366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.adf.a(java.lang.String, java.lang.String[]):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.acu
    public final String b(String str) {
        String valueOf = String.valueOf(super.b(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void b() {
        c(null);
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void b(int i) {
        this.f23144d.f23079d.a(i);
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void b(String str, Exception exc) {
        zzd.zzd("Precache exception", exc);
    }

    public final abw c() {
        synchronized (this) {
            this.h = true;
            notify();
        }
        this.f23144d.h = null;
        abw abwVar = this.f23144d;
        this.f23144d = null;
        return abwVar;
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void d(int i) {
        this.f23144d.f23079d.c(i);
    }

    @Override // com.google.android.gms.internal.ads.acu
    public final void e(int i) {
        this.f23144d.f23079d.d(i);
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void g(int i) {
    }
}
