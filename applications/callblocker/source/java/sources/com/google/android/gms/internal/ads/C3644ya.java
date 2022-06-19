package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* renamed from: com.google.android.gms.internal.ads.ya */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ya.class */
public final class C3644ya {
    /* renamed from: a */
    public static Context m6756a(Context context) {
        return m6754b(context).m13793a();
    }

    /* renamed from: a */
    public static <T> T m6755a(Context context, String str, AbstractC3646yc<IBinder, T> abstractC3646yc) {
        try {
            return abstractC3646yc.mo6742a(m6754b(context).m13786a(str));
        } catch (Exception e) {
            throw new zzazx(e);
        }
    }

    /* renamed from: b */
    private static DynamiteModule m6754b(Context context) {
        try {
            return DynamiteModule.m13791a(context, DynamiteModule.f7550a, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzazx(e);
        }
    }
}
