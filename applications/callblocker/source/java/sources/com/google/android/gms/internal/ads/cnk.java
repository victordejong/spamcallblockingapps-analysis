package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.C2713j;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnk.class */
public final class cnk {

    /* renamed from: a */
    private final File f13398a;

    /* renamed from: b */
    private final File f13399b;

    /* renamed from: c */
    private final SharedPreferences f13400c;

    /* renamed from: d */
    private final dkc f13401d;

    public cnk(Context context, dkc dkcVar) {
        this.f13400c = context.getSharedPreferences("pcvmspf", 0);
        this.f13398a = cnj.m10979a(context.getDir("pccache", 0), false);
        this.f13399b = cnj.m10979a(context.getDir("tmppccache", 0), true);
        this.f13401d = dkcVar;
    }

    /* renamed from: a */
    private final File m10974a() {
        File file = new File(this.f13398a, Integer.toString(this.f13401d.mo8208a()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* renamed from: a */
    private static String m10971a(dki dkiVar) {
        return C2713j.m13850a(dkiVar.mo9985k().m10210d());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.dki m10969b(int r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.cnp.f13410a
            if (r0 != r1) goto L23
            r0 = r4
            android.content.SharedPreferences r0 = r0.f13400c
            r1 = r4
            java.lang.String r1 = r1.m10968c()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r7 = r0
        L18:
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L3c
            r0 = r6
            r7 = r0
        L21:
            r0 = r7
            return r0
        L23:
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.cnp.f13411b
            if (r0 != r1) goto L94
            r0 = r4
            android.content.SharedPreferences r0 = r0.f13400c
            r1 = r4
            java.lang.String r1 = r1.m10970b()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r7 = r0
            goto L18
        L3c:
            r0 = r7
            byte[] r0 = com.google.android.gms.common.util.C2713j.m13851a(r0)     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            com.google.android.gms.internal.ads.dbi r0 = com.google.android.gms.internal.ads.dbi.m10219a(r0)     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            com.google.android.gms.internal.ads.dki r0 = com.google.android.gms.internal.ads.dki.m9351a(r0)     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            r8 = r0
            r0 = r8
            java.lang.String r0 = r0.m9353a()     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            r9 = r0
            r0 = r9
            java.lang.String r1 = "pcam"
            r2 = r4
            java.io.File r2 = r2.m10974a()     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            java.io.File r0 = com.google.android.gms.internal.ads.cnj.m10976a(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            r7 = r0
            r0 = r9
            java.lang.String r1 = "pcbc"
            r2 = r4
            java.io.File r2 = r2.m10974a()     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            java.io.File r0 = com.google.android.gms.internal.ads.cnj.m10976a(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            r9 = r0
            r0 = r7
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            if (r0 == 0) goto L89
            r0 = r9
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzeco -> L8e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L89
            r0 = 1
            r5 = r0
        L7d:
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L21
            r0 = r8
            r7 = r0
            goto L21
        L89:
            r0 = 0
            r5 = r0
            goto L7d
        L8e:
            r7 = move-exception
            r0 = r6
            r7 = r0
            goto L21
        L94:
            r0 = 0
            r7 = r0
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cnk.m10969b(int):com.google.android.gms.internal.ads.dki");
    }

    /* renamed from: b */
    private final String m10970b() {
        return new StringBuilder(17).append("FBAMTD").append(this.f13401d.mo8208a()).toString();
    }

    /* renamed from: c */
    private final String m10968c() {
        return new StringBuilder(17).append("LATMTD").append(this.f13401d.mo8208a()).toString();
    }

    /* renamed from: a */
    public final cng m10973a(int i) {
        cng cngVar;
        dki m10969b = m10969b(i);
        if (m10969b == null) {
            cngVar = null;
        } else {
            String m9353a = m10969b.m9353a();
            cngVar = new cng(m10969b, cnj.m10976a(m9353a, "pcam", m10974a()), cnj.m10976a(m9353a, "pcbc", m10974a()), cnj.m10976a(m9353a, "pcopt", m10974a()));
        }
        return cngVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01f9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m10972a(com.google.android.gms.internal.ads.dke r5, com.google.android.gms.internal.ads.cnq r6) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cnk.m10972a(com.google.android.gms.internal.ads.dke, com.google.android.gms.internal.ads.cnq):boolean");
    }
}
