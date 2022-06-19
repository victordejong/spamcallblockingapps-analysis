package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.C14488b;
import com.google.android.material.p370g.C14594a;
/* renamed from: com.google.android.material.circularreveal.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c.class */
public interface AbstractC14490c extends C14488b.AbstractC14489a {

    /* renamed from: com.google.android.material.circularreveal.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$a.class */
    public static final class C14492a implements TypeEvaluator<C14495d> {

        /* renamed from: a */
        public static final TypeEvaluator<C14495d> f52924a = new C14492a();

        /* renamed from: b */
        private final C14495d f52925b = new C14495d();

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ C14495d evaluate(float f, C14495d c14495d, C14495d c14495d2) {
            C14495d c14495d3 = c14495d;
            C14495d c14495d4 = c14495d2;
            this.f52925b.m10872a(C14594a.m10663a(c14495d3.f52928a, c14495d4.f52928a, f), C14594a.m10663a(c14495d3.f52929b, c14495d4.f52929b, f), C14594a.m10663a(c14495d3.f52930c, c14495d4.f52930c, f));
            return this.f52925b;
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$b.class */
    public static final class C14493b extends Property<AbstractC14490c, C14495d> {

        /* renamed from: a */
        public static final Property<AbstractC14490c, C14495d> f52926a = new C14493b("circularReveal");

        private C14493b(String str) {
            super(C14495d.class, str);
        }

        @Override // android.util.Property
        public final /* synthetic */ C14495d get(AbstractC14490c abstractC14490c) {
            return abstractC14490c.mo10867c();
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(AbstractC14490c abstractC14490c, C14495d c14495d) {
            abstractC14490c.setRevealInfo(c14495d);
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$c.class */
    public static final class C14494c extends Property<AbstractC14490c, Integer> {

        /* renamed from: a */
        public static final Property<AbstractC14490c, Integer> f52927a = new C14494c("circularRevealScrimColor");

        private C14494c(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        public final /* synthetic */ Integer get(AbstractC14490c abstractC14490c) {
            return Integer.valueOf(abstractC14490c.mo10866d());
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(AbstractC14490c abstractC14490c, Integer num) {
            abstractC14490c.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$d.class */
    public static class C14495d {

        /* renamed from: a */
        public float f52928a;

        /* renamed from: b */
        public float f52929b;

        /* renamed from: c */
        public float f52930c;

        private C14495d() {
        }

        public C14495d(float f, float f2, float f3) {
            this.f52928a = f;
            this.f52929b = f2;
            this.f52930c = f3;
        }

        public C14495d(C14495d c14495d) {
            this(c14495d.f52928a, c14495d.f52929b, c14495d.f52930c);
        }

        /* renamed from: a */
        public final void m10872a(float f, float f2, float f3) {
            this.f52928a = f;
            this.f52929b = f2;
            this.f52930c = f3;
        }

        /* renamed from: a */
        public final void m10871a(C14495d c14495d) {
            m10872a(c14495d.f52928a, c14495d.f52929b, c14495d.f52930c);
        }

        /* renamed from: a */
        public final boolean m10873a() {
            return this.f52930c == Float.MAX_VALUE;
        }
    }

    /* renamed from: a */
    void mo10870a();

    /* renamed from: b */
    void mo10868b();

    /* renamed from: c */
    C14495d mo10867c();

    /* renamed from: d */
    int mo10866d();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(C14495d c14495d);
}
