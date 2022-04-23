package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/am.class */
public final class am {

    /* renamed from: a  reason: collision with root package name */
    final Context f31511a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(Context context) {
        this.f31511a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File a(Context context) {
        String string;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || (string = bundle.getString("local_testing_dir")) == null) {
                return null;
            }
            return new File(context.getExternalFilesDir(null), string);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
