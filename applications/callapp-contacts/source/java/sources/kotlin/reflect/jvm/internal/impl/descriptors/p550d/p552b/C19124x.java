package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19095f;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.x */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/x.class */
public final class C19124x extends AbstractC19112n implements AbstractC19095f, AbstractC19415x {

    /* renamed from: a */
    private final TypeVariable<?> f64848a;

    public C19124x(TypeVariable<?> typeVariable) {
        C18524p.m3840d(typeVariable, "typeVariable");
        this.f64848a = typeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19095f
    /* renamed from: a */
    public final AnnotatedElement mo2638a() {
        TypeVariable<?> typeVariable = this.f64848a;
        if (typeVariable instanceof AnnotatedElement) {
            return (AnnotatedElement) typeVariable;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC19389a mo2221a(C18961b c18961b) {
        return AbstractC19095f.C19096a.m2649a(this, c18961b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final /* synthetic */ Collection mo2220b() {
        return AbstractC19095f.C19096a.m2650a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        C18524p.m3840d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x
    /* renamed from: d */
    public final /* synthetic */ Collection mo2178d() {
        Type[] bounds = this.f64848a.getBounds();
        C18524p.m3843b(bounds, "typeVariable.bounds");
        Type[] typeArr = bounds;
        List arrayList = new ArrayList(typeArr.length);
        for (Type type : typeArr) {
            arrayList.add(new C19110l(type));
        }
        List list = arrayList;
        C19110l c19110l = (C19110l) C18282n.m4113j((List<? extends Object>) list);
        if (C18524p.m3850a(c19110l == null ? null : c19110l.f64836a, Object.class)) {
            list = C18297z.f63400a;
        }
        return list;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C19124x) && C18524p.m3850a(this.f64848a, ((C19124x) obj).f64848a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19410s
    /* renamed from: h */
    public final C18966e mo2183h() {
        C18966e m2719a = C18966e.m2719a(this.f64848a.getName());
        C18524p.m3843b(m2719a, "identifier(typeVariable.name)");
        return m2719a;
    }

    public final int hashCode() {
        return this.f64848a.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f64848a;
    }
}
