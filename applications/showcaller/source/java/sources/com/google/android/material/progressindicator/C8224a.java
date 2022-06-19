package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
/* renamed from: com.google.android.material.progressindicator.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/a.class */
public class C8224a {

    /* renamed from: a */
    private static float f37087a = 1.0f;

    /* renamed from: a */
    public float m4402a(ContentResolver contentResolver) {
        int i = Build.VERSION.SDK_INT;
        return i >= 17 ? Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) : i == 16 ? Settings.System.getFloat(contentResolver, "animator_duration_scale", 1.0f) : f37087a;
    }
}
