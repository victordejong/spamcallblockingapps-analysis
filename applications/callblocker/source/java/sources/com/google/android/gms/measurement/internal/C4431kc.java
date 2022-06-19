package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
/* renamed from: com.google.android.gms.measurement.internal.kc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kc.class */
public final class C4431kc {

    /* renamed from: a */
    private final C4296fd f19323a;

    public C4431kc(C4296fd c4296fd) {
        this.f19323a = c4296fd;
    }

    /* renamed from: c */
    private final boolean m4070c() {
        boolean z = false;
        if (m4069d() && this.f19323a.mo4035q().mo13862a() - this.f19323a.m4553c().f18782x.m4624a() > this.f19323a.m4556b().m4801a((String) null, C4452t.f19434aQ)) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    private final boolean m4069d() {
        return this.f19323a.m4553c().f18782x.m4624a() > 0;
    }

    /* renamed from: a */
    public final void m4073a() {
        this.f19323a.mo4031u().mo4037o();
        if (!m4069d()) {
            return;
        }
        if (m4070c()) {
            this.f19323a.m4553c().f18781w.m4618a(null);
            Bundle bundle = new Bundle();
            bundle.putString("source", "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            this.f19323a.m4548h().m4405a("auto", "_cmpx", bundle);
        } else {
            String m4619a = this.f19323a.m4553c().f18781w.m4619a();
            if (TextUtils.isEmpty(m4619a)) {
                this.f19323a.mo4030v().m4664c().m4654a("Cache still valid but referrer not found");
            } else {
                long m4624a = this.f19323a.m4553c().f18782x.m4624a() / 3600000;
                Uri parse = Uri.parse(m4619a);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str : parse.getQueryParameterNames()) {
                    bundle2.putString(str, parse.getQueryParameter(str));
                }
                ((Bundle) pair.second).putLong("_cc", (m4624a - 1) * 3600000);
                this.f19323a.m4548h().m4405a((String) pair.first, "_cmp", (Bundle) pair.second);
            }
            this.f19323a.m4553c().f18781w.m4618a(null);
        }
        this.f19323a.m4553c().f18782x.m4623a(0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        if (r6.isEmpty() != false) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4072a(java.lang.String r6, android.os.Bundle r7) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.fd r0 = r0.f19323a
            com.google.android.gms.measurement.internal.fa r0 = r0.mo4031u()
            r0.mo4037o()
            r0 = r5
            com.google.android.gms.measurement.internal.fd r0 = r0.f19323a
            boolean r0 = r0.m4574B()
            if (r0 != 0) goto L4f
            r0 = r7
            if (r0 == 0) goto L1f
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L50
        L1f:
            r0 = 0
            r6 = r0
        L21:
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L4f
            r0 = r5
            com.google.android.gms.measurement.internal.fd r0 = r0.f19323a
            com.google.android.gms.measurement.internal.el r0 = r0.m4553c()
            com.google.android.gms.measurement.internal.er r0 = r0.f18781w
            r1 = r6
            r0.m4618a(r1)
            r0 = r5
            com.google.android.gms.measurement.internal.fd r0 = r0.f19323a
            com.google.android.gms.measurement.internal.el r0 = r0.m4553c()
            com.google.android.gms.measurement.internal.ep r0 = r0.f18782x
            r1 = r5
            com.google.android.gms.measurement.internal.fd r1 = r1.f19323a
            com.google.android.gms.common.util.e r1 = r1.mo4035q()
            long r1 = r1.mo13862a()
            r0.m4623a(r1)
        L4f:
            return
        L50:
            r0 = r6
            if (r0 == 0) goto L5d
            r0 = r6
            r8 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L60
        L5d:
            java.lang.String r0 = "auto"
            r8 = r0
        L60:
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r8
            android.net.Uri$Builder r0 = r0.path(r1)
            r0 = r7
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L79:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L9c
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = r6
            r1 = r8
            r2 = r7
            r3 = r8
            java.lang.String r2 = r2.getString(r3)
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            goto L79
        L9c:
            r0 = r6
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            r6 = r0
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4431kc.m4072a(java.lang.String, android.os.Bundle):void");
    }

    /* renamed from: b */
    public final void m4071b() {
        if (!m4069d() || !m4070c()) {
            return;
        }
        this.f19323a.m4553c().f18781w.m4618a(null);
    }
}
