package com.google.android.material.progressindicator;

import android.animation.Animator;
import p020b.p074t.p075a.p076a.AbstractC1793b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/h.class */
public abstract class AbstractC8239h<T extends Animator> {

    /* renamed from: a */
    protected C8240i f37138a;

    /* renamed from: b */
    protected final float[] f37139b;

    /* renamed from: c */
    protected final int[] f37140c;

    public AbstractC8239h(int i) {
        this.f37139b = new float[i * 2];
        this.f37140c = new int[i];
    }

    /* renamed from: a */
    public abstract void mo4314a();

    /* renamed from: b */
    public float m4348b(int i, int i2, int i3) {
        return (i - i2) / i3;
    }

    /* renamed from: c */
    public abstract void mo4313c();

    /* renamed from: d */
    public abstract void mo4312d(AbstractC1793b abstractC1793b);

    /* renamed from: e */
    public void m4347e(C8240i c8240i) {
        this.f37138a = c8240i;
    }

    /* renamed from: f */
    public abstract void mo4311f();

    /* renamed from: g */
    public abstract void mo4310g();

    /* renamed from: h */
    public abstract void mo4309h();
}
