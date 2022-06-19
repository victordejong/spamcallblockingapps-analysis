package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.C8521v0;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackState.class */
public abstract class AssetPackState {
    /* renamed from: d */
    public static AssetPackState m3795d(String str, int i, int i2, long j, long j2, double d, int i3, String str2) {
        return new C8458z(str, i, i2, j, j2, (int) Math.rint(100.0d * d), i3, str2);
    }

    /* renamed from: e */
    public static AssetPackState m3794e(Bundle bundle, String str, C8415n0 c8415n0, AbstractC8438t abstractC8438t) {
        int mo3674a = abstractC8438t.mo3674a(bundle.getInt(C8521v0.m3456e("status", str)), str);
        int i = bundle.getInt(C8521v0.m3456e("error_code", str));
        long j = bundle.getLong(C8521v0.m3456e("bytes_downloaded", str));
        long j2 = bundle.getLong(C8521v0.m3456e("total_bytes_to_download", str));
        double m3716b = c8415n0.m3716b(str);
        long j3 = bundle.getLong(C8521v0.m3456e("pack_version", str));
        long j4 = bundle.getLong(C8521v0.m3456e("pack_base_version", str));
        int i2 = 1;
        if (mo3674a == 4) {
            i2 = 1;
            if (j4 != 0) {
                i2 = 1;
                if (j4 != j3) {
                    i2 = 2;
                }
            }
        }
        return m3795d(str, mo3674a, i, j, j2, m3716b, i2, bundle.getString(C8521v0.m3456e("pack_version_tag", str), ""));
    }

    /* renamed from: a */
    public abstract int mo3608a();

    /* renamed from: b */
    public abstract String mo3607b();

    /* renamed from: c */
    public abstract long mo3606c();

    /* renamed from: f */
    public abstract int mo3605f();

    /* renamed from: g */
    public abstract String mo3604g();

    /* renamed from: h */
    public abstract int mo3603h();

    /* renamed from: i */
    public abstract long mo3602i();

    /* renamed from: j */
    public abstract int mo3601j();
}
