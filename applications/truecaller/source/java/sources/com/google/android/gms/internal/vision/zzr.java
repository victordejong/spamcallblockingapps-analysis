package com.google.android.gms.internal.vision;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.vision.C2072L;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzr.class */
public final class zzr {
    public static DynamiteModule zza(Context context, String str, boolean z) {
        DynamiteModule dynamiteModule;
        String format = String.format("%s.%s", "com.google.android.gms.vision", str);
        if (!z) {
            format = "com.google.android.gms.vision.dynamite";
        }
        try {
            C2072L.m38491d("Loading module %s", format);
            dynamiteModule = DynamiteModule.m38737d(context, z ? DynamiteModule.f6176b : DynamiteModule.f6179e, format);
        } catch (DynamiteModule.LoadingException e) {
            C2072L.m38488e(e, "Error loading module %s optional module %b", format, Boolean.valueOf(z));
            dynamiteModule = null;
        }
        return dynamiteModule;
    }

    public static boolean zza(Context context, String str) {
        return DynamiteModule.m38740a(context, str) > DynamiteModule.m38739b(context, "com.google.android.gms.vision.dynamite");
    }
}
