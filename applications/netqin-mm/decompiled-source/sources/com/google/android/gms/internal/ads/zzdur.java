package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdur.class */
public final class zzdur {

    /* renamed from: a */
    public final File f27846a;
    @VisibleForTesting

    /* renamed from: b */
    public final File f27847b;

    /* renamed from: c */
    public final SharedPreferences f27848c;

    /* renamed from: d */
    public final zzgo f27849d;

    public zzdur(Context context, zzgo zzgoVar) {
        this.f27848c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzduu.m13140a(dir, false);
        this.f27846a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzduu.m13140a(dir2, true);
        this.f27847b = dir2;
        this.f27849d = zzgoVar;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m13151a(zzgr zzgrVar) {
        return Hex.m17077a(zzgrVar.mo12346j().toByteArray());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087 A[ORIG_RETURN, RETURN] */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzgr m13153a(int r5) {
        /*
            r4 = this;
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.zzduz.f27863a
            if (r0 != r1) goto L_0x0019
            r0 = r4
            android.content.SharedPreferences r0 = r0.f27848c
            r1 = r4
            java.lang.String r1 = r1.m13148c()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L_0x0034
        L_0x0019:
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.zzduz.f27864b
            if (r0 != r1) goto L_0x0032
            r0 = r4
            android.content.SharedPreferences r0 = r0.f27848c
            r1 = r4
            java.lang.String r1 = r1.m13150b()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L_0x0034
        L_0x0032:
            r0 = 0
            r6 = r0
        L_0x0034:
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x003d
            r0 = 0
            return r0
        L_0x003d:
            r0 = r6
            byte[] r0 = com.google.android.gms.common.util.Hex.m17078a(r0)     // Catch: zzekj -> 0x0089
            com.google.android.gms.internal.ads.zzeip r0 = com.google.android.gms.internal.ads.zzeip.zzu(r0)     // Catch: zzekj -> 0x0089
            com.google.android.gms.internal.ads.zzgr r0 = com.google.android.gms.internal.ads.zzgr.m12110a(r0)     // Catch: zzekj -> 0x0089
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.m12099m()     // Catch: zzekj -> 0x0089
            r8 = r0
            r0 = r8
            java.lang.String r1 = "pcam"
            r2 = r4
            java.io.File r2 = r2.m13154a()     // Catch: zzekj -> 0x0089
            java.io.File r0 = com.google.android.gms.internal.ads.zzduu.m13137a(r0, r1, r2)     // Catch: zzekj -> 0x0089
            r6 = r0
            r0 = r8
            java.lang.String r1 = "pcbc"
            r2 = r4
            java.io.File r2 = r2.m13154a()     // Catch: zzekj -> 0x0089
            java.io.File r0 = com.google.android.gms.internal.ads.zzduu.m13137a(r0, r1, r2)     // Catch: zzekj -> 0x0089
            r8 = r0
            r0 = r6
            boolean r0 = r0.exists()     // Catch: zzekj -> 0x0089
            if (r0 == 0) goto L_0x007f
            r0 = r8
            boolean r0 = r0.exists()     // Catch: zzekj -> 0x0089
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007f
            r0 = 1
            r5 = r0
            goto L_0x0081
        L_0x007f:
            r0 = 0
            r5 = r0
        L_0x0081:
            r0 = r5
            if (r0 == 0) goto L_0x0087
            r0 = r7
            return r0
        L_0x0087:
            r0 = 0
            return r0
        L_0x0089:
            r6 = move-exception
            goto L_0x0087
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdur.m13153a(int):com.google.android.gms.internal.ads.zzgr");
    }

    /* renamed from: a */
    public final File m13154a() {
        File file = new File(this.f27846a, Integer.toString(this.f27849d.zzv()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x01d2, code lost:
        if (r0.commit() != false) goto L_0x01db;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x022a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m13152a(com.google.android.gms.internal.ads.zzgq r5, com.google.android.gms.internal.ads.zzdux r6) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdur.m13152a(com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzdux):boolean");
    }

    /* renamed from: b */
    public final zzdus m13149b(int i) {
        zzgr a = m13153a(i);
        if (a == null) {
            return null;
        }
        String m = a.m12099m();
        return new zzdus(a, zzduu.m13137a(m, "pcam", m13154a()), zzduu.m13137a(m, "pcbc", m13154a()), zzduu.m13137a(m, "pcopt", m13154a()));
    }

    /* renamed from: b */
    public final String m13150b() {
        int zzv = this.f27849d.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(zzv);
        return sb.toString();
    }

    /* renamed from: c */
    public final String m13148c() {
        int zzv = this.f27849d.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(zzv);
        return sb.toString();
    }
}
