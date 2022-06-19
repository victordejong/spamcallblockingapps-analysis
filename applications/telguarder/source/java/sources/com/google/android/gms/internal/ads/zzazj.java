package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzazj.class */
public final class zzazj {
    public static <T> T zza(Context context, String str, zzazm<IBinder, T> zzazmVar) throws zzazl {
        try {
            return zzazmVar.apply(zzbu(context).instantiate(str));
        } catch (Exception e) {
            throw new zzazl(e);
        }
    }

    public static Context zzbt(Context context) throws zzazl {
        return zzbu(context).getModuleContext();
    }

    private static DynamiteModule zzbu(Context context) throws zzazl {
        try {
            return DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzazl(e);
        }
    }
}
