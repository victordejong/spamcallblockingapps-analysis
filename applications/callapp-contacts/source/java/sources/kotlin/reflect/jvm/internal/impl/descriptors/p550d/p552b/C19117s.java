package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19092d;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/s.class */
public final class C19117s extends AbstractC19116r implements AbstractC19408q {

    /* renamed from: a */
    public final Method f64842a;

    public C19117s(Method member) {
        C18524p.m3840d(member, "member");
        this.f64842a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q
    /* renamed from: e */
    public final List<AbstractC19417z> mo2191e() {
        Type[] genericParameterTypes = this.f64842a.getGenericParameterTypes();
        C18524p.m3843b(genericParameterTypes, "member.genericParameterTypes");
        Annotation[][] parameterAnnotations = this.f64842a.getParameterAnnotations();
        C18524p.m3843b(parameterAnnotations, "member.parameterAnnotations");
        return m2646a(genericParameterTypes, parameterAnnotations, this.f64842a.isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19116r
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ Member mo2645f() {
        return this.f64842a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q
    /* renamed from: g */
    public final AbstractC19393b mo2190g() {
        Object defaultValue = this.f64842a.getDefaultValue();
        AbstractC19092d abstractC19092d = null;
        if (defaultValue != null) {
            AbstractC19092d.C19093a c19093a = AbstractC19092d.f64818a;
            abstractC19092d = AbstractC19092d.C19093a.m2651a(defaultValue, null);
        }
        return abstractC19092d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y
    /* renamed from: i */
    public final List<C19124x> mo2177i() {
        TypeVariable<Method>[] typeParameters = this.f64842a.getTypeParameters();
        C18524p.m3843b(typeParameters, "member.typeParameters");
        TypeVariable<Method>[] typeVariableArr = typeParameters;
        ArrayList arrayList = new ArrayList(typeVariableArr.length);
        for (TypeVariable<Method> typeVariable : typeVariableArr) {
            arrayList.add(new C19124x(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q
    /* renamed from: k */
    public final boolean mo2189k() {
        C18524p.m3840d(this, "this");
        return mo2190g() != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q
    /* renamed from: l */
    public final /* synthetic */ AbstractC19414w mo2188l() {
        AbstractC19122w.C19123a c19123a = AbstractC19122w.f64847b;
        Type genericReturnType = this.f64842a.getGenericReturnType();
        C18524p.m3843b(genericReturnType, "member.genericReturnType");
        return AbstractC19122w.C19123a.m2639a(genericReturnType);
    }
}
