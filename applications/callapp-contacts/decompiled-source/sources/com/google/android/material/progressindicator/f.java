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
import androidx.l.a.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/f.class */
public abstract class f extends Drawable implements b {
    private static final Property<f, Float> o = new Property<f, Float>(Float.class, "growFraction") { // from class: com.google.android.material.progressindicator.f.3
        @Override // android.util.Property
        public final /* synthetic */ Float get(f fVar) {
            return Float.valueOf(fVar.d());
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(f fVar, Float f) {
            fVar.a(f.floatValue());
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private ValueAnimator f30756a;

    /* renamed from: b  reason: collision with root package name */
    final Context f30757b;

    /* renamed from: c  reason: collision with root package name */
    final b f30758c;
    private ValueAnimator f;
    private boolean g;
    private boolean h;
    private float i;
    private List<b.a> j;
    private b.a k;
    private boolean l;
    private float m;
    private int n;
    final Paint e = new Paint();

    /* renamed from: d  reason: collision with root package name */
    a f30759d = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context, b bVar) {
        this.f30757b = context;
        this.f30758c = bVar;
        setAlpha(255);
    }

    static /* synthetic */ void a(f fVar) {
        List<b.a> list = fVar.j;
        if (list != null && !fVar.l) {
            Iterator<b.a> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    private void a(ValueAnimator... valueAnimatorArr) {
        boolean z = this.l;
        this.l = true;
        for (int i = 0; i <= 0; i++) {
            valueAnimatorArr[0].end();
        }
        this.l = z;
    }

    static /* synthetic */ void c(f fVar) {
        b.a aVar = fVar.k;
        if (aVar != null) {
            aVar.a(fVar);
        }
        List<b.a> list = fVar.j;
        if (!(list == null || fVar.l)) {
            for (b.a aVar2 : list) {
                aVar2.a(fVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f) {
        if (this.m != f) {
            this.m = f;
            invalidateSelf();
        }
    }

    public boolean a() {
        return b(false, false, false);
    }

    public boolean a(b.a aVar) {
        List<b.a> list = this.j;
        if (list == null || !list.contains(aVar)) {
            return false;
        }
        this.j.remove(aVar);
        if (!this.j.isEmpty()) {
            return true;
        }
        this.j = null;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(boolean z, boolean z2, boolean z3) {
        if (this.f30756a == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, o, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f30756a = ofFloat;
            ofFloat.setDuration(500L);
            this.f30756a.setInterpolator(a.f30174b);
            ValueAnimator valueAnimator = this.f30756a;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                this.f30756a = valueAnimator;
                valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.f.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        f.a(f.this);
                    }
                });
            } else {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
        }
        if (this.f == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, o, 1.0f, BitmapDescriptorFactory.HUE_RED);
            this.f = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f.setInterpolator(a.f30174b);
            ValueAnimator valueAnimator2 = this.f;
            if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
                this.f = valueAnimator2;
                valueAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.f.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        f.super.setVisible(false, false);
                        f.c(f.this);
                    }
                });
            } else {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
        }
        if (!isVisible() && !z) {
            return false;
        }
        ValueAnimator valueAnimator3 = z ? this.f30756a : this.f;
        if (!z3) {
            if (valueAnimator3.isRunning()) {
                valueAnimator3.end();
            } else {
                a(valueAnimator3);
            }
            return super.setVisible(z, false);
        } else if (z3 && valueAnimator3.isRunning()) {
            return false;
        } else {
            boolean z4 = !z || super.setVisible(z, false);
            if (!(z ? this.f30758c.a() : this.f30758c.b())) {
                a(valueAnimator3);
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

    public void b(b.a aVar) {
        if (this.j == null) {
            this.j = new ArrayList();
        }
        if (!this.j.contains(aVar)) {
            this.j.add(aVar);
        }
    }

    public boolean b() {
        ValueAnimator valueAnimator = this.f;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.h;
    }

    public boolean b(boolean z, boolean z2, boolean z3) {
        return a(z, z2, z3 && a.a(this.f30757b.getContentResolver()) > BitmapDescriptorFactory.HUE_RED);
    }

    public boolean c() {
        ValueAnimator valueAnimator = this.f30756a;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float d() {
        if (this.f30758c.a() || this.f30758c.b()) {
            return (this.h || this.g) ? this.i : this.m;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean isRunning() {
        return c() || b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.n = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return b(z, z2, true);
    }

    public void start() {
        a(true, true, false);
    }

    public void stop() {
        a(false, true, false);
    }
}
