package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* renamed from: com.google.android.gms.internal.ads.so */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/so.class */
public final class C1947so {
    /* renamed from: a */
    public static <T> T m5642a(Context context, String str, AbstractC1927ro<IBinder, T> roVar) {
        try {
            return roVar.m5892a(m5640c(context).m8180d(str));
        } catch (Exception e) {
            throw new zzbbn(e);
        }
    }

    /* renamed from: b */
    public static Context m5641b(Context context) {
        return m5640c(context).m8182b();
    }

    /* renamed from: c */
    private static DynamiteModule m5640c(Context context) {
        try {
            return DynamiteModule.m8179e(context, DynamiteModule.f5912b, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzbbn(e);
        }
    }
}
