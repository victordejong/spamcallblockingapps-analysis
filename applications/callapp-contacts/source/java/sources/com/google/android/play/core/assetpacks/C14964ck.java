package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* renamed from: com.google.android.play.core.assetpacks.ck */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ck.class */
public final class C14964ck {

    /* renamed from: a */
    final Context f54633a;

    public C14964ck(Context context) {
        this.f54633a = context;
    }

    /* renamed from: a */
    public static String m9703a(Context context) {
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
}
