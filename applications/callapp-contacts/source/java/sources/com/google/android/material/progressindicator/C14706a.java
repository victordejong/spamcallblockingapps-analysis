package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
/* renamed from: com.google.android.material.progressindicator.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/a.class */
public final class C14706a {

    /* renamed from: a */
    private static float f53655a = 1.0f;

    /* renamed from: a */
    public static float m10344a(ContentResolver contentResolver) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) : Build.VERSION.SDK_INT == 16 ? Settings.System.getFloat(contentResolver, "animator_duration_scale", 1.0f) : f53655a;
    }
}
