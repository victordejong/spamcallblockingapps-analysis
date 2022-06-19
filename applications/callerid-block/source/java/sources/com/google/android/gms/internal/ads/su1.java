package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.C1614k;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/su1.class */
public final class su1 {

    /* renamed from: a */
    private final File f8562a;

    /* renamed from: b */
    final File f8563b;

    /* renamed from: c */
    private final SharedPreferences f8564c;

    /* renamed from: d */
    private final zzhp f8565d;

    public su1(Context context, zzhp zzhpVar) {
        this.f8564c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        tu1.m5464d(dir, false);
        this.f8562a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        tu1.m5464d(dir2, true);
        this.f8563b = dir2;
        this.f8565d = zzhpVar;
    }

    /* renamed from: b */
    static String m5581b(hk2 hk2Var) {
        return C1614k.m8225a(hk2Var.d().zzy());
    }

    /* renamed from: e */
    private final File m5578e() {
        File file = new File(this.f8562a, Integer.toString(this.f8565d.zza()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* renamed from: f */
    private final String m5577f() {
        int zza = this.f8565d.zza();
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(zza);
        return sb.toString();
    }

    /* renamed from: g */
    private final String m5576g() {
        int zza = this.f8565d.zza();
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(zza);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0200  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5582a(com.google.android.gms.internal.ads.ek2 r5, com.google.android.gms.internal.ads.wu1 r6) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.su1.m5582a(com.google.android.gms.internal.ads.ek2, com.google.android.gms.internal.ads.wu1):boolean");
    }

    /* renamed from: c */
    public final ru1 m5580c(int i) {
        hk2 m5579d = m5579d(1);
        if (m5579d == null) {
            return null;
        }
        String E = m5579d.E();
        File m5467a = tu1.m5467a(E, "pcam.jar", m5578e());
        File file = m5467a;
        if (!m5467a.exists()) {
            file = tu1.m5467a(E, "pcam", m5578e());
        }
        return new ru1(m5579d, file, tu1.m5467a(E, "pcbc", m5578e()), tu1.m5467a(E, "pcopt", m5578e()));
    }

    /* renamed from: d */
    final hk2 m5579d(int i) {
        String str;
        SharedPreferences sharedPreferences;
        if (i == 1) {
            sharedPreferences = this.f8564c;
            str = m5576g();
        } else {
            sharedPreferences = this.f8564c;
            str = m5577f();
        }
        String string = sharedPreferences.getString(str, null);
        if (!TextUtils.isEmpty(string)) {
            try {
                hk2 J = hk2.J(zzesf.zzs(C1614k.m8223c(string)));
                String E = J.E();
                File m5467a = tu1.m5467a(E, "pcam.jar", m5578e());
                File file = m5467a;
                if (!m5467a.exists()) {
                    file = tu1.m5467a(E, "pcam", m5578e());
                }
                File m5467a2 = tu1.m5467a(E, "pcbc", m5578e());
                if (!file.exists()) {
                    return null;
                }
                if (!m5467a2.exists()) {
                    return null;
                }
                return J;
            } catch (zzett e) {
                return null;
            }
        }
        return null;
    }
}
