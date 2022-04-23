package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ck.class */
final class ck {

    /* renamed from: a  reason: collision with root package name */
    final Context f31248a;

    public ck(Context context) {
        this.f31248a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            return bundle.getString("local_testing_dir");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
