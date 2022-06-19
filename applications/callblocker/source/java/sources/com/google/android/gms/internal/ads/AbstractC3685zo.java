package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.zo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zo.class */
public abstract class AbstractC3685zo extends TextureView implements aai {

    /* renamed from: a */
    protected final C3695zy f17695a = new C3695zy();

    /* renamed from: b */
    protected final aaj f17696b;

    public AbstractC3685zo(Context context) {
        super(context);
        this.f17696b = new aaj(context, this);
    }

    /* renamed from: a */
    public abstract String mo6702a();

    /* renamed from: a */
    public abstract void mo6701a(float f, float f2);

    /* renamed from: a */
    public abstract void mo6700a(int i);

    /* renamed from: a */
    public abstract void mo6699a(AbstractC3682zl abstractC3682zl);

    /* renamed from: a */
    public void mo6698a(String str, String[] strArr) {
        setVideoPath(str);
    }

    /* renamed from: b */
    public abstract void mo6697b();

    /* renamed from: c */
    public abstract void mo6696c();

    /* renamed from: c */
    public void mo6695c(int i) {
    }

    /* renamed from: d */
    public abstract void mo6694d();

    /* renamed from: d */
    public void mo6693d(int i) {
    }

    /* renamed from: e */
    public abstract void mo6692e();

    /* renamed from: e */
    public void mo6691e(int i) {
    }

    /* renamed from: f */
    public void mo6690f(int i) {
    }

    /* renamed from: g */
    public void mo6689g(int i) {
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void setVideoPath(String str);
}
