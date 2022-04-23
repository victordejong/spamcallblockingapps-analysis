package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.a.i;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.java.d.k;
import kotlin.reflect.jvm.internal.impl.load.java.d.z;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/m.class */
public final class m extends r implements k {

    /* renamed from: a  reason: collision with root package name */
    public final Constructor<?> f37479a;

    public m(Constructor<?> member) {
        p.d(member, "member");
        this.f37479a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.k
    public final List<z> e() {
        Type[] types = this.f37479a.getGenericParameterTypes();
        p.b(types, "types");
        if (types.length == 0) {
            return kotlin.a.z.f36608a;
        }
        Class<?> declaringClass = this.f37479a.getDeclaringClass();
        Type[] realTypes = types;
        if (declaringClass.getDeclaringClass() != null) {
            realTypes = types;
            if (!Modifier.isStatic(declaringClass.getModifiers())) {
                realTypes = (Type[]) i.a(types, 1, types.length);
            }
        }
        Annotation[][] annotations = this.f37479a.getParameterAnnotations();
        Annotation[][] annotationArr = annotations;
        if (annotationArr.length >= realTypes.length) {
            Annotation[][] realAnnotations = annotations;
            if (annotationArr.length > realTypes.length) {
                p.b(annotations, "annotations");
                realAnnotations = (Annotation[][]) i.a(annotationArr, annotationArr.length - realTypes.length, annotationArr.length);
            }
            p.b(realTypes, "realTypes");
            p.b(realAnnotations, "realAnnotations");
            return a(realTypes, realAnnotations, this.f37479a.isVarArgs());
        }
        throw new IllegalStateException(p.a("Illegal generic signature: ", (Object) this.f37479a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.r
    public final /* bridge */ /* synthetic */ Member f() {
        return this.f37479a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.y
    public final List<x> i() {
        TypeVariable<Constructor<?>>[] typeParameters = this.f37479a.getTypeParameters();
        p.b(typeParameters, "member.typeParameters");
        TypeVariable<Constructor<?>>[] typeVariableArr = typeParameters;
        ArrayList arrayList = new ArrayList(typeVariableArr.length);
        for (TypeVariable<Constructor<?>> typeVariable : typeVariableArr) {
            arrayList.add(new x(typeVariable));
        }
        return arrayList;
    }
}
