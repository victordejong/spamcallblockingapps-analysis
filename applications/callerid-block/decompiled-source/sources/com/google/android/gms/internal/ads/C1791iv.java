package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.i;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.iv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iv.class */
public final class C1791iv {

    /* renamed from: a */
    private final zzbbq f6861a;

    /* renamed from: b */
    private final Context f6862b;

    /* renamed from: c */
    private final WeakReference<Context> f6863c;

    /* synthetic */ C1791iv(C1778hv hvVar, C1762gv gvVar) {
        zzbbq zzbbqVar;
        Context context;
        WeakReference<Context> weakReference;
        zzbbqVar = hvVar.f6788a;
        this.f6861a = zzbbqVar;
        context = hvVar.f6789b;
        this.f6862b = context;
        weakReference = hvVar.f6790c;
        this.f6863c = weakReference;
    }

    /* renamed from: a */
    final Context m7076a() {
        return this.f6862b;
    }

    /* renamed from: b */
    final WeakReference<Context> m7075b() {
        return this.f6863c;
    }

    /* renamed from: c */
    final zzbbq m7074c() {
        return this.f6861a;
    }

    /* renamed from: d */
    final String m7073d() {
        return C1407r.m8920d().m8788J(this.f6862b, this.f6861a.b);
    }

    /* renamed from: e */
    public final zh2 m7072e() {
        return new zh2(new i(this.f6862b, this.f6861a));
    }
}
