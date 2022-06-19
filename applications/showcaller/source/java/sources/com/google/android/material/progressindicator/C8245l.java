package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import java.util.Arrays;
import p020b.p074t.p075a.p076a.AbstractC1793b;
import p020b.p074t.p075a.p076a.C1798d;
import p078c.p084c.p085a.p096b.C1885a;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* renamed from: com.google.android.material.progressindicator.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/l.class */
public final class C8245l extends AbstractC8239h<ObjectAnimator> {

    /* renamed from: d */
    private static final int[] f37154d = {533, 567, 850, 750};

    /* renamed from: e */
    private static final int[] f37155e = {1267, 1000, 333, 0};

    /* renamed from: f */
    private static final Property<C8245l, Float> f37156f = new C8247b(Float.class, "animationFraction");

    /* renamed from: g */
    private ObjectAnimator f37157g;

    /* renamed from: h */
    private final Interpolator[] f37158h;

    /* renamed from: i */
    private final AbstractC8225b f37159i;

    /* renamed from: k */
    private boolean f37161k;

    /* renamed from: l */
    private float f37162l;

    /* renamed from: m */
    private boolean f37163m;

    /* renamed from: j */
    private int f37160j = 0;

    /* renamed from: n */
    AbstractC1793b f37164n = null;

    /* renamed from: com.google.android.material.progressindicator.l$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/l$a.class */
    public class C8246a extends AnimatorListenerAdapter {
        C8246a() {
            C8245l.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (C8245l.this.f37163m) {
                C8245l.this.f37157g.setRepeatCount(-1);
                C8245l c8245l = C8245l.this;
                c8245l.f37164n.mo4408a(c8245l.f37138a);
                C8245l.this.f37163m = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C8245l c8245l = C8245l.this;
            c8245l.f37160j = (c8245l.f37160j + 1) % C8245l.this.f37159i.f37090c.length;
            C8245l.this.f37161k = true;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.l$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/l$b.class */
    static final class C8247b extends Property<C8245l, Float> {
        C8247b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(C8245l c8245l) {
            return Float.valueOf(c8245l.m4300q());
        }

        /* renamed from: b */
        public void set(C8245l c8245l, Float f) {
            c8245l.m4296u(f.floatValue());
        }
    }

    public C8245l(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f37159i = linearProgressIndicatorSpec;
        this.f37158h = new Interpolator[]{C1798d.m28881b(context, C1885a.linear_indeterminate_line1_head_interpolator), C1798d.m28881b(context, C1885a.linear_indeterminate_line1_tail_interpolator), C1798d.m28881b(context, C1885a.linear_indeterminate_line2_head_interpolator), C1798d.m28881b(context, C1885a.linear_indeterminate_line2_tail_interpolator)};
    }

    /* renamed from: q */
    public float m4300q() {
        return this.f37162l;
    }

    /* renamed from: r */
    private void m4299r() {
        if (this.f37157g == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f37156f, 0.0f, 1.0f);
            this.f37157g = ofFloat;
            ofFloat.setDuration(1800L);
            this.f37157g.setInterpolator(null);
            this.f37157g.setRepeatCount(-1);
            this.f37157g.addListener(new C8246a());
        }
    }

    /* renamed from: s */
    private void m4298s() {
        if (this.f37161k) {
            Arrays.fill(this.f37140c, C1909a.m28718a(this.f37159i.f37090c[this.f37160j], this.f37138a.getAlpha()));
            this.f37161k = false;
        }
    }

    /* renamed from: v */
    private void m4295v(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            this.f37139b[i2] = Math.max(0.0f, Math.min(1.0f, this.f37158h[i2].getInterpolation(m4348b(i, f37155e[i2], f37154d[i2]))));
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: a */
    public void mo4314a() {
        ObjectAnimator objectAnimator = this.f37157g;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: c */
    public void mo4313c() {
        m4297t();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: d */
    public void mo4312d(AbstractC1793b abstractC1793b) {
        this.f37164n = abstractC1793b;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: f */
    public void mo4311f() {
        if (!this.f37138a.isVisible()) {
            mo4314a();
            return;
        }
        this.f37163m = true;
        this.f37157g.setRepeatCount(0);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: g */
    public void mo4310g() {
        m4299r();
        m4297t();
        this.f37157g.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8239h
    /* renamed from: h */
    public void mo4309h() {
        this.f37164n = null;
    }

    /* renamed from: t */
    void m4297t() {
        this.f37160j = 0;
        int m28718a = C1909a.m28718a(this.f37159i.f37090c[0], this.f37138a.getAlpha());
        int[] iArr = this.f37140c;
        iArr[0] = m28718a;
        iArr[1] = m28718a;
    }

    /* renamed from: u */
    void m4296u(float f) {
        this.f37162l = f;
        m4295v((int) (f * 1800.0f));
        m4298s();
        this.f37138a.invalidateSelf();
    }
}
