package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import java.util.Arrays;
import p020b.p062n.p063a.p064a.C1754b;
import p020b.p074t.p075a.p076a.AbstractC1793b;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* renamed from: com.google.android.material.progressindicator.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/k.class */
public final class C8242k extends AbstractC8239h<ObjectAnimator> {

    /* renamed from: d */
    private static final Property<C8242k, Float> f37146d = new C8244b(Float.class, "animationFraction");

    /* renamed from: e */
    private ObjectAnimator f37147e;

    /* renamed from: g */
    private final AbstractC8225b f37149g;

    /* renamed from: i */
    private boolean f37151i;

    /* renamed from: j */
    private float f37152j;

    /* renamed from: h */
    private int f37150h = 1;

    /* renamed from: f */
    private C1754b f37148f = new C1754b();

    /* renamed from: com.google.android.material.progressindicator.k$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/k$a.class */
    public class C8243a extends AnimatorListenerAdapter {
        C8243a() {
            C8242k.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C8242k c8242k = C8242k.this;
            c8242k.f37150h = (c8242k.f37150h + 1) % C8242k.this.f37149g.f37090c.length;
            C8242k.this.f37151i = true;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.k$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/k$b.class */
    static final class C8244b extends Property<C8242k, Float> {
        C8244b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(C8242k c8242k) {
            return Float.valueOf(c8242k.m4322n());
        }

        /* renamed from: b */
        public void set(C8242k c8242k, Float f) {
            c8242k.m4318r(f.floatValue());
        }
    }

    public C8242k(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f37149g = linearProgressIndicatorSpec;
    }

    /* renamed from: n */
    public float m4322n() {
        return this.f37152j;
    }

    /* renamed from: o */
    private void m4321o() {
        if (this.f37147e == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f37146d, 0.0f, 1.0f);
            this.f37147e = ofFloat;
            ofFloat.setDuration(333L);
            this.f37147e.setInterpolator(null);
            this.f37147e.setRepeatCount(-1);
            this.f37147e.addListener(new C8243a());
        }
    }

    /* renamed from: p */
    private void m4320p() {
        if (!this.f37151i || this.f37139b[3] >= 1.0f) {
            return;
        }
        int[] iArr = this.f37140c;
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = C1909a.m28718a(this.f37149g.f37090c[this.f37150h], this.f37138a.getAlpha());
        this.f37151i = false;
    }

    /* renamed from: s */
    private void m4317s(int i) {
        this.f37139b[0] = 0.0f;
        float m4348b = m4348b(i, 0, 667);
        float[] fArr = this.f37139b;
        float interpolation = this.f37148f.getInterpolation(m4348b);
        fArr[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr2 = this.f37139b;
        float interpolation2 = this.f37148f.getInterpolation(m4348b + 0.49925038f);
        fArr2[4] = interpolation2;
        fArr2[3] = interpolation2;
        this.f37139b[5] = 1.0f;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: a */
    public void mo4314a() {
        ObjectAnimator objectAnimator = this.f37147e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: c */
    public void mo4313c() {
        m4319q();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: d */
    public void mo4312d(AbstractC1793b abstractC1793b) {
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: f */
    public void mo4311f() {
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: g */
    public void mo4310g() {
        m4321o();
        m4319q();
        this.f37147e.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: h */
    public void mo4309h() {
    }

    /* renamed from: q */
    void m4319q() {
        this.f37151i = true;
        this.f37150h = 1;
        Arrays.fill(this.f37140c, C1909a.m28718a(this.f37149g.f37090c[0], this.f37138a.getAlpha()));
    }

    /* renamed from: r */
    void m4318r(float f) {
        this.f37152j = f;
        m4317s((int) (f * 333.0f));
        m4320p();
        this.f37138a.invalidateSelf();
    }
}
