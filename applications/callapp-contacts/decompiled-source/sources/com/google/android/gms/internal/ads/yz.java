package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yz.class */
public final class yz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static DynamiteModule a(Context context) throws zzbap {
        try {
            return DynamiteModule.a(context, DynamiteModule.f22980a, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzbap(e);
        }
    }

    public static <T> T a(Context context, String str, zb<IBinder, T> zbVar) throws zzbap {
        try {
            return zbVar.a(a(context).a(str));
        } catch (Exception e) {
            throw new zzbap(e);
        }
    }
}
