package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.g.a.a.b;
import androidx.l.a.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.b.a;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/k.class */
final class k extends h<ObjectAnimator> {
    private static final Property<k, Float> j = new Property<k, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.k.2
        @Override // android.util.Property
        public final /* synthetic */ Float get(k kVar) {
            return Float.valueOf(kVar.i);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(k kVar, Float f) {
            kVar.a(f.floatValue());
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private ObjectAnimator f30770a;
    private final b f;
    private boolean h;
    private float i;
    private int g = 1;
    private b e = new b();

    public k(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f = linearProgressIndicatorSpec;
    }

    private void f() {
        this.h = true;
        this.g = 1;
        Arrays.fill(this.f30766d, a.a(this.f.f30748c[0], this.f30764b.getAlpha()));
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a() {
        if (this.f30770a == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, j, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f30770a = ofFloat;
            ofFloat.setDuration(333L);
            this.f30770a.setInterpolator(null);
            this.f30770a.setRepeatCount(-1);
            this.f30770a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.k.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    k kVar = k.this;
                    kVar.g = (kVar.g + 1) % k.this.f.f30748c.length;
                    k.this.h = true;
                }
            });
        }
        f();
        this.f30770a.start();
    }

    final void a(float f) {
        this.i = f;
        this.f30765c[0] = 0.0f;
        float f2 = (((int) (f * 333.0f)) - 0) / 667.0f;
        float[] fArr = this.f30765c;
        float[] fArr2 = this.f30765c;
        float interpolation = this.e.getInterpolation(f2);
        fArr2[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr3 = this.f30765c;
        float[] fArr4 = this.f30765c;
        float interpolation2 = this.e.getInterpolation(f2 + 0.49925038f);
        fArr4[4] = interpolation2;
        fArr3[3] = interpolation2;
        this.f30765c[5] = 1.0f;
        if (this.h && this.f30765c[3] < 1.0f) {
            this.f30766d[2] = this.f30766d[1];
            this.f30766d[1] = this.f30766d[0];
            this.f30766d[0] = a.a(this.f.f30748c[this.g], this.f30764b.getAlpha());
            this.h = false;
        }
        this.f30764b.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void a(b.a aVar) {
    }

    @Override // com.google.android.material.progressindicator.h
    public final void b() {
        ObjectAnimator objectAnimator = this.f30770a;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public final void c() {
    }

    @Override // com.google.android.material.progressindicator.h
    public final void d() {
        f();
    }

    @Override // com.google.android.material.progressindicator.h
    public final void e() {
    }
}
