package com.google.android.material.p147f;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.p147f.C4645c;
import com.google.android.material.p154l.C4713a;
/* renamed from: com.google.android.material.f.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/f/d.class */
public interface AbstractC4647d extends C4645c.AbstractC4646a {

    /* renamed from: com.google.android.material.f.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/f/d$a.class */
    public static class C4649a implements TypeEvaluator<C4652d> {

        /* renamed from: a */
        public static final TypeEvaluator<C4652d> f20163a = new C4649a();

        /* renamed from: b */
        private final C4652d f20164b = new C4652d();

        /* renamed from: a */
        public C4652d evaluate(float f, C4652d c4652d, C4652d c4652d2) {
            this.f20164b.m3063a(C4713a.m2796a(c4652d.f20167a, c4652d2.f20167a, f), C4713a.m2796a(c4652d.f20168b, c4652d2.f20168b, f), C4713a.m2796a(c4652d.f20169c, c4652d2.f20169c, f));
            return this.f20164b;
        }
    }

    /* renamed from: com.google.android.material.f.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/f/d$b.class */
    public static class C4650b extends Property<AbstractC4647d, C4652d> {

        /* renamed from: a */
        public static final Property<AbstractC4647d, C4652d> f20165a = new C4650b("circularReveal");

        private C4650b(String str) {
            super(C4652d.class, str);
        }

        /* renamed from: a */
        public C4652d get(AbstractC4647d abstractC4647d) {
            return abstractC4647d.getRevealInfo();
        }

        /* renamed from: a */
        public void set(AbstractC4647d abstractC4647d, C4652d c4652d) {
            abstractC4647d.setRevealInfo(c4652d);
        }
    }

    /* renamed from: com.google.android.material.f.d$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/f/d$c.class */
    public static class C4651c extends Property<AbstractC4647d, Integer> {

        /* renamed from: a */
        public static final Property<AbstractC4647d, Integer> f20166a = new C4651c("circularRevealScrimColor");

        private C4651c(String str) {
            super(Integer.class, str);
        }

        /* renamed from: a */
        public Integer get(AbstractC4647d abstractC4647d) {
            return Integer.valueOf(abstractC4647d.getCircularRevealScrimColor());
        }

        /* renamed from: a */
        public void set(AbstractC4647d abstractC4647d, Integer num) {
            abstractC4647d.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* renamed from: com.google.android.material.f.d$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/f/d$d.class */
    public static class C4652d {

        /* renamed from: a */
        public float f20167a;

        /* renamed from: b */
        public float f20168b;

        /* renamed from: c */
        public float f20169c;

        private C4652d() {
        }

        public C4652d(float f, float f2, float f3) {
            this.f20167a = f;
            this.f20168b = f2;
            this.f20169c = f3;
        }

        public C4652d(C4652d c4652d) {
            this(c4652d.f20167a, c4652d.f20168b, c4652d.f20169c);
        }

        /* renamed from: a */
        public void m3063a(float f, float f2, float f3) {
            this.f20167a = f;
            this.f20168b = f2;
            this.f20169c = f3;
        }

        /* renamed from: a */
        public void m3062a(C4652d c4652d) {
            m3063a(c4652d.f20167a, c4652d.f20168b, c4652d.f20169c);
        }

        /* renamed from: a */
        public boolean m3064a() {
            return this.f20169c == Float.MAX_VALUE;
        }
    }

    /* renamed from: a */
    void mo3071a();

    /* renamed from: b */
    void mo3070b();

    int getCircularRevealScrimColor();

    C4652d getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(C4652d c4652d);
}
