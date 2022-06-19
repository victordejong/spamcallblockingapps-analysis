package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p364a.C14389a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.material.progressindicator.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/f.class */
public abstract class AbstractC14716f extends Drawable implements AbstractC1196b {

    /* renamed from: o */
    private static final Property<AbstractC14716f, Float> f53687o = new Property<AbstractC14716f, Float>(Float.class, "growFraction") { // from class: com.google.android.material.progressindicator.f.3
        @Override // android.util.Property
        public final /* synthetic */ Float get(AbstractC14716f abstractC14716f) {
            return Float.valueOf(abstractC14716f.m10318d());
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(AbstractC14716f abstractC14716f, Float f) {
            abstractC14716f.m10323a(f.floatValue());
        }
    };

    /* renamed from: a */
    private ValueAnimator f53688a;

    /* renamed from: b */
    final Context f53689b;

    /* renamed from: c */
    final AbstractC14707b f53690c;

    /* renamed from: f */
    private ValueAnimator f53693f;

    /* renamed from: g */
    private boolean f53694g;

    /* renamed from: h */
    private boolean f53695h;

    /* renamed from: i */
    private float f53696i;

    /* renamed from: j */
    private List<AbstractC1196b.AbstractC1197a> f53697j;

    /* renamed from: k */
    private AbstractC1196b.AbstractC1197a f53698k;

    /* renamed from: l */
    private boolean f53699l;

    /* renamed from: m */
    private float f53700m;

    /* renamed from: n */
    private int f53701n;

    /* renamed from: e */
    final Paint f53692e = new Paint();

    /* renamed from: d */
    C14706a f53691d = new C14706a();

    public AbstractC14716f(Context context, AbstractC14707b abstractC14707b) {
        this.f53689b = context;
        this.f53690c = abstractC14707b;
        setAlpha(255);
    }

    /* renamed from: a */
    static /* synthetic */ void m10322a(AbstractC14716f abstractC14716f) {
        List<AbstractC1196b.AbstractC1197a> list = abstractC14716f.f53697j;
        if (list == null || abstractC14716f.f53699l) {
            return;
        }
        Iterator<AbstractC1196b.AbstractC1197a> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    private void m10321a(ValueAnimator... valueAnimatorArr) {
        boolean z = this.f53699l;
        this.f53699l = true;
        for (int i = 0; i <= 0; i++) {
            valueAnimatorArr[0].end();
        }
        this.f53699l = z;
    }

    /* renamed from: c */
    static /* synthetic */ void m10319c(AbstractC14716f abstractC14716f) {
        AbstractC1196b.AbstractC1197a abstractC1197a = abstractC14716f.f53698k;
        if (abstractC1197a != null) {
            abstractC1197a.mo10346a(abstractC14716f);
        }
        List<AbstractC1196b.AbstractC1197a> list = abstractC14716f.f53697j;
        if (list == null || abstractC14716f.f53699l) {
            return;
        }
        for (AbstractC1196b.AbstractC1197a abstractC1197a2 : list) {
            abstractC1197a2.mo10346a(abstractC14716f);
        }
    }

    /* renamed from: a */
    public final void m10323a(float f) {
        if (this.f53700m != f) {
            this.f53700m = f;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public boolean mo10314a() {
        return mo10306b(false, false, false);
    }

    /* renamed from: a */
    public boolean mo10311a(AbstractC1196b.AbstractC1197a abstractC1197a) {
        List<AbstractC1196b.AbstractC1197a> list = this.f53697j;
        if (list == null || !list.contains(abstractC1197a)) {
            return false;
        }
        this.f53697j.remove(abstractC1197a);
        if (!this.f53697j.isEmpty()) {
            return true;
        }
        this.f53697j = null;
        return true;
    }

    /* renamed from: a */
    public boolean mo10309a(boolean z, boolean z2, boolean z3) {
        if (this.f53688a == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f53687o, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f53688a = ofFloat;
            ofFloat.setDuration(500L);
            this.f53688a.setInterpolator(C14389a.f52369b);
            ValueAnimator valueAnimator = this.f53688a;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.f53688a = valueAnimator;
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.f.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    AbstractC14716f.m10322a(AbstractC14716f.this);
                }
            });
        }
        if (this.f53693f == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f53687o, 1.0f, BitmapDescriptorFactory.HUE_RED);
            this.f53693f = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f53693f.setInterpolator(C14389a.f52369b);
            ValueAnimator valueAnimator2 = this.f53693f;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.f53693f = valueAnimator2;
            valueAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.f.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    AbstractC14716f.super.setVisible(false, false);
                    AbstractC14716f.m10319c(AbstractC14716f.this);
                }
            });
        }
        if (isVisible() || z) {
            ValueAnimator valueAnimator3 = z ? this.f53688a : this.f53693f;
            if (!z3) {
                if (valueAnimator3.isRunning()) {
                    valueAnimator3.end();
                } else {
                    m10321a(valueAnimator3);
                }
                return super.setVisible(z, false);
            } else if (z3 && valueAnimator3.isRunning()) {
                return false;
            } else {
                boolean z4 = !z || super.setVisible(z, false);
                if (!(z ? this.f53690c.m10343a() : this.f53690c.m10342b())) {
                    m10321a(valueAnimator3);
                    return z4;
                }
                if (z2 || Build.VERSION.SDK_INT < 19 || !valueAnimator3.isPaused()) {
                    valueAnimator3.start();
                } else {
                    valueAnimator3.resume();
                }
                return z4;
            }
        }
        return false;
    }

    /* renamed from: b */
    public void mo10307b(AbstractC1196b.AbstractC1197a abstractC1197a) {
        if (this.f53697j == null) {
            this.f53697j = new ArrayList();
        }
        if (!this.f53697j.contains(abstractC1197a)) {
            this.f53697j.add(abstractC1197a);
        }
    }

    /* renamed from: b */
    public boolean mo10308b() {
        ValueAnimator valueAnimator = this.f53693f;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f53695h;
    }

    /* renamed from: b */
    public boolean mo10306b(boolean z, boolean z2, boolean z3) {
        return mo10309a(z, z2, z3 && C14706a.m10344a(this.f53689b.getContentResolver()) > BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: c */
    public boolean mo10305c() {
        ValueAnimator valueAnimator = this.f53688a;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f53694g;
    }

    /* renamed from: d */
    public final float m10318d() {
        if (this.f53690c.m10343a() || this.f53690c.m10342b()) {
            return (this.f53695h || this.f53694g) ? this.f53696i : this.f53700m;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f53701n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean isRunning() {
        return mo10305c() || mo10308b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f53701n = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f53692e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return mo10306b(z, z2, true);
    }

    public void start() {
        mo10309a(true, true, false);
    }

    public void stop() {
        mo10309a(false, true, false);
    }
}
