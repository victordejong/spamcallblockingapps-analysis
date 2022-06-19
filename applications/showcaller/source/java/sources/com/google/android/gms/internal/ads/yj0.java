package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yj0.class */
public final class yj0 {

    /* renamed from: a */
    private final Context f32522a;

    /* renamed from: b */
    private final kk0 f32523b;

    /* renamed from: c */
    private final ViewGroup f32524c;

    /* renamed from: d */
    private zzcip f32525d;

    public yj0(Context context, ViewGroup viewGroup, wn0 wn0Var) {
        this.f32522a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f32524c = viewGroup;
        this.f32523b = wn0Var;
        this.f32525d = null;
    }

    /* renamed from: a */
    public final void m8815a(int i, int i2, int i3, int i4) {
        C6155o.m17023e("The underlay may only be modified from the UI thread.");
        zzcip zzcipVar = this.f32525d;
        if (zzcipVar != null) {
            zzcipVar.m8026u(i, i2, i3, i4);
        }
    }

    /* renamed from: b */
    public final void m8814b(int i, int i2, int i3, int i4, int i5, boolean z, jk0 jk0Var) {
        if (this.f32525d != null) {
            return;
        }
        C6938rw.m11264a(this.f32523b.mo7901k().m9038c(), this.f32523b.zzi(), "vpr2");
        Context context = this.f32522a;
        kk0 kk0Var = this.f32523b;
        zzcip zzcipVar = new zzcip(context, kk0Var, i5, z, kk0Var.mo7901k().m9038c(), jk0Var);
        this.f32525d = zzcipVar;
        this.f32524c.addView(zzcipVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f32525d.m8026u(i, i2, i3, i4);
        this.f32523b.mo7916b0(false);
    }

    /* renamed from: c */
    public final zzcip m8813c() {
        C6155o.m17023e("getAdVideoUnderlay must be called from the UI thread.");
        return this.f32525d;
    }

    /* renamed from: d */
    public final void m8812d() {
        C6155o.m17023e("onPause must be called from the UI thread.");
        zzcip zzcipVar = this.f32525d;
        if (zzcipVar != null) {
            zzcipVar.m8022y();
        }
    }

    /* renamed from: e */
    public final void m8811e() {
        C6155o.m17023e("onDestroy must be called from the UI thread.");
        zzcip zzcipVar = this.f32525d;
        if (zzcipVar != null) {
            zzcipVar.m8034m();
            this.f32524c.removeView(this.f32525d);
            this.f32525d = null;
        }
    }

    /* renamed from: f */
    public final void m8810f(int i) {
        C6155o.m17023e("setPlayerBackgroundColor must be called from the UI thread.");
        zzcip zzcipVar = this.f32525d;
        if (zzcipVar != null) {
            zzcipVar.m8027t(i);
        }
    }
}
