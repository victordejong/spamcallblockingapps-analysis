package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
@TargetApi(14)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcii.class */
public abstract class zzcii extends TextureView implements nk0 {

    /* renamed from: d */
    protected final dk0 f33878d = new dk0();

    /* renamed from: e */
    protected final ok0 f33879e;

    public zzcii(Context context) {
        super(context);
        this.f33879e = new ok0(context, this);
    }

    /* renamed from: A */
    public void mo8020A(int i) {
    }

    /* renamed from: B */
    public void mo8019B(int i) {
    }

    /* renamed from: b */
    public void mo7992b(int i) {
    }

    /* renamed from: f */
    public void mo7987f(int i) {
    }

    /* renamed from: h */
    public abstract String mo7985h();

    /* renamed from: i */
    public abstract void mo7984i(rj0 rj0Var);

    /* renamed from: j */
    public abstract void mo7983j(String str);

    /* renamed from: k */
    public abstract void mo7982k();

    /* renamed from: l */
    public abstract void mo7981l();

    /* renamed from: m */
    public abstract void mo7980m();

    /* renamed from: n */
    public abstract int mo7979n();

    /* renamed from: o */
    public abstract int mo7978o();

    /* renamed from: p */
    public abstract void mo7977p(int i);

    /* renamed from: q */
    public abstract void mo7976q(float f, float f2);

    /* renamed from: r */
    public abstract int mo7975r();

    /* renamed from: s */
    public abstract int mo7974s();

    /* renamed from: u */
    public abstract long mo7972u();

    /* renamed from: v */
    public abstract long mo7971v();

    /* renamed from: w */
    public abstract long mo7970w();

    /* renamed from: x */
    public abstract int mo7969x();

    /* renamed from: y */
    public void mo7968y(String str, String[] strArr) {
        mo7983j(str);
    }

    /* renamed from: z */
    public void mo7967z(int i) {
    }

    public abstract void zzt();
}
