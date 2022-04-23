package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.b;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.z;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/s.class */
public final class s extends r implements q {

    /* renamed from: a  reason: collision with root package name */
    public final Method f37483a;

    public s(Method member) {
        p.d(member, "member");
        this.f37483a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.q
    public final List<z> e() {
        Type[] genericParameterTypes = this.f37483a.getGenericParameterTypes();
        p.b(genericParameterTypes, "member.genericParameterTypes");
        Annotation[][] parameterAnnotations = this.f37483a.getParameterAnnotations();
        p.b(parameterAnnotations, "member.parameterAnnotations");
        return a(genericParameterTypes, parameterAnnotations, this.f37483a.isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.r
    public final /* bridge */ /* synthetic */ Member f() {
        return this.f37483a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.q
    public final b g() {
        Object defaultValue = this.f37483a.getDefaultValue();
        d dVar = null;
        if (defaultValue != null) {
            d.a aVar = d.f37460a;
            dVar = d.a.a(defaultValue, null);
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.y
    public final List<x> i() {
        TypeVariable<Method>[] typeParameters = this.f37483a.getTypeParameters();
        p.b(typeParameters, "member.typeParameters");
        TypeVariable<Method>[] typeVariableArr = typeParameters;
        ArrayList arrayList = new ArrayList(typeVariableArr.length);
        for (TypeVariable<Method> typeVariable : typeVariableArr) {
            arrayList.add(new x(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.q
    public final boolean k() {
        p.d(this, "this");
        return g() != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.q
    public final /* synthetic */ w l() {
        w.a aVar = w.f37488b;
        Type genericReturnType = this.f37483a.getGenericReturnType();
        p.b(genericReturnType, "member.genericReturnType");
        return w.a.a(genericReturnType);
    }
}
