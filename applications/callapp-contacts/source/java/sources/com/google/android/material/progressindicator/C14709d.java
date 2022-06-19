package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.p046g.p047a.p048a.C1157b;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p364a.C14391c;
import com.google.android.material.p365b.C14416a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.d */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/d.class */
public final class C14709d extends AbstractC14721h<ObjectAnimator> {

    /* renamed from: e */
    private static final int[] f53666e = {0, 1350, 2700, 4050};

    /* renamed from: f */
    private static final int[] f53667f = {667, 2017, 3367, 4717};

    /* renamed from: g */
    private static final int[] f53668g = {1000, 2350, 3700, 5050};

    /* renamed from: o */
    private static final Property<C14709d, Float> f53669o = new Property<C14709d, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.d.3
        @Override // android.util.Property
        public final /* synthetic */ Float get(C14709d c14709d) {
            return Float.valueOf(c14709d.f53677m);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C14709d c14709d, Float f) {
            c14709d.m10338a(f.floatValue());
        }
    };

    /* renamed from: p */
    private static final Property<C14709d, Float> f53670p = new Property<C14709d, Float>(Float.class, "completeEndFraction") { // from class: com.google.android.material.progressindicator.d.4
        @Override // android.util.Property
        public final /* synthetic */ Float get(C14709d c14709d) {
            return Float.valueOf(c14709d.f53678n);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C14709d c14709d, Float f) {
            c14709d.f53678n = f.floatValue();
        }
    };

    /* renamed from: h */
    private ObjectAnimator f53672h;

    /* renamed from: i */
    private ObjectAnimator f53673i;

    /* renamed from: k */
    private final AbstractC14707b f53675k;

    /* renamed from: m */
    private float f53677m;

    /* renamed from: n */
    private float f53678n;

    /* renamed from: l */
    private int f53676l = 0;

    /* renamed from: a */
    AbstractC1196b.AbstractC1197a f53671a = null;

    /* renamed from: j */
    private final C1157b f53674j = new C1157b();

    public C14709d(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f53675k = circularProgressIndicatorSpec;
    }

    /* renamed from: f */
    private void m10331f() {
        this.f53676l = 0;
        this.f53708d[0] = C14416a.m11242a(this.f53675k.f53658c[0], this.f53706b.getAlpha());
        this.f53678n = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: a */
    public final void mo10291a() {
        if (this.f53672h == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f53669o, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f53672h = ofFloat;
            ofFloat.setDuration(5400L);
            this.f53672h.setInterpolator(null);
            this.f53672h.setRepeatCount(-1);
            this.f53672h.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.d.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    C14709d c14709d = C14709d.this;
                    c14709d.f53676l = (c14709d.f53676l + 4) % C14709d.this.f53675k.f53658c.length;
                }
            });
        }
        if (this.f53673i == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f53670p, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f53673i = ofFloat2;
            ofFloat2.setDuration(333L);
            this.f53673i.setInterpolator(this.f53674j);
            this.f53673i.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.d.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    C14709d.this.mo10286b();
                    C14709d.this.f53671a.mo10346a(C14709d.this.f53706b);
                }
            });
        }
        m10331f();
        this.f53672h.start();
    }

    /* renamed from: a */
    final void m10338a(float f) {
        this.f53677m = f;
        int i = (int) (f * 5400.0f);
        this.f53707c[0] = (this.f53677m * 1520.0f) - 20.0f;
        this.f53707c[1] = this.f53677m * 1520.0f;
        for (int i2 = 0; i2 < 4; i2++) {
            float f2 = (i - f53666e[i2]) / 667.0f;
            float[] fArr = this.f53707c;
            fArr[1] = fArr[1] + (this.f53674j.getInterpolation(f2) * 250.0f);
            float f3 = (i - f53667f[i2]) / 667.0f;
            float[] fArr2 = this.f53707c;
            fArr2[0] = fArr2[0] + (this.f53674j.getInterpolation(f3) * 250.0f);
        }
        float[] fArr3 = this.f53707c;
        fArr3[0] = fArr3[0] + ((this.f53707c[1] - this.f53707c[0]) * this.f53678n);
        float[] fArr4 = this.f53707c;
        fArr4[0] = fArr4[0] / 360.0f;
        float[] fArr5 = this.f53707c;
        fArr5[1] = fArr5[1] / 360.0f;
        int i3 = 0;
        while (true) {
            if (i3 >= 4) {
                break;
            }
            float f4 = (i - f53668g[i3]) / 333.0f;
            if (f4 >= BitmapDescriptorFactory.HUE_RED && f4 <= 1.0f) {
                int length = (i3 + this.f53676l) % this.f53675k.f53658c.length;
                int length2 = this.f53675k.f53658c.length;
                int m11242a = C14416a.m11242a(this.f53675k.f53658c[length], this.f53706b.getAlpha());
                int m11242a2 = C14416a.m11242a(this.f53675k.f53658c[(length + 1) % length2], this.f53706b.getAlpha());
                float interpolation = this.f53674j.getInterpolation(f4);
                int[] iArr = this.f53708d;
                C14391c.m11336a();
                iArr[0] = C14391c.m11335a(interpolation, Integer.valueOf(m11242a), Integer.valueOf(m11242a2)).intValue();
                break;
            }
            i3++;
        }
        this.f53706b.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: a */
    public final void mo10289a(AbstractC1196b.AbstractC1197a abstractC1197a) {
        this.f53671a = abstractC1197a;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: b */
    public final void mo10286b() {
        ObjectAnimator objectAnimator = this.f53672h;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: c */
    public final void mo10284c() {
        if (this.f53673i.isRunning()) {
            return;
        }
        if (this.f53706b.isVisible()) {
            this.f53673i.start();
        } else {
            mo10286b();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: d */
    public final void mo10282d() {
        m10331f();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: e */
    public final void mo10280e() {
        this.f53671a = null;
    }
}
