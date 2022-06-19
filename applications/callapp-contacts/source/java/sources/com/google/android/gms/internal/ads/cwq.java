package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.C12107k;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwq.class */
public final class cwq {

    /* renamed from: a */
    final File f46675a;

    /* renamed from: b */
    final SharedPreferences f46676b;

    /* renamed from: c */
    private final File f46677c;

    /* renamed from: d */
    private final duu f46678d;

    public cwq(Context context, duu duuVar) {
        this.f46676b = context.getSharedPreferences("pcvmspf", 0);
        this.f46677c = cwp.m17116a(context.getDir("pccache", 0), false);
        this.f46675a = cwp.m17116a(context.getDir("tmppccache", 0), true);
        this.f46678d = duuVar;
    }

    /* renamed from: a */
    public static String m17109a(dva dvaVar) {
        return C12107k.m19026b(dvaVar.mo16257f().m16467d());
    }

    /* renamed from: a */
    public final cwn m17110a(int i) {
        dva m17107b = m17107b(i);
        if (m17107b == null) {
            return null;
        }
        String str = m17107b.zzaci;
        File m17113a = cwp.m17113a(str, "pcam.jar", m17111a());
        File file = m17113a;
        if (!m17113a.exists()) {
            file = cwp.m17113a(str, "pcam", m17111a());
        }
        return new cwn(m17107b, file, cwp.m17113a(str, "pcbc", m17111a()), cwp.m17113a(str, "pcopt", m17111a()));
    }

    /* renamed from: a */
    public final File m17111a() {
        File file = new File(this.f46677c, Integer.toString(this.f46678d.zzv()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f A[ORIG_RETURN, RETURN] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.dva m17107b(int r5) {
        /*
            r4 = this;
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.cwv.f46685a
            if (r0 != r1) goto L19
            r0 = r4
            android.content.SharedPreferences r0 = r0.f46676b
            r1 = r4
            java.lang.String r1 = r1.m17106c()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L34
        L19:
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.cwv.f46686b
            if (r0 != r1) goto L32
            r0 = r4
            android.content.SharedPreferences r0 = r0.f46676b
            r1 = r4
            java.lang.String r1 = r1.m17108b()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L34
        L32:
            r0 = 0
            r6 = r0
        L34:
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L3d
            r0 = 0
            return r0
        L3d:
            r0 = r6
            byte[] r0 = com.google.android.gms.common.util.C12107k.m19028a(r0)     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            com.google.android.gms.internal.ads.dlw r0 = com.google.android.gms.internal.ads.dlw.m16475a(r0)     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            com.google.android.gms.internal.ads.dva r0 = com.google.android.gms.internal.ads.dva.m15691a(r0)     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.zzaci     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            r8 = r0
            r0 = r8
            java.lang.String r1 = "pcam.jar"
            r2 = r4
            java.io.File r2 = r2.m17111a()     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            java.io.File r0 = com.google.android.gms.internal.ads.cwp.m17113a(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            if (r0 != 0) goto L72
            r0 = r8
            java.lang.String r1 = "pcam"
            r2 = r4
            java.io.File r2 = r2.m17111a()     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            java.io.File r0 = com.google.android.gms.internal.ads.cwp.m17113a(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            r6 = r0
        L72:
            r0 = r8
            java.lang.String r1 = "pcbc"
            r2 = r4
            java.io.File r2 = r2.m17111a()     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            java.io.File r0 = com.google.android.gms.internal.ads.cwp.m17113a(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            r9 = r0
            r0 = r6
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            if (r0 == 0) goto L97
            r0 = r9
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzenn -> La1
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L97
            r0 = 1
            r5 = r0
            goto L99
        L97:
            r0 = 0
            r5 = r0
        L99:
            r0 = r5
            if (r0 == 0) goto L9f
            r0 = r7
            return r0
        L9f:
            r0 = 0
            return r0
        La1:
            r6 = move-exception
            goto L9f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cwq.m17107b(int):com.google.android.gms.internal.ads.dva");
    }

    /* renamed from: b */
    public final String m17108b() {
        int zzv = this.f46678d.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(zzv);
        return sb.toString();
    }

    /* renamed from: c */
    public final String m17106c() {
        int zzv = this.f46678d.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(zzv);
        return sb.toString();
    }
}
