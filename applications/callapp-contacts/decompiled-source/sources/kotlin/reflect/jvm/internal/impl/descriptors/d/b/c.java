package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.d;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.b;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/c.class */
public final class c extends n implements a {

    /* renamed from: a  reason: collision with root package name */
    public final Annotation f37459a;

    public c(Annotation annotation) {
        p.d(annotation, "annotation");
        this.f37459a = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.a
    public final Collection<b> a() {
        Method[] declaredMethods = kotlin.jvm.a.a(kotlin.jvm.a.a(this.f37459a)).getDeclaredMethods();
        p.b(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        Method[] methodArr = declaredMethods;
        ArrayList arrayList = new ArrayList(methodArr.length);
        for (Method method : methodArr) {
            d.a aVar = d.f37460a;
            Object invoke = method.invoke(this.f37459a, new Object[0]);
            p.b(invoke, "method.invoke(annotation)");
            arrayList.add(d.a.a(invoke, e.a(method.getName())));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.a
    public final kotlin.reflect.jvm.internal.impl.c.a b() {
        return b.e(kotlin.jvm.a.a(kotlin.jvm.a.a(this.f37459a)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.a
    public final boolean c() {
        p.d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.a
    public final boolean d() {
        p.d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.a
    public final /* synthetic */ g e() {
        return new j(kotlin.jvm.a.a(kotlin.jvm.a.a(this.f37459a)));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && p.a(this.f37459a, ((c) obj).f37459a);
    }

    public final int hashCode() {
        return this.f37459a.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f37459a;
    }
}
