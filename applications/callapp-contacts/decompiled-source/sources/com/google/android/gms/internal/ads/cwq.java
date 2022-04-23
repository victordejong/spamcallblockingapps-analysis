package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.k;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwq.class */
public final class cwq {

    /* renamed from: a  reason: collision with root package name */
    final File f26505a;

    /* renamed from: b  reason: collision with root package name */
    final SharedPreferences f26506b;

    /* renamed from: c  reason: collision with root package name */
    private final File f26507c;

    /* renamed from: d  reason: collision with root package name */
    private final duu f26508d;

    public cwq(Context context, duu duuVar) {
        this.f26506b = context.getSharedPreferences("pcvmspf", 0);
        this.f26507c = cwp.a(context.getDir("pccache", 0), false);
        this.f26505a = cwp.a(context.getDir("tmppccache", 0), true);
        this.f26508d = duuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(dva dvaVar) {
        return k.b(dvaVar.f().d());
    }

    public final cwn a(int i) {
        dva b2 = b(i);
        if (b2 == null) {
            return null;
        }
        String str = b2.zzaci;
        File a2 = cwp.a(str, "pcam.jar", a());
        File file = a2;
        if (!a2.exists()) {
            file = cwp.a(str, "pcam", a());
        }
        return new cwn(b2, file, cwp.a(str, "pcbc", a()), cwp.a(str, "pcopt", a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File a() {
        File file = new File(this.f26507c, Integer.toString(this.f26508d.zzv()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.dva b(int r5) {
        /*
            r4 = this;
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.cwv.f26513a
            if (r0 != r1) goto L_0x0019
            r0 = r4
            android.content.SharedPreferences r0 = r0.f26506b
            r1 = r4
            java.lang.String r1 = r1.c()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L_0x0034
        L_0x0019:
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.cwv.f26514b
            if (r0 != r1) goto L_0x0032
            r0 = r4
            android.content.SharedPreferences r0 = r0.f26506b
            r1 = r4
            java.lang.String r1 = r1.b()
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
            byte[] r0 = com.google.android.gms.common.util.k.a(r0)     // Catch: zzenn -> 0x00a1
            com.google.android.gms.internal.ads.dlw r0 = com.google.android.gms.internal.ads.dlw.a(r0)     // Catch: zzenn -> 0x00a1
            com.google.android.gms.internal.ads.dva r0 = com.google.android.gms.internal.ads.dva.a(r0)     // Catch: zzenn -> 0x00a1
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.zzaci     // Catch: zzenn -> 0x00a1
            r8 = r0
            r0 = r8
            java.lang.String r1 = "pcam.jar"
            r2 = r4
            java.io.File r2 = r2.a()     // Catch: zzenn -> 0x00a1
            java.io.File r0 = com.google.android.gms.internal.ads.cwp.a(r0, r1, r2)     // Catch: zzenn -> 0x00a1
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = r0.exists()     // Catch: zzenn -> 0x00a1
            if (r0 != 0) goto L_0x0072
            r0 = r8
            java.lang.String r1 = "pcam"
            r2 = r4
            java.io.File r2 = r2.a()     // Catch: zzenn -> 0x00a1
            java.io.File r0 = com.google.android.gms.internal.ads.cwp.a(r0, r1, r2)     // Catch: zzenn -> 0x00a1
            r6 = r0
        L_0x0072:
            r0 = r8
            java.lang.String r1 = "pcbc"
            r2 = r4
            java.io.File r2 = r2.a()     // Catch: zzenn -> 0x00a1
            java.io.File r0 = com.google.android.gms.internal.ads.cwp.a(r0, r1, r2)     // Catch: zzenn -> 0x00a1
            r9 = r0
            r0 = r6
            boolean r0 = r0.exists()     // Catch: zzenn -> 0x00a1
            if (r0 == 0) goto L_0x0097
            r0 = r9
            boolean r0 = r0.exists()     // Catch: zzenn -> 0x00a1
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0097
            r0 = 1
            r5 = r0
            goto L_0x0099
        L_0x0097:
            r0 = 0
            r5 = r0
        L_0x0099:
            r0 = r5
            if (r0 == 0) goto L_0x009f
            r0 = r7
            return r0
        L_0x009f:
            r0 = 0
            return r0
        L_0x00a1:
            r6 = move-exception
            goto L_0x009f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cwq.b(int):com.google.android.gms.internal.ads.dva");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        int zzv = this.f26508d.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(zzv);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c() {
        int zzv = this.f26508d.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(zzv);
        return sb.toString();
    }
}
