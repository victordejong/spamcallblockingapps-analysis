package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* renamed from: com.google.android.gms.internal.ads.yz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yz.class */
public final class C13086yz {
    /* renamed from: a */
    public static DynamiteModule m13905a(Context context) throws zzbap {
        try {
            return DynamiteModule.m18974a(context, DynamiteModule.f39671a, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzbap(e);
        }
    }

    /* renamed from: a */
    public static <T> T m13904a(Context context, String str, AbstractC13089zb<IBinder, T> abstractC13089zb) throws zzbap {
        try {
            return abstractC13089zb.mo13903a(m13905a(context).m18969a(str));
        } catch (Exception e) {
            throw new zzbap(e);
        }
    }
}
