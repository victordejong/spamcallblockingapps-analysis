package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.f;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/x.class */
public final class x extends n implements f, kotlin.reflect.jvm.internal.impl.load.java.d.x {

    /* renamed from: a  reason: collision with root package name */
    private final TypeVariable<?> f37489a;

    public x(TypeVariable<?> typeVariable) {
        p.d(typeVariable, "typeVariable");
        this.f37489a = typeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.f
    public final AnnotatedElement a() {
        TypeVariable<?> typeVariable = this.f37489a;
        if (typeVariable instanceof AnnotatedElement) {
            return (AnnotatedElement) typeVariable;
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* bridge */ /* synthetic */ a a(b bVar) {
        return f.a.a(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* synthetic */ Collection b() {
        return f.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        p.d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.x
    public final /* synthetic */ Collection d() {
        Type[] bounds = this.f37489a.getBounds();
        p.b(bounds, "typeVariable.bounds");
        Type[] typeArr = bounds;
        List arrayList = new ArrayList(typeArr.length);
        for (Type type : typeArr) {
            arrayList.add(new l(type));
        }
        List list = arrayList;
        l lVar = (l) n.j((List<? extends Object>) list);
        if (p.a(lVar == null ? null : lVar.f37477a, Object.class)) {
            list = z.f36608a;
        }
        return list;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof x) && p.a(this.f37489a, ((x) obj).f37489a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.s
    public final e h() {
        e a2 = e.a(this.f37489a.getName());
        p.b(a2, "identifier(typeVariable.name)");
        return a2;
    }

    public final int hashCode() {
        return this.f37489a.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f37489a;
    }
}
