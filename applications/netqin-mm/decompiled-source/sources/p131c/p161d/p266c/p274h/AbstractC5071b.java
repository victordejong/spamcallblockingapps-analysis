package p131c.p161d.p266c.p274h;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
/* renamed from: c.d.c.h.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/h/b.class */
public abstract class AbstractC5071b<T, R> extends C5070a implements GenericDeclaration {

    /* renamed from: c.d.c.h.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/b$a.class */
    public static class C5072a<T> extends AbstractC5071b<T, T> {

        /* renamed from: c */
        public final Constructor<?> f17665c;

        public C5072a(Constructor<?> constructor) {
            super(constructor);
            this.f17665c = constructor;
        }

        /* renamed from: b */
        public Type[] mo7768b() {
            Type[] genericParameterTypes = this.f17665c.getGenericParameterTypes();
            Type[] typeArr = genericParameterTypes;
            if (genericParameterTypes.length > 0) {
                typeArr = genericParameterTypes;
                if (m24557c()) {
                    Class<?>[] parameterTypes = this.f17665c.getParameterTypes();
                    typeArr = genericParameterTypes;
                    if (genericParameterTypes.length == parameterTypes.length) {
                        typeArr = genericParameterTypes;
                        if (parameterTypes[0] == getDeclaringClass().getEnclosingClass()) {
                            typeArr = (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                        }
                    }
                }
            }
            return typeArr;
        }

        /* renamed from: c */
        public final boolean m24557c() {
            Class<?> declaringClass = this.f17665c.getDeclaringClass();
            boolean z = true;
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                return !Modifier.isStatic(enclosingMethod.getModifiers());
            }
            if (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) {
                z = false;
            }
            return z;
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.f17665c.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }
    }

    /* renamed from: c.d.c.h.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/b$b.class */
    public static class C5073b<T> extends AbstractC5071b<T, Object> {

        /* renamed from: c */
        public final Method f17666c;

        public C5073b(Method method) {
            super(method);
            this.f17666c = method;
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            return this.f17666c.getTypeParameters();
        }
    }

    public <M extends AccessibleObject & Member> AbstractC5071b(M m) {
        super(m);
    }

    @Override // p131c.p161d.p266c.p274h.C5070a, java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) super.getDeclaringClass();
    }
}
