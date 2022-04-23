package com.google.android.material.progressindicator;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static float f30745a = 1.0f;

    public static float a(ContentResolver contentResolver) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) : Build.VERSION.SDK_INT == 16 ? Settings.System.getFloat(contentResolver, "animator_duration_scale", 1.0f) : f30745a;
    }
}
