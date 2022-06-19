package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import p124i4.C3102d;
import p134j4.AbstractC3256v;
import p134j4.C3182a0;
import p134j4.C3245r0;
import p134j4.C3246r1;
/* loaded from: classes-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackState.class */
public abstract class AssetPackState {
    /* renamed from: h */
    public static AssetPackState m4477h(String str, int i, int i2, long j, long j2, double d, int i3, String str2, String str3) {
        return new C3182a0(str, i, i2, j, j2, (int) Math.rint(100.0d * d), i3, str2, str3);
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* renamed from: i */
    public static AssetPackState m4476i(Bundle bundle, String str, C3245r0 c3245r0, C3246r1 c3246r1, AbstractC3256v abstractC3256v) {
        char doubleValue;
        int i;
        int zza = abstractC3256v.zza(bundle.getInt(C3102d.m2640L("status", str)), str);
        int i2 = bundle.getInt(C3102d.m2640L("error_code", str));
        long j = bundle.getLong(C3102d.m2640L("bytes_downloaded", str));
        long j2 = bundle.getLong(C3102d.m2640L("total_bytes_to_download", str));
        synchronized (c3245r0) {
            Double d = (Double) c3245r0.f10948a.get(str);
            doubleValue = d == null ? (char) 0 : d.doubleValue();
        }
        long j3 = bundle.getLong(C3102d.m2640L("pack_version", str));
        long j4 = bundle.getLong(C3102d.m2640L("pack_base_version", str));
        int i3 = 4;
        int i4 = zza;
        if (zza == 4) {
            if (j4 != 0 && j4 != j3) {
                i = 2;
                return m4477h(str, i3, i2, j, j2, doubleValue, i, bundle.getString(C3102d.m2640L("pack_version_tag", str), String.valueOf(bundle.getInt("app_version_code"))), c3246r1.m2513a(str));
            }
            i4 = 4;
        }
        i3 = i4;
        i = 1;
        return m4477h(str, i3, i2, j, j2, doubleValue, i, bundle.getString(C3102d.m2640L("pack_version_tag", str), String.valueOf(bundle.getInt("app_version_code"))), c3246r1.m2513a(str));
    }

    /* renamed from: a */
    public abstract long mo2572a();

    /* renamed from: b */
    public abstract int mo2571b();

    /* renamed from: c */
    public abstract String mo2570c();

    /* renamed from: d */
    public abstract int mo2569d();

    /* renamed from: e */
    public abstract long mo2568e();

    /* renamed from: f */
    public abstract int mo2567f();

    /* renamed from: g */
    public abstract int mo2566g();

    /* renamed from: j */
    public abstract String mo2565j();

    /* renamed from: k */
    public abstract String mo2564k();
}
