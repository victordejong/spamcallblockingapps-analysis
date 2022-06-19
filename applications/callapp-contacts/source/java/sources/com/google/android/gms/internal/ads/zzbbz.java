package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbbz.class */
public abstract class zzbbz extends TextureView implements abe {

    /* renamed from: b */
    protected final aas f50169b = new aas();

    /* renamed from: c */
    protected final abc f50170c;

    public zzbbz(Context context) {
        super(context);
        this.f50170c = new abc(context, this);
    }

    /* renamed from: a */
    public abstract String mo13849a();

    /* renamed from: a */
    public abstract void mo13848a(float f, float f2);

    /* renamed from: a */
    public abstract void mo13846a(int i);

    /* renamed from: a */
    public abstract void mo13843a(aak aakVar);

    /* renamed from: a */
    public void mo13841a(String str, String[] strArr) {
        setVideoPath(str);
    }

    /* renamed from: b */
    public abstract void mo13839b();

    /* renamed from: b */
    public void mo13838b(int i) {
    }

    /* renamed from: c */
    public abstract void mo13835c();

    /* renamed from: c */
    public void mo13834c(int i) {
    }

    /* renamed from: d */
    public abstract void mo13832d();

    /* renamed from: d */
    public void mo13831d(int i) {
    }

    /* renamed from: e */
    public abstract int mo13830e();

    /* renamed from: e */
    public void mo13829e(int i) {
    }

    /* renamed from: f */
    public abstract int mo13828f();

    /* renamed from: f */
    public void mo13827f(int i) {
    }

    /* renamed from: g */
    public abstract int mo13826g();

    /* renamed from: h */
    public abstract int mo13824h();

    /* renamed from: i */
    public abstract long mo13823i();

    /* renamed from: j */
    public abstract long mo13822j();

    /* renamed from: k */
    public abstract long mo13821k();

    /* renamed from: l */
    public abstract int mo13820l();

    /* renamed from: m */
    public abstract void mo13819m();

    public abstract void setVideoPath(String str);
}
