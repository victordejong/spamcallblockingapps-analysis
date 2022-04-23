package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbt.class */
public final class zzbbt {
    /* renamed from: a */
    public static Context m15848a(Context context) throws zzbbv {
        return m15846b(context).m16995a();
    }

    /* renamed from: a */
    public static <T> T m15847a(Context context, String str, zzbbs<IBinder, T> zzbbsVar) throws zzbbv {
        try {
            return zzbbsVar.apply(m15846b(context).m16988a(str));
        } catch (Exception e) {
            throw new zzbbv(e);
        }
    }

    /* renamed from: b */
    public static DynamiteModule m15846b(Context context) throws zzbbv {
        try {
            return DynamiteModule.m16993a(context, DynamiteModule.f23599i, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzbbv(e);
        }
    }
}
