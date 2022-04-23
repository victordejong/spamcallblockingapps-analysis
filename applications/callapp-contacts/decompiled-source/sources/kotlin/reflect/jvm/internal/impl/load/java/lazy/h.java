package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.load.java.d.x;
import kotlin.reflect.jvm.internal.impl.load.java.d.y;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/h.class */
public final class h implements k {

    /* renamed from: a  reason: collision with root package name */
    final g f37886a;

    /* renamed from: b  reason: collision with root package name */
    final k f37887b;

    /* renamed from: c  reason: collision with root package name */
    final int f37888c;

    /* renamed from: d  reason: collision with root package name */
    final Map<x, Integer> f37889d;
    private final kotlin.reflect.jvm.internal.impl.f.h<x, LazyJavaTypeParameterDescriptor> e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/h$a.class */
    static final class a extends r implements Function1<x, LazyJavaTypeParameterDescriptor> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ LazyJavaTypeParameterDescriptor invoke(x xVar) {
            x typeParameter = xVar;
            p.d(typeParameter, "typeParameter");
            Integer num = h.this.f37889d.get(typeParameter);
            if (num == null) {
                return null;
            }
            h hVar = h.this;
            int intValue = num.intValue();
            g gVar = hVar.f37886a;
            h typeParameterResolver = hVar;
            p.d(gVar, "<this>");
            p.d(typeParameterResolver, "typeParameterResolver");
            return new LazyJavaTypeParameterDescriptor(kotlin.reflect.jvm.internal.impl.load.java.lazy.a.b(new g(gVar.f37882a, typeParameterResolver, gVar.f37884c), hVar.f37887b.getAnnotations()), typeParameter, hVar.f37888c + intValue, hVar.f37887b);
        }
    }

    public h(g c2, k containingDeclaration, y typeParameterOwner, int i) {
        p.d(c2, "c");
        p.d(containingDeclaration, "containingDeclaration");
        p.d(typeParameterOwner, "typeParameterOwner");
        this.f37886a = c2;
        this.f37887b = containingDeclaration;
        this.f37888c = i;
        this.f37889d = kotlin.reflect.jvm.internal.impl.utils.a.a(typeParameterOwner.i());
        this.e = c2.f37882a.f37782a.b(new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.k
    public final TypeParameterDescriptor a(x javaTypeParameter) {
        p.d(javaTypeParameter, "javaTypeParameter");
        LazyJavaTypeParameterDescriptor invoke = this.e.invoke(javaTypeParameter);
        return invoke == null ? this.f37886a.f37883b.a(javaTypeParameter) : invoke;
    }
}
