package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c.class */
public interface c extends b.a {

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$a.class */
    public static final class a implements TypeEvaluator<d> {

        /* renamed from: a  reason: collision with root package name */
        public static final TypeEvaluator<d> f30395a = new a();

        /* renamed from: b  reason: collision with root package name */
        private final d f30396b = new d();

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ d evaluate(float f, d dVar, d dVar2) {
            d dVar3 = dVar;
            d dVar4 = dVar2;
            this.f30396b.a(com.google.android.material.g.a.a(dVar3.f30399a, dVar4.f30399a, f), com.google.android.material.g.a.a(dVar3.f30400b, dVar4.f30400b, f), com.google.android.material.g.a.a(dVar3.f30401c, dVar4.f30401c, f));
            return this.f30396b;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$b.class */
    public static final class b extends Property<c, d> {

        /* renamed from: a  reason: collision with root package name */
        public static final Property<c, d> f30397a = new b("circularReveal");

        private b(String str) {
            super(d.class, str);
        }

        @Override // android.util.Property
        public final /* synthetic */ d get(c cVar) {
            return cVar.c();
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(c cVar, d dVar) {
            cVar.setRevealInfo(dVar);
        }
    }

    /* renamed from: com.google.android.material.circularreveal.c$c  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$c.class */
    public static final class C0487c extends Property<c, Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final Property<c, Integer> f30398a = new C0487c("circularRevealScrimColor");

        private C0487c(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        public final /* synthetic */ Integer get(c cVar) {
            return Integer.valueOf(cVar.d());
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(c cVar, Integer num) {
            cVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/c$d.class */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public float f30399a;

        /* renamed from: b  reason: collision with root package name */
        public float f30400b;

        /* renamed from: c  reason: collision with root package name */
        public float f30401c;

        private d() {
        }

        public d(float f, float f2, float f3) {
            this.f30399a = f;
            this.f30400b = f2;
            this.f30401c = f3;
        }

        public d(d dVar) {
            this(dVar.f30399a, dVar.f30400b, dVar.f30401c);
        }

        public final void a(float f, float f2, float f3) {
            this.f30399a = f;
            this.f30400b = f2;
            this.f30401c = f3;
        }

        public final void a(d dVar) {
            a(dVar.f30399a, dVar.f30400b, dVar.f30401c);
        }

        public final boolean a() {
            return this.f30401c == Float.MAX_VALUE;
        }
    }

    void a();

    void b();

    d c();

    int d();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(d dVar);
}
