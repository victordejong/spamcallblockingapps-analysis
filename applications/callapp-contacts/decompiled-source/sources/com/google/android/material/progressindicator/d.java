package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.l.a.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a.c;
import com.google.android.material.b.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/d.class */
final class d extends h<ObjectAnimator> {
    private static final int[] e = {0, 1350, 2700, 4050};
    private static final int[] f = {667, 2017, 3367, 4717};
    private static final int[] g = {1000, 2350, 3700, 5050};
    private static final Property<d, Float> o = new Property<d, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.d.3
        @Override // android.util.Property
        public final /* synthetic */ Float get(d dVar) {
            return Float.valueOf(dVar.m);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(d dVar, Float f2) {
            dVar.a(f2.floatValue());
        }
    };
    private static final Property<d, Float> p = new Property<d, Float>(Float.class, "completeEndFraction") { // from class: com.google.android.material.progressindicator.d.4
        @Override // android.util.Property
        public final /* synthetic */ Float get(d dVar) {
            return Float.valueOf(dVar.n);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(d dVar, Float f2) {
            dVar.n = f2.floatValue();
        }
    };
    private ObjectAnimator h;
    private ObjectAnimator i;
    private final b k;
    private float m;
    private float n;
    private int l = 0;

    /* renamed from: a  reason: collision with root package name */
    b.a f30752a = null;
    private final androidx.g.a.a.b j = new androidx.g.a.a.b();

    public d(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.k = circularProgressIndicatorSpec;
    }

    private void f() {
        this.l = 0;
        this.f30766d[0] = a.a(this.k.f30748c[0], this.f30764b.getAlpha());
        this.n = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.material.progressindicator.h
    final void a() {
        if (this.h == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, o, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.h = ofFloat;
            ofFloat.setDuration(5400L);
            this.h.setInterpolator(null);
            this.h.setRepeatCount(-1);
            this.h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.d.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    d dVar = d.this;
                    dVar.l = (dVar.l + 4) % d.this.k.f30748c.length;
                }
            });
        }
        if (this.i == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, p, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.i = ofFloat2;
            ofFloat2.setDuration(333L);
            this.i.setInterpolator(this.j);
            this.i.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.d.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    d.this.b();
                    d.this.f30752a.a(d.this.f30764b);
                }
            });
        }
        f();
        this.h.start();
    }

    final void a(float f2) {
        this.m = f2;
        int i = (int) (f2 * 5400.0f);
        this.f30765c[0] = (this.m * 1520.0f) - 20.0f;
        this.f30765c[1] = this.m * 1520.0f;
        for (int i2 = 0; i2 < 4; i2++) {
            float f3 = (i - e[i2]) / 667.0f;
            float[] fArr = this.f30765c;
            fArr[1] = fArr[1] + (this.j.getInterpolation(f3) * 250.0f);
            float f4 = (i - f[i2]) / 667.0f;
            float[] fArr2 = this.f30765c;
            fArr2[0] = fArr2[0] + (this.j.getInterpolation(f4) * 250.0f);
        }
        float[] fArr3 = this.f30765c;
        fArr3[0] = fArr3[0] + ((this.f30765c[1] - this.f30765c[0]) * this.n);
        float[] fArr4 = this.f30765c;
        fArr4[0] = fArr4[0] / 360.0f;
        float[] fArr5 = this.f30765c;
        fArr5[1] = fArr5[1] / 360.0f;
        int i3 = 0;
        while (true) {
            if (i3 >= 4) {
                break;
            }
            float f5 = (i - g[i3]) / 333.0f;
            if (f5 >= BitmapDescriptorFactory.HUE_RED && f5 <= 1.0f) {
                int length = (i3 + this.l) % this.k.f30748c.length;
                int length2 = this.k.f30748c.length;
                int a2 = a.a(this.k.f30748c[length], this.f30764b.getAlpha());
                int a3 = a.a(this.k.f30748c[(length + 1) % length2], this.f30764b.getAlpha());
                float interpolation = this.j.getInterpolation(f5);
                int[] iArr = this.f30766d;
                c.a();
                iArr[0] = c.a(interpolation, Integer.valueOf(a2), Integer.valueOf(a3)).intValue();
                break;
            }
            i3++;
        }
        this.f30764b.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a(b.a aVar) {
        this.f30752a = aVar;
    }

    @Override // com.google.android.material.progressindicator.h
    final void b() {
        ObjectAnimator objectAnimator = this.h;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    final void c() {
        if (!this.i.isRunning()) {
            if (this.f30764b.isVisible()) {
                this.i.start();
            } else {
                b();
            }
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public final void d() {
        f();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void e() {
        this.f30752a = null;
    }
}
