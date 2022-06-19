package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19402k;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/m.class */
public final class C19111m extends AbstractC19116r implements AbstractC19402k {

    /* renamed from: a */
    public final Constructor<?> f64838a;

    public C19111m(Constructor<?> member) {
        C18524p.m3840d(member, "member");
        this.f64838a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19402k
    /* renamed from: e */
    public final List<AbstractC19417z> mo2198e() {
        Type[] types = this.f64838a.getGenericParameterTypes();
        C18524p.m3843b(types, "types");
        if (types.length == 0) {
            return C18297z.f63400a;
        }
        Class<?> declaringClass = this.f64838a.getDeclaringClass();
        Type[] typeArr = types;
        if (declaringClass.getDeclaringClass() != null) {
            typeArr = types;
            if (!Modifier.isStatic(declaringClass.getModifiers())) {
                typeArr = (Type[]) C18273i.m4220a(types, 1, types.length);
            }
        }
        Annotation[][] annotations = this.f64838a.getParameterAnnotations();
        Annotation[][] annotationArr = annotations;
        if (annotationArr.length < typeArr.length) {
            throw new IllegalStateException(C18524p.m3847a("Illegal generic signature: ", (Object) this.f64838a));
        }
        Annotation[][] annotationArr2 = annotations;
        if (annotationArr.length > typeArr.length) {
            C18524p.m3843b(annotations, "annotations");
            annotationArr2 = (Annotation[][]) C18273i.m4220a(annotationArr, annotationArr.length - typeArr.length, annotationArr.length);
        }
        Type[] realTypes = typeArr;
        C18524p.m3843b(realTypes, "realTypes");
        Annotation[][] realAnnotations = annotationArr2;
        C18524p.m3843b(realAnnotations, "realAnnotations");
        return m2646a(typeArr, annotationArr2, this.f64838a.isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19116r
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ Member mo2645f() {
        return this.f64838a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y
    /* renamed from: i */
    public final List<C19124x> mo2177i() {
        TypeVariable<Constructor<?>>[] typeParameters = this.f64838a.getTypeParameters();
        C18524p.m3843b(typeParameters, "member.typeParameters");
        TypeVariable<Constructor<?>>[] typeVariableArr = typeParameters;
        ArrayList arrayList = new ArrayList(typeVariableArr.length);
        for (TypeVariable<Constructor<?>> typeVariable : typeVariableArr) {
            arrayList.add(new C19124x(typeVariable));
        }
        return arrayList;
    }
}
