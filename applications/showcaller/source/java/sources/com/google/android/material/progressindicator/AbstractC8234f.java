package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.ArrayList;
import java.util.List;
import p020b.p074t.p075a.p076a.AbstractC1793b;
import p078c.p084c.p085a.p096b.p097m.C1897a;
/* renamed from: com.google.android.material.progressindicator.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/f.class */
public abstract class AbstractC8234f extends Drawable implements Animatable {

    /* renamed from: d */
    private static final Property<AbstractC8234f, Float> f37119d = new C8237c(Float.class, "growFraction");

    /* renamed from: e */
    final Context f37120e;

    /* renamed from: f */
    final AbstractC8225b f37121f;

    /* renamed from: h */
    private ValueAnimator f37123h;

    /* renamed from: i */
    private ValueAnimator f37124i;

    /* renamed from: j */
    private boolean f37125j;

    /* renamed from: k */
    private boolean f37126k;

    /* renamed from: l */
    private float f37127l;

    /* renamed from: m */
    private List<AbstractC1793b> f37128m;

    /* renamed from: n */
    private AbstractC1793b f37129n;

    /* renamed from: o */
    private boolean f37130o;

    /* renamed from: p */
    private float f37131p;

    /* renamed from: r */
    private int f37133r;

    /* renamed from: q */
    final Paint f37132q = new Paint();

    /* renamed from: g */
    C8224a f37122g = new C8224a();

    /* renamed from: com.google.android.material.progressindicator.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/f$a.class */
    public class C8235a extends AnimatorListenerAdapter {
        C8235a() {
            AbstractC8234f.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            AbstractC8234f.this.m4359e();
        }
    }

    /* renamed from: com.google.android.material.progressindicator.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/f$b.class */
    public class C8236b extends AnimatorListenerAdapter {
        C8236b() {
            AbstractC8234f.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            AbstractC8234f.super.setVisible(false, false);
            AbstractC8234f.this.m4360d();
        }
    }

    /* renamed from: com.google.android.material.progressindicator.f$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/f$c.class */
    static final class C8237c extends Property<AbstractC8234f, Float> {
        C8237c(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(AbstractC8234f abstractC8234f) {
            return Float.valueOf(abstractC8234f.m4357g());
        }

        /* renamed from: b */
        public void set(AbstractC8234f abstractC8234f, Float f) {
            abstractC8234f.m4355m(f.floatValue());
        }
    }

    public AbstractC8234f(Context context, AbstractC8225b abstractC8225b) {
        this.f37120e = context;
        this.f37121f = abstractC8225b;
        setAlpha(255);
    }

    /* renamed from: d */
    public void m4360d() {
        AbstractC1793b abstractC1793b = this.f37129n;
        if (abstractC1793b != null) {
            abstractC1793b.mo4408a(this);
        }
        List<AbstractC1793b> list = this.f37128m;
        if (list == null || this.f37130o) {
            return;
        }
        for (AbstractC1793b abstractC1793b2 : list) {
            abstractC1793b2.mo4408a(this);
        }
    }

    /* renamed from: e */
    public void m4359e() {
        AbstractC1793b abstractC1793b = this.f37129n;
        if (abstractC1793b != null) {
            abstractC1793b.m28887b(this);
        }
        List<AbstractC1793b> list = this.f37128m;
        if (list == null || this.f37130o) {
            return;
        }
        for (AbstractC1793b abstractC1793b2 : list) {
            abstractC1793b2.m28887b(this);
        }
    }

    /* renamed from: f */
    private void m4358f(ValueAnimator... valueAnimatorArr) {
        boolean z = this.f37130o;
        this.f37130o = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f37130o = z;
    }

    /* renamed from: k */
    private void m4356k() {
        if (this.f37123h == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f37119d, 0.0f, 1.0f);
            this.f37123h = ofFloat;
            ofFloat.setDuration(500L);
            this.f37123h.setInterpolator(C1897a.f6814b);
            m4353o(this.f37123h);
        }
        if (this.f37124i == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f37119d, 1.0f, 0.0f);
            this.f37124i = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f37124i.setInterpolator(C1897a.f6814b);
            m4354n(this.f37124i);
        }
    }

    /* renamed from: n */
    private void m4354n(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f37124i;
        if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
            this.f37124i = valueAnimator;
            valueAnimator.addListener(new C8236b());
            return;
        }
        throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
    }

    /* renamed from: o */
    private void m4353o(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f37123h;
        if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
            this.f37123h = valueAnimator;
            valueAnimator.addListener(new C8235a());
            return;
        }
        throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
    }

    /* renamed from: g */
    public float m4357g() {
        if (this.f37121f.m4400b() || this.f37121f.m4401a()) {
            return (this.f37126k || this.f37125j) ? this.f37127l : this.f37131p;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f37133r;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public boolean mo4346h() {
        return mo4342p(false, false, false);
    }

    /* renamed from: i */
    public boolean mo4345i() {
        ValueAnimator valueAnimator = this.f37124i;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f37126k;
    }

    public boolean isRunning() {
        return mo4344j() || mo4345i();
    }

    /* renamed from: j */
    public boolean mo4344j() {
        ValueAnimator valueAnimator = this.f37123h;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f37125j;
    }

    /* renamed from: l */
    public void mo4343l(AbstractC1793b abstractC1793b) {
        if (this.f37128m == null) {
            this.f37128m = new ArrayList();
        }
        if (!this.f37128m.contains(abstractC1793b)) {
            this.f37128m.add(abstractC1793b);
        }
    }

    /* renamed from: m */
    public void m4355m(float f) {
        if (this.f37131p != f) {
            this.f37131p = f;
            invalidateSelf();
        }
    }

    /* renamed from: p */
    public boolean mo4342p(boolean z, boolean z2, boolean z3) {
        return mo4341q(z, z2, z3 && this.f37122g.m4402a(this.f37120e.getContentResolver()) > 0.0f);
    }

    /* renamed from: q */
    public boolean mo4341q(boolean z, boolean z2, boolean z3) {
        m4356k();
        if (isVisible() || z) {
            ValueAnimator valueAnimator = z ? this.f37123h : this.f37124i;
            if (!z3) {
                if (valueAnimator.isRunning()) {
                    valueAnimator.end();
                } else {
                    m4358f(valueAnimator);
                }
                return super.setVisible(z, false);
            } else if (z3 && valueAnimator.isRunning()) {
                return false;
            } else {
                boolean z4 = !z || super.setVisible(z, false);
                if (!(z ? this.f37121f.m4400b() : this.f37121f.m4401a())) {
                    m4358f(valueAnimator);
                    return z4;
                }
                if (z2 || Build.VERSION.SDK_INT < 19 || !valueAnimator.isPaused()) {
                    valueAnimator.start();
                } else {
                    valueAnimator.resume();
                }
                return z4;
            }
        }
        return false;
    }

    /* renamed from: r */
    public boolean mo4340r(AbstractC1793b abstractC1793b) {
        List<AbstractC1793b> list = this.f37128m;
        if (list == null || !list.contains(abstractC1793b)) {
            return false;
        }
        this.f37128m.remove(abstractC1793b);
        if (!this.f37128m.isEmpty()) {
            return true;
        }
        this.f37128m = null;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f37133r = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f37132q.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return mo4342p(z, z2, true);
    }

    public void start() {
        mo4341q(true, true, false);
    }

    public void stop() {
        mo4341q(false, true, false);
    }
}
