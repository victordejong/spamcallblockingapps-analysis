package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.l.a.a.b;
import androidx.l.a.a.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/l.class */
final class l extends h<ObjectAnimator> {
    private static final int[] e = {533, 567, 850, 750};
    private static final int[] f = {1267, 1000, 333, 0};
    private static final Property<l, Float> n = new Property<l, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.l.2
        @Override // android.util.Property
        public final /* synthetic */ Float get(l lVar) {
            return Float.valueOf(lVar.l);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(l lVar, Float f2) {
            lVar.a(f2.floatValue());
        }
    };
    private ObjectAnimator g;
    private final Interpolator[] h;
    private final b i;
    private boolean k;
    private float l;
    private boolean m;
    private int j = 0;

    /* renamed from: a  reason: collision with root package name */
    b.a f30772a = null;

    public l(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.i = linearProgressIndicatorSpec;
        this.h = new Interpolator[]{d.a(context, a.C0485a.linear_indeterminate_line1_head_interpolator), d.a(context, a.C0485a.linear_indeterminate_line1_tail_interpolator), d.a(context, a.C0485a.linear_indeterminate_line2_head_interpolator), d.a(context, a.C0485a.linear_indeterminate_line2_tail_interpolator)};
    }

    private void f() {
        this.j = 0;
        int a2 = com.google.android.material.b.a.a(this.i.f30748c[0], this.f30764b.getAlpha());
        this.f30766d[0] = a2;
        this.f30766d[1] = a2;
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a() {
        if (this.g == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, n, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.g = ofFloat;
            ofFloat.setDuration(1800L);
            this.g.setInterpolator(null);
            this.g.setRepeatCount(-1);
            this.g.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.l.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (l.this.m) {
                        l.this.g.setRepeatCount(-1);
                        l.this.f30772a.a(l.this.f30764b);
                        l.this.m = false;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    l lVar = l.this;
                    lVar.j = (lVar.j + 1) % l.this.i.f30748c.length;
                    l.this.k = true;
                }
            });
        }
        f();
        this.g.start();
    }

    final void a(float f2) {
        this.l = f2;
        int i = (int) (f2 * 1800.0f);
        for (int i2 = 0; i2 < 4; i2++) {
            this.f30765c[i2] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, this.h[i2].getInterpolation((i - f[i2]) / e[i2])));
        }
        if (this.k) {
            Arrays.fill(this.f30766d, com.google.android.material.b.a.a(this.i.f30748c[this.j], this.f30764b.getAlpha()));
            this.k = false;
        }
        this.f30764b.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a(b.a aVar) {
        this.f30772a = aVar;
    }

    @Override // com.google.android.material.progressindicator.h
    public final void b() {
        ObjectAnimator objectAnimator = this.g;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public final void c() {
        if (this.f30764b.isVisible()) {
            this.m = true;
            this.g.setRepeatCount(0);
            return;
        }
        b();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void d() {
        f();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void e() {
        this.f30772a = null;
    }
}
