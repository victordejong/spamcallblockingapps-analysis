package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C15048bl;
/* renamed from: com.google.android.play.core.assetpacks.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/b.class */
public abstract class AbstractC14926b {
    /* renamed from: a */
    public static AbstractC14926b m9773a(Bundle bundle, String str, C14915ap c14915ap, AbstractC14994u abstractC14994u) {
        int mo9670a = abstractC14994u.mo9670a(bundle.getInt(C15048bl.m9565a("status", str)));
        int i = bundle.getInt(C15048bl.m9565a("error_code", str));
        long j = bundle.getLong(C15048bl.m9565a("bytes_downloaded", str));
        long j2 = bundle.getLong(C15048bl.m9565a("total_bytes_to_download", str));
        double m9776b = c14915ap.m9776b(str);
        long j3 = bundle.getLong(C15048bl.m9565a("pack_version", str));
        long j4 = bundle.getLong(C15048bl.m9565a("pack_base_version", str));
        int i2 = 1;
        if (mo9670a == 4) {
            i2 = 1;
            if (j4 != 0) {
                i2 = 1;
                if (j4 != j3) {
                    i2 = 2;
                }
            }
        }
        return m9772a(str, mo9670a, i, j, j2, m9776b, i2, bundle.getString(C15048bl.m9565a("pack_version_tag", str), ""));
    }

    /* renamed from: a */
    public static AbstractC14926b m9772a(String str, int i, int i2, long j, long j2, double d, int i3, String str2) {
        return new C14900aa(str, i, i2, j, j2, (int) Math.rint(100.0d * d), i3, str2);
    }

    /* renamed from: a */
    public abstract String mo9774a();

    /* renamed from: b */
    public abstract int mo9771b();

    /* renamed from: c */
    public abstract int mo9770c();

    /* renamed from: d */
    public abstract long mo9769d();

    /* renamed from: e */
    public abstract long mo9768e();

    /* renamed from: f */
    public abstract int mo9767f();

    /* renamed from: g */
    public abstract int mo9766g();

    /* renamed from: h */
    public abstract String mo9765h();
}
