package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import java.util.Arrays;
import java.util.List;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acj.class */
public final class acj extends abt implements abk {

    /* renamed from: d */
    private abb f7821d;

    /* renamed from: e */
    private String f7822e;

    /* renamed from: f */
    private boolean f7823f;

    /* renamed from: g */
    private Exception f7824g;

    /* renamed from: h */
    private boolean f7825h;

    public acj(aad aadVar, aae aaeVar) {
        super(aadVar);
        this.f7821d = new abb(aadVar.getContext(), aaeVar);
        this.f7821d.m13682a((abk) this);
    }

    /* renamed from: b */
    private static String m13631b(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        return new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length()).append(str).append("/").append(canonicalName).append(":").append(message).toString();
    }

    /* renamed from: c */
    private final void m13628c(String str) {
        synchronized (this) {
            this.f7823f = true;
            notify();
            mo13641a();
        }
        if (this.f7822e != null) {
            String mo13632b = mo13632b(this.f7822e);
            if (this.f7824g != null) {
                m13658a(this.f7822e, mo13632b, "badUrl", m13631b(str, this.f7824g));
            } else {
                m13658a(this.f7822e, mo13632b, "externalAbort", "Programmatic precache abort.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.abt, com.google.android.gms.common.api.AbstractC2499g
    /* renamed from: a */
    public final void mo13641a() {
        if (this.f7821d != null) {
            this.f7821d.m13682a((abk) null);
            this.f7821d.m13671e();
        }
        super.mo13641a();
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    public final void mo13640a(int i) {
        this.f7821d.m13672d().m13694b(i);
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: a */
    public final void mo13639a(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: a */
    public final void mo13637a(String str, Exception exc) {
        String str2 = (String) dyx.m8158e().m7876a(edi.f16598j);
        if (str2 != null) {
            List asList = Arrays.asList(str2.split(","));
            if (asList.contains("all") || asList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.f7824g = exc;
        C3556uu.m6746d("Precache error", exc);
        m13628c(str);
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: a */
    public final void mo13635a(boolean z, long j) {
        aad aadVar = this.f7764c.get();
        if (aadVar != null) {
            C3650yg.f17646e.execute(new Runnable(aadVar, z, j) { // from class: com.google.android.gms.internal.ads.ach

                /* renamed from: a */
                private final aad f7818a;

                /* renamed from: b */
                private final boolean f7819b;

                /* renamed from: c */
                private final long f7820c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7818a = aadVar;
                    this.f7819b = z;
                    this.f7820c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f7818a.mo13455a(this.f7819b, this.f7820c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    public final boolean mo13638a(String str) {
        return mo13636a(str, new String[]{str});
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0263, code lost:
        r0 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x019c, code lost:
        r29 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v112 */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [com.google.android.gms.common.util.e] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.internal.ads.abt, com.google.android.gms.internal.ads.acj, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo13636a(java.lang.String r12, java.lang.String[] r13) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.acj.mo13636a(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: b */
    public final String mo13632b(String str) {
        String valueOf = String.valueOf("cache:");
        String valueOf2 = String.valueOf(super.mo13632b(str));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: b */
    public final void mo13634b() {
        m13628c((String) null);
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: b */
    public final void mo13633b(int i) {
    }

    /* renamed from: c */
    public final abb m13630c() {
        synchronized (this) {
            this.f7825h = true;
            notify();
        }
        this.f7821d.m13682a((abk) null);
        abb abbVar = this.f7821d;
        this.f7821d = null;
        return abbVar;
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: c */
    public final void mo13629c(int i) {
        this.f7821d.m13672d().m13696a(i);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: d */
    public final void mo13627d(int i) {
        this.f7821d.m13672d().m13693c(i);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: e */
    public final void mo13626e(int i) {
        this.f7821d.m13672d().m13692d(i);
    }
}
