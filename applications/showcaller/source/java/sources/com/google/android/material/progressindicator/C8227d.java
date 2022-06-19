package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import p020b.p062n.p063a.p064a.C1754b;
import p020b.p074t.p075a.p076a.AbstractC1793b;
import p078c.p084c.p085a.p096b.p097m.C1899c;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* renamed from: com.google.android.material.progressindicator.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/d.class */
public final class C8227d extends AbstractC8239h<ObjectAnimator> {

    /* renamed from: d */
    private static final int[] f37098d = {0, 1350, 2700, 4050};

    /* renamed from: e */
    private static final int[] f37099e = {667, 2017, 3367, 4717};

    /* renamed from: f */
    private static final int[] f37100f = {1000, 2350, 3700, 5050};

    /* renamed from: g */
    private static final Property<C8227d, Float> f37101g = new C8230c(Float.class, "animationFraction");

    /* renamed from: h */
    private static final Property<C8227d, Float> f37102h = new C8231d(Float.class, "completeEndFraction");

    /* renamed from: i */
    private ObjectAnimator f37103i;

    /* renamed from: j */
    private ObjectAnimator f37104j;

    /* renamed from: l */
    private final AbstractC8225b f37106l;

    /* renamed from: n */
    private float f37108n;

    /* renamed from: o */
    private float f37109o;

    /* renamed from: m */
    private int f37107m = 0;

    /* renamed from: p */
    AbstractC1793b f37110p = null;

    /* renamed from: k */
    private final C1754b f37105k = new C1754b();

    /* renamed from: com.google.android.material.progressindicator.d$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/d$a.class */
    public class C8228a extends AnimatorListenerAdapter {
        C8228a() {
            C8227d.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C8227d c8227d = C8227d.this;
            c8227d.f37107m = (c8227d.f37107m + 4) % C8227d.this.f37106l.f37090c.length;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/d$b.class */
    public class C8229b extends AnimatorListenerAdapter {
        C8229b() {
            C8227d.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            C8227d.this.mo4314a();
            C8227d c8227d = C8227d.this;
            c8227d.f37110p.mo4408a(c8227d.f37138a);
        }
    }

    /* renamed from: com.google.android.material.progressindicator.d$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/d$c.class */
    static final class C8230c extends Property<C8227d, Float> {
        C8230c(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(C8227d c8227d) {
            return Float.valueOf(c8227d.m4388o());
        }

        /* renamed from: b */
        public void set(C8227d c8227d, Float f) {
            c8227d.m4383t(f.floatValue());
        }
    }

    /* renamed from: com.google.android.material.progressindicator.d$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/d$d.class */
    static final class C8231d extends Property<C8227d, Float> {
        C8231d(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(C8227d c8227d) {
            return Float.valueOf(c8227d.m4387p());
        }

        /* renamed from: b */
        public void set(C8227d c8227d, Float f) {
            c8227d.m4382u(f.floatValue());
        }
    }

    public C8227d(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f37106l = circularProgressIndicatorSpec;
    }

    /* renamed from: o */
    public float m4388o() {
        return this.f37108n;
    }

    /* renamed from: p */
    public float m4387p() {
        return this.f37109o;
    }

    /* renamed from: q */
    private void m4386q() {
        if (this.f37103i == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f37101g, 0.0f, 1.0f);
            this.f37103i = ofFloat;
            ofFloat.setDuration(5400L);
            this.f37103i.setInterpolator(null);
            this.f37103i.setRepeatCount(-1);
            this.f37103i.addListener(new C8228a());
        }
        if (this.f37104j == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f37102h, 0.0f, 1.0f);
            this.f37104j = ofFloat2;
            ofFloat2.setDuration(333L);
            this.f37104j.setInterpolator(this.f37105k);
            this.f37104j.addListener(new C8229b());
        }
    }

    /* renamed from: r */
    private void m4385r(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            float m4348b = m4348b(i, f37100f[i2], 333);
            if (m4348b >= 0.0f && m4348b <= 1.0f) {
                int i3 = this.f37107m;
                int[] iArr = this.f37106l.f37090c;
                int length = (i2 + i3) % iArr.length;
                int length2 = iArr.length;
                this.f37140c[0] = C1899c.m28747b().evaluate(this.f37105k.getInterpolation(m4348b), Integer.valueOf(C1909a.m28718a(iArr[length], this.f37138a.getAlpha())), Integer.valueOf(C1909a.m28718a(this.f37106l.f37090c[(length + 1) % length2], this.f37138a.getAlpha()))).intValue();
                return;
            }
        }
    }

    /* renamed from: u */
    public void m4382u(float f) {
        this.f37109o = f;
    }

    /* renamed from: v */
    private void m4381v(int i) {
        float[] fArr = this.f37139b;
        float f = this.f37108n;
        fArr[0] = (f * 1520.0f) - 20.0f;
        fArr[1] = f * 1520.0f;
        for (int i2 = 0; i2 < 4; i2++) {
            float m4348b = m4348b(i, f37098d[i2], 667);
            float[] fArr2 = this.f37139b;
            fArr2[1] = fArr2[1] + (this.f37105k.getInterpolation(m4348b) * 250.0f);
            float m4348b2 = m4348b(i, f37099e[i2], 667);
            float[] fArr3 = this.f37139b;
            fArr3[0] = fArr3[0] + (this.f37105k.getInterpolation(m4348b2) * 250.0f);
        }
        float[] fArr4 = this.f37139b;
        fArr4[0] = fArr4[0] + ((fArr4[1] - fArr4[0]) * this.f37109o);
        fArr4[0] = fArr4[0] / 360.0f;
        fArr4[1] = fArr4[1] / 360.0f;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: a */
    public void mo4314a() {
        ObjectAnimator objectAnimator = this.f37103i;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: c */
    public void mo4313c() {
        m4384s();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: d */
    public void mo4312d(AbstractC1793b abstractC1793b) {
        this.f37110p = abstractC1793b;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: f */
    public void mo4311f() {
        if (this.f37104j.isRunning()) {
            return;
        }
        if (this.f37138a.isVisible()) {
            this.f37104j.start();
        } else {
            mo4314a();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: g */
    public void mo4310g() {
        m4386q();
        m4384s();
        this.f37103i.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: h */
    public void mo4309h() {
        this.f37110p = null;
    }

    /* renamed from: s */
    void m4384s() {
        this.f37107m = 0;
        this.f37140c[0] = C1909a.m28718a(this.f37106l.f37090c[0], this.f37138a.getAlpha());
        this.f37109o = 0.0f;
    }

    /* renamed from: t */
    void m4383t(float f) {
        this.f37108n = f;
        int i = (int) (f * 5400.0f);
        m4381v(i);
        m4385r(i);
        this.f37138a.invalidateSelf();
    }
}
