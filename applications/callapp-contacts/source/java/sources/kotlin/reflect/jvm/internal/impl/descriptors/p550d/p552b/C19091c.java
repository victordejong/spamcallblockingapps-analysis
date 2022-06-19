package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19092d;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/c.class */
public final class C19091c extends AbstractC19112n implements AbstractC19389a {

    /* renamed from: a */
    public final Annotation f64817a;

    public C19091c(Annotation annotation) {
        C18524p.m3840d(annotation, "annotation");
        this.f64817a = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a
    /* renamed from: a */
    public final Collection<AbstractC19393b> mo2230a() {
        Method[] declaredMethods = C18458a.m3893a(C18458a.m3894a(this.f64817a)).getDeclaredMethods();
        C18524p.m3843b(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        Method[] methodArr = declaredMethods;
        ArrayList arrayList = new ArrayList(methodArr.length);
        for (Method method : methodArr) {
            AbstractC19092d.C19093a c19093a = AbstractC19092d.f64818a;
            Object invoke = method.invoke(this.f64817a, new Object[0]);
            C18524p.m3843b(invoke, "method.invoke(annotation)");
            arrayList.add(AbstractC19092d.C19093a.m2651a(invoke, C18966e.m2719a(method.getName())));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a
    /* renamed from: b */
    public final C18960a mo2229b() {
        return C19088b.m2654e(C18458a.m3893a(C18458a.m3894a(this.f64817a)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a
    /* renamed from: c */
    public final boolean mo2228c() {
        C18524p.m3840d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a
    /* renamed from: d */
    public final boolean mo2227d() {
        C18524p.m3840d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a
    /* renamed from: e */
    public final /* synthetic */ AbstractC19398g mo2226e() {
        return new C19100j(C18458a.m3893a(C18458a.m3894a(this.f64817a)));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C19091c) && C18524p.m3850a(this.f64817a, ((C19091c) obj).f64817a);
    }

    public final int hashCode() {
        return this.f64817a.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f64817a;
    }
}
