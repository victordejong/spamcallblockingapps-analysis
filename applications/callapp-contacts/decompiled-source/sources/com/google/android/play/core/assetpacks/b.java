package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.google.android.play.core.internal.bl;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/b.class */
public abstract class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(Bundle bundle, String str, ap apVar, u uVar) {
        int a2 = uVar.a(bundle.getInt(bl.a("status", str)));
        int i = bundle.getInt(bl.a("error_code", str));
        long j = bundle.getLong(bl.a("bytes_downloaded", str));
        long j2 = bundle.getLong(bl.a("total_bytes_to_download", str));
        double b2 = apVar.b(str);
        long j3 = bundle.getLong(bl.a("pack_version", str));
        long j4 = bundle.getLong(bl.a("pack_base_version", str));
        int i2 = 1;
        if (a2 == 4) {
            i2 = 1;
            if (j4 != 0) {
                i2 = 1;
                if (j4 != j3) {
                    i2 = 2;
                }
            }
        }
        return a(str, a2, i, j, j2, b2, i2, bundle.getString(bl.a("pack_version_tag", str), ""));
    }

    public static b a(String str, int i, int i2, long j, long j2, double d2, int i3, String str2) {
        return new aa(str, i, i2, j, j2, (int) Math.rint(100.0d * d2), i3, str2);
    }

    public abstract String a();

    public abstract int b();

    public abstract int c();

    public abstract long d();

    public abstract long e();

    public abstract int f();

    public abstract int g();

    public abstract String h();
}
