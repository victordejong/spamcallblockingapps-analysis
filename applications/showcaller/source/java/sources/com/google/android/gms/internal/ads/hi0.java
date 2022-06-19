package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hi0.class */
public final class hi0 {
    /* renamed from: a */
    public static <T> T m14638a(Context context, String str, gi0<IBinder, T> gi0Var) {
        try {
            return gi0Var.mo10935a(m14636c(context).m16740d(str));
        } catch (Exception e) {
            throw new zzcgw(e);
        }
    }

    /* renamed from: b */
    public static Context m14637b(Context context) {
        return m14636c(context).m16742b();
    }

    /* renamed from: c */
    private static DynamiteModule m14636c(Context context) {
        try {
            return DynamiteModule.m16739e(context, DynamiteModule.f19758a, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzcgw(e);
        }
    }
}
