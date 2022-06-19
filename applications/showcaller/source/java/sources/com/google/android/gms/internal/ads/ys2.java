package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.C6232j;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ys2.class */
public final class ys2 {

    /* renamed from: a */
    private final File f32637a;

    /* renamed from: b */
    final File f32638b;

    /* renamed from: c */
    private final SharedPreferences f32639c;

    /* renamed from: d */
    private final int f32640d;

    public ys2(Context context, int i) {
        this.f32639c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zs2.m8192d(dir, false);
        this.f32637a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zs2.m8192d(dir2, true);
        this.f32638b = dir2;
        this.f32640d = i;
    }

    /* renamed from: b */
    static String m8697b(C6574i2 c6574i2) {
        return C6232j.m16793a(c6574i2.mo10722N().zzz());
    }

    /* renamed from: e */
    private final File m8694e() {
        File file = new File(this.f32637a, Integer.toString(this.f32640d - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    /* renamed from: f */
    private final String m8693f() {
        int i = this.f32640d;
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    /* renamed from: g */
    private final String m8692g() {
        int i = this.f32640d;
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8698a(com.google.android.gms.internal.ads.C6463f2 r5, com.google.android.gms.internal.ads.dt2 r6) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ys2.m8698a(com.google.android.gms.internal.ads.f2, com.google.android.gms.internal.ads.dt2):boolean");
    }

    /* renamed from: c */
    public final xs2 m8696c(int i) {
        C6574i2 m8695d = m8695d(1);
        if (m8695d == null) {
            return null;
        }
        String m14511C = m8695d.m14511C();
        File m8195a = zs2.m8195a(m14511C, "pcam.jar", m8694e());
        File file = m8195a;
        if (!m8195a.exists()) {
            file = zs2.m8195a(m14511C, "pcam", m8694e());
        }
        return new xs2(m8695d, file, zs2.m8195a(m14511C, "pcbc", m8694e()), zs2.m8195a(m14511C, "pcopt", m8694e()));
    }

    /* renamed from: d */
    final C6574i2 m8695d(int i) {
        String string = i == 1 ? this.f32639c.getString(m8692g(), null) : this.f32639c.getString(m8693f(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            C6574i2 m14506H = C6574i2.m14506H(zzgex.zzt(C6232j.m16791c(string)));
            String m14511C = m14506H.m14511C();
            File m8195a = zs2.m8195a(m14511C, "pcam.jar", m8694e());
            File file = m8195a;
            if (!m8195a.exists()) {
                file = zs2.m8195a(m14511C, "pcam", m8694e());
            }
            File m8195a2 = zs2.m8195a(m14511C, "pcbc", m8694e());
            if (!file.exists()) {
                return null;
            }
            if (!m8195a2.exists()) {
                return null;
            }
            return m14506H;
        } catch (zzggm e) {
            return null;
        }
    }
}
