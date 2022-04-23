package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.l.a.a.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/h.class */
public abstract class h<T extends Animator> {

    /* renamed from: b  reason: collision with root package name */
    protected i f30764b;

    /* renamed from: c  reason: collision with root package name */
    protected final float[] f30765c;

    /* renamed from: d  reason: collision with root package name */
    protected final int[] f30766d;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(int i) {
        this.f30765c = new float[i * 2];
        this.f30766d = new int[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    public abstract void a(b.a aVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(i iVar) {
        this.f30764b = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    public abstract void d();

    public abstract void e();
}
