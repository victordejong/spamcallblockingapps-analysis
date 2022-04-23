package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbbz.class */
public abstract class zzbbz extends TextureView implements abe {

    /* renamed from: b  reason: collision with root package name */
    protected final aas f28605b = new aas();

    /* renamed from: c  reason: collision with root package name */
    protected final abc f28606c;

    public zzbbz(Context context) {
        super(context);
        this.f28606c = new abc(context, this);
    }

    public abstract String a();

    public abstract void a(float f, float f2);

    public abstract void a(int i);

    public abstract void a(aak aakVar);

    public void a(String str, String[] strArr) {
        setVideoPath(str);
    }

    public abstract void b();

    public void b(int i) {
    }

    public abstract void c();

    public void c(int i) {
    }

    public abstract void d();

    public void d(int i) {
    }

    public abstract int e();

    public void e(int i) {
    }

    public abstract int f();

    public void f(int i) {
    }

    public abstract int g();

    public abstract int h();

    public abstract long i();

    public abstract long j();

    public abstract long k();

    public abstract int l();

    public abstract void m();

    public abstract void setVideoPath(String str);
}
