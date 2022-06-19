package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.am */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/am.class */
public final class C15147am {

    /* renamed from: a */
    final Context f54947a;

    public C15147am(Context context) {
        this.f54947a = context;
    }

    /* renamed from: a */
    public static File m9387a(Context context) {
        String string;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null && (string = bundle.getString("local_testing_dir")) != null) {
                return new File(context.getExternalFilesDir(null), string);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
