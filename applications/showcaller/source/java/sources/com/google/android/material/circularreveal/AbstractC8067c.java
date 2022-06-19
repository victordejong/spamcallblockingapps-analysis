package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.C8065b;
import p078c.p084c.p085a.p096b.p104t.C1915a;
/* renamed from: com.google.android.material.circularreveal.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/c.class */
public interface AbstractC8067c extends C8065b.AbstractC8066a {

    /* renamed from: com.google.android.material.circularreveal.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/c$b.class */
    public static class C8069b implements TypeEvaluator<C8072e> {

        /* renamed from: a */
        public static final TypeEvaluator<C8072e> f36536a = new C8069b();

        /* renamed from: b */
        private final C8072e f36537b = new C8072e();

        /* renamed from: a */
        public C8072e evaluate(float f, C8072e c8072e, C8072e c8072e2) {
            this.f36537b.m5040b(C1915a.m28694d(c8072e.f36540a, c8072e2.f36540a, f), C1915a.m28694d(c8072e.f36541b, c8072e2.f36541b, f), C1915a.m28694d(c8072e.f36542c, c8072e2.f36542c, f));
            return this.f36537b;
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/c$c.class */
    public static class C8070c extends Property<AbstractC8067c, C8072e> {

        /* renamed from: a */
        public static final Property<AbstractC8067c, C8072e> f36538a = new C8070c("circularReveal");

        private C8070c(String str) {
            super(C8072e.class, str);
        }

        /* renamed from: a */
        public C8072e get(AbstractC8067c abstractC8067c) {
            return abstractC8067c.getRevealInfo();
        }

        /* renamed from: b */
        public void set(AbstractC8067c abstractC8067c, C8072e c8072e) {
            abstractC8067c.setRevealInfo(c8072e);
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/c$d.class */
    public static class C8071d extends Property<AbstractC8067c, Integer> {

        /* renamed from: a */
        public static final Property<AbstractC8067c, Integer> f36539a = new C8071d("circularRevealScrimColor");

        private C8071d(String str) {
            super(Integer.class, str);
        }

        /* renamed from: a */
        public Integer get(AbstractC8067c abstractC8067c) {
            return Integer.valueOf(abstractC8067c.getCircularRevealScrimColor());
        }

        /* renamed from: b */
        public void set(AbstractC8067c abstractC8067c, Integer num) {
            abstractC8067c.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/circularreveal/c$e.class */
    public static class C8072e {

        /* renamed from: a */
        public float f36540a;

        /* renamed from: b */
        public float f36541b;

        /* renamed from: c */
        public float f36542c;

        private C8072e() {
        }

        public C8072e(float f, float f2, float f3) {
            this.f36540a = f;
            this.f36541b = f2;
            this.f36542c = f3;
        }

        public C8072e(C8072e c8072e) {
            this(c8072e.f36540a, c8072e.f36541b, c8072e.f36542c);
        }

        /* renamed from: a */
        public boolean m5041a() {
            return this.f36542c == Float.MAX_VALUE;
        }

        /* renamed from: b */
        public void m5040b(float f, float f2, float f3) {
            this.f36540a = f;
            this.f36541b = f2;
            this.f36542c = f3;
        }

        /* renamed from: c */
        public void m5039c(C8072e c8072e) {
            m5040b(c8072e.f36540a, c8072e.f36541b, c8072e.f36542c);
        }
    }

    /* renamed from: a */
    void mo5038a();

    /* renamed from: b */
    void mo5037b();

    int getCircularRevealScrimColor();

    C8072e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(C8072e c8072e);
}
