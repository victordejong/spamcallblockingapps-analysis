package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgx.class */
public final class zzcgx {
    public static <T> T zza(Context context, String str, zzcgv<IBinder, T> zzcgvVar) throws zzcgw {
        try {
            return zzcgvVar.zza(zzc(context).m38738c(str));
        } catch (Exception e) {
            throw new zzcgw(e);
        }
    }

    public static Context zzb(Context context) throws zzcgw {
        return zzc(context).f6189a;
    }

    private static DynamiteModule zzc(Context context) throws zzcgw {
        try {
            return DynamiteModule.m38737d(context, DynamiteModule.f6176b, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzcgw(e);
        }
    }
}
