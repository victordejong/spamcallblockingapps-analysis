package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ce.class */
final class ce {
    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"CommitPrefEdits"})
    public static void a(Context context, String str, String str2, String str3) {
        final SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putString(str2, str3);
        if (Build.VERSION.SDK_INT >= 9) {
            edit.apply();
        } else {
            new Thread(new Runnable() { // from class: com.google.android.gms.tagmanager.ce.1
                @Override // java.lang.Runnable
                public final void run() {
                    edit.commit();
                }
            }).start();
        }
    }
}
