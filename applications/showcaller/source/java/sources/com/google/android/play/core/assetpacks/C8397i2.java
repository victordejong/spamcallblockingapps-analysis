package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* renamed from: com.google.android.play.core.assetpacks.i2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/i2.class */
public final class C8397i2 {

    /* renamed from: a */
    private final Context f37796a;

    public C8397i2(Context context) {
        this.f37796a = context;
    }

    /* renamed from: b */
    public static String m3731b(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return bundle.getString("local_testing_dir");
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final Context m3732a() {
        return this.f37796a;
    }
}
