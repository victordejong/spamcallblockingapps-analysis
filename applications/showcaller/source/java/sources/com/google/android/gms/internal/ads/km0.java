package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.api.AbstractC6006h;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/km0.class */
public abstract class km0 implements AbstractC6006h {

    /* renamed from: d */
    protected final Context f25256d;

    /* renamed from: e */
    protected final String f25257e;

    /* renamed from: f */
    protected final WeakReference<kk0> f25258f;

    public km0(kk0 kk0Var) {
        Context context = kk0Var.getContext();
        this.f25256d = context;
        this.f25257e = C5667s.m18160d().m18092P(context, kk0Var.zzt().f33854d);
        this.f25258f = new WeakReference<>(kk0Var);
    }

    /* renamed from: v */
    public static /* synthetic */ void m13851v(km0 km0Var, String str, Map map) {
        kk0 kk0Var = km0Var.f25258f.get();
        if (kk0Var != null) {
            kk0Var.mo7959D0("onPrecacheEvent", map);
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC6006h
    /* renamed from: b */
    public void mo10626b() {
    }

    /* renamed from: h */
    public abstract boolean mo10625h(String str);

    /* renamed from: i */
    public boolean mo10624i(String str, String[] strArr) {
        return mo10625h(str);
    }

    /* renamed from: j */
    public boolean mo10623j(String str, String[] strArr, bm0 bm0Var) {
        return mo10625h(str);
    }

    /* renamed from: k */
    public void mo10622k(int i) {
    }

    /* renamed from: l */
    public void mo10621l(int i) {
    }

    /* renamed from: m */
    public void mo10620m(int i) {
    }

    /* renamed from: n */
    public void mo10619n(int i) {
    }

    /* renamed from: o */
    public abstract void mo10618o();

    /* renamed from: p */
    public final void m13856p(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        xh0.f32048a.post(new em0(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    /* renamed from: q */
    public final void m13855q(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        xh0.f32048a.post(new fm0(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    /* renamed from: r */
    public final void m13854r(String str, String str2, int i) {
        xh0.f32048a.post(new gm0(this, str, str2, i));
    }

    /* renamed from: s */
    public final void m13853s(String str, String str2, long j) {
        xh0.f32048a.post(new hm0(this, str, str2, j));
    }

    /* renamed from: u */
    public final void m13852u(String str, String str2, String str3, String str4) {
        xh0.f32048a.post(new im0(this, str, str2, str3, str4));
    }
}
