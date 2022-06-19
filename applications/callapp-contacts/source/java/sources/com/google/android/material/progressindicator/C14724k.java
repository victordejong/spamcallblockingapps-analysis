package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.p046g.p047a.p048a.C1157b;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p365b.C14416a;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/k.class */
public final class C14724k extends AbstractC14721h<ObjectAnimator> {

    /* renamed from: j */
    private static final Property<C14724k, Float> f53714j = new Property<C14724k, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.k.2
        @Override // android.util.Property
        public final /* synthetic */ Float get(C14724k c14724k) {
            return Float.valueOf(c14724k.f53720i);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C14724k c14724k, Float f) {
            c14724k.m10298a(f.floatValue());
        }
    };

    /* renamed from: a */
    private ObjectAnimator f53715a;

    /* renamed from: f */
    private final AbstractC14707b f53717f;

    /* renamed from: h */
    private boolean f53719h;

    /* renamed from: i */
    private float f53720i;

    /* renamed from: g */
    private int f53718g = 1;

    /* renamed from: e */
    private C1157b f53716e = new C1157b();

    public C14724k(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f53717f = linearProgressIndicatorSpec;
    }

    /* renamed from: f */
    private void m10292f() {
        this.f53719h = true;
        this.f53718g = 1;
        Arrays.fill(this.f53708d, C14416a.m11242a(this.f53717f.f53658c[0], this.f53706b.getAlpha()));
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: a */
    public final void mo10291a() {
        if (this.f53715a == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f53714j, BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.f53715a = ofFloat;
            ofFloat.setDuration(333L);
            this.f53715a.setInterpolator(null);
            this.f53715a.setRepeatCount(-1);
            this.f53715a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.k.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    C14724k c14724k = C14724k.this;
                    c14724k.f53718g = (c14724k.f53718g + 1) % C14724k.this.f53717f.f53658c.length;
                    C14724k.this.f53719h = true;
                }
            });
        }
        m10292f();
        this.f53715a.start();
    }

    /* renamed from: a */
    final void m10298a(float f) {
        this.f53720i = f;
        this.f53707c[0] = 0.0f;
        float f2 = (((int) (f * 333.0f)) - 0) / 667.0f;
        float[] fArr = this.f53707c;
        float[] fArr2 = this.f53707c;
        float interpolation = this.f53716e.getInterpolation(f2);
        fArr2[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr3 = this.f53707c;
        float[] fArr4 = this.f53707c;
        float interpolation2 = this.f53716e.getInterpolation(f2 + 0.49925038f);
        fArr4[4] = interpolation2;
        fArr3[3] = interpolation2;
        this.f53707c[5] = 1.0f;
        if (this.f53719h && this.f53707c[3] < 1.0f) {
            this.f53708d[2] = this.f53708d[1];
            this.f53708d[1] = this.f53708d[0];
            this.f53708d[0] = C14416a.m11242a(this.f53717f.f53658c[this.f53718g], this.f53706b.getAlpha());
            this.f53719h = false;
        }
        this.f53706b.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: a */
    public final void mo10289a(AbstractC1196b.AbstractC1197a abstractC1197a) {
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: b */
    public final void mo10286b() {
        ObjectAnimator objectAnimator = this.f53715a;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: c */
    public final void mo10284c() {
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: d */
    public final void mo10282d() {
        m10292f();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14721h
    /* renamed from: e */
    public final void mo10280e() {
    }
}
