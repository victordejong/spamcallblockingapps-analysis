package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.ads.internal.AbstractC1384k;
import com.google.android.gms.ads.internal.C1378a;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.ut */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ut.class */
public final class C1982ut {
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, com.google.android.gms.internal.ads.jt] */
    /* renamed from: a */
    public static final jt m5347a(Context context, C2058yu c2058yu, String str, boolean z, boolean z2, zh2 zh2Var, C1843m4 c1843m4, zzbbq zzbbqVar, C1678c4 c1678c4, AbstractC1384k abstractC1384k, C1378a c1378a, wv2 wv2Var, al1 al1Var, dl1 dl1Var) {
        C1842m3.m6600a(context);
        try {
            st stVar = new st(context, c2058yu, str, z, z2, zh2Var, c1843m4, zzbbqVar, (C1678c4) null, abstractC1384k, c1378a, wv2Var, al1Var, dl1Var);
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            ?? zza = stVar.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return zza;
        } catch (Throwable th) {
            throw new zzbgq("Webview initialization failed.", th);
        }
    }

    /* renamed from: b */
    public static final rz1<jt> m5346b(Context context, zzbbq zzbbqVar, String str, zh2 zh2Var, C1378a c1378a) {
        return kz1.h(kz1.a((Object) null), new rt(context, zh2Var, zzbbqVar, c1378a, str), C2073zo.f9414e);
    }
}
