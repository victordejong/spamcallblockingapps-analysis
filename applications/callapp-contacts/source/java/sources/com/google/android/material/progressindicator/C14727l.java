package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import androidx.p057l.p058a.p059a.C1202d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p365b.C14416a;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/l.class */
public final class C14727l extends AbstractC14721h<ObjectAnimator> {

    /* renamed from: e */
    private static final int[] f53722e = {533, 567, 850, 750};

    /* renamed from: f */
    private static final int[] f53723f = {1267, 1000, 333, 0};

    /* renamed from: n */
    private static final Property<C14727l, Float> f53724n = new Property<C14727l, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.l.2
        @Override // android.util.Property
        public final /* synthetic */ Float get(C14727l c14727l) {
            return Float.valueOf(c14727l.f53731l);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C14727l c14727l, Float f) {
            c14727l.m10290a(f.floatValue());
        }
    };

    /* renamed from: g */
    private ObjectAnimator f53726g;

    /* renamed from: h */
    private final Interpolator[] f53727h;

    /* renamed from: i */
    private final AbstractC14707b f53728i;

    /* renamed from: k */
    private boolean f53730k;

    /* renamed from: l */
    private float f53731l;

    /* renamed from: m */
    private boolean f53732m;

    /* renamed from: j */
    private int f53729j = 0;

    /* renamed from: a */
    AbstractC1196b.AbstractC1197a f53725a = null;

    public C14727l(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f53728i = linearProgressIndicatorSpec;
        this.f53727h = new Interpolator[]{C1202d.m43371a(context, C14376a.C14377a.linear_indeterminate_line1_head_interpolator), C1202d.m43371a(context, C14376a.C14377a.linear_indeterminate_line1_tail_interpolator), C1202d.m43371a(context, C14376a.C14377a.linear_indeterminate_line2_head_interpolator), C1202d.m43371a(context, C14376a.C14377a.linear_indeterminate_line2_tail_interpolator)};
    }

    /* renamed from: f */
    private void m10278f() {
        this.f53729j = 0;
        int m11242a = C14416a.m11242a(this.f53728i.f53658c[0], this.f53706b.getAlpha());
        this.f53708d[0] = m11242a;
        this.f53708d[1] = m11242a;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: a */
    public final void mo10291a() {
        if (this.f53726g == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f53724n, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f53726g = ofFloat;
            ofFloat.setDuration(1800L);
            this.f53726g.setInterpolator(null);
            this.f53726g.setRepeatCount(-1);
            this.f53726g.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.l.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (C14727l.this.f53732m) {
                        C14727l.this.f53726g.setRepeatCount(-1);
                        C14727l.this.f53725a.mo10346a(C14727l.this.f53706b);
                        C14727l.this.f53732m = false;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    C14727l c14727l = C14727l.this;
                    c14727l.f53729j = (c14727l.f53729j + 1) % C14727l.this.f53728i.f53658c.length;
                    C14727l.this.f53730k = true;
                }
            });
        }
        m10278f();
        this.f53726g.start();
    }

    /* renamed from: a */
    final void m10290a(float f) {
        this.f53731l = f;
        int i = (int) (f * 1800.0f);
        for (int i2 = 0; i2 < 4; i2++) {
            this.f53707c[i2] = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, this.f53727h[i2].getInterpolation((i - f53723f[i2]) / f53722e[i2])));
        }
        if (this.f53730k) {
            Arrays.fill(this.f53708d, C14416a.m11242a(this.f53728i.f53658c[this.f53729j], this.f53706b.getAlpha()));
            this.f53730k = false;
        }
        this.f53706b.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: a */
    public final void mo10289a(AbstractC1196b.AbstractC1197a abstractC1197a) {
        this.f53725a = abstractC1197a;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: b */
    public final void mo10286b() {
        ObjectAnimator objectAnimator = this.f53726g;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: c */
    public final void mo10284c() {
        if (!this.f53706b.isVisible()) {
            mo10286b();
            return;
        }
        this.f53732m = true;
        this.f53726g.setRepeatCount(0);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: d */
    public final void mo10282d() {
        m10278f();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: e */
    public final void mo10280e() {
        this.f53725a = null;
    }
}
