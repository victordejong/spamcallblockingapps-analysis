package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.p057l.p058a.p059a.AbstractC1196b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/h.class */
public abstract class AbstractC14721h<T extends Animator> {

    /* renamed from: b */
    protected C14722i f53706b;

    /* renamed from: c */
    protected final float[] f53707c;

    /* renamed from: d */
    protected final int[] f53708d;

    public AbstractC14721h(int i) {
        this.f53707c = new float[i * 2];
        this.f53708d = new int[i];
    }

    /* renamed from: a */
    public abstract void mo10291a();

    /* renamed from: a */
    public abstract void mo10289a(AbstractC1196b.AbstractC1197a abstractC1197a);

    /* renamed from: a */
    public final void m10315a(C14722i c14722i) {
        this.f53706b = c14722i;
    }

    /* renamed from: b */
    public abstract void mo10286b();

    /* renamed from: c */
    public abstract void mo10284c();

    /* renamed from: d */
    public abstract void mo10282d();

    /* renamed from: e */
    public abstract void mo10280e();
}
