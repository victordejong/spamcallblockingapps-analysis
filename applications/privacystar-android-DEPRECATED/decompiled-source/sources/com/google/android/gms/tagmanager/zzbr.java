package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.os.Build;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbr.class */
final class zzbr {
    private static int version() {
        int i;
        try {
            i = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(Build.VERSION.SDK);
            zzdi.m329e(valueOf.length() != 0 ? "Invalid version number: ".concat(valueOf) : new String("Invalid version number: "));
            i = 0;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(9)
    public static boolean zzdn(String str) {
        if (version() < 9) {
            return false;
        }
        File file = new File(str);
        file.setReadable(false, false);
        file.setWritable(false, false);
        file.setReadable(true, true);
        file.setWritable(true, true);
        return true;
    }
}
