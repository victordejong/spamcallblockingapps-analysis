package com.google.gson.a;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Properties;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f4485a = new Type[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/b$a.class */
    public static final class a implements Serializable, GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f4486a;

        public a(Type type) {
            this.f4486a = b.a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && b.a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f4486a;
        }

        public final int hashCode() {
            return this.f4486a.hashCode();
        }

        public final String toString() {
            return b.c(this.f4486a) + "[]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.gson.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/b$b.class */
    public static final class C0132b implements Serializable, ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f4487a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f4488b;
        private final Type[] c;

        public C0132b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                com.google.gson.a.a.a(type != null || cls.getEnclosingClass() == null);
                com.google.gson.a.a.a(type != null ? cls.getEnclosingClass() != null : true);
            }
            this.f4487a = type == null ? null : b.a(type);
            this.f4488b = b.a(type2);
            this.c = (Type[]) typeArr.clone();
            for (int i = 0; i < this.c.length; i++) {
                com.google.gson.a.a.a(this.c[i]);
                b.e(this.c[i]);
                this.c[i] = b.a(this.c[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && b.a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f4487a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f4488b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.c) ^ this.f4488b.hashCode()) ^ b.a((Object) this.f4487a);
        }

        public final String toString() {
            String sb;
            StringBuilder sb2 = new StringBuilder((this.c.length + 1) * 30);
            sb2.append(b.c(this.f4488b));
            if (this.c.length == 0) {
                sb = sb2.toString();
            } else {
                sb2.append("<").append(b.c(this.c[0]));
                for (int i = 1; i < this.c.length; i++) {
                    sb2.append(", ").append(b.c(this.c[i]));
                }
                sb = sb2.append(">").toString();
            }
            return sb;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/b$c.class */
    public static final class c implements Serializable, WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f4489a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f4490b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z = true;
            com.google.gson.a.a.a(typeArr2.length <= 1);
            com.google.gson.a.a.a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                com.google.gson.a.a.a(typeArr2[0]);
                b.e(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                com.google.gson.a.a.a(z);
                this.f4490b = b.a(typeArr2[0]);
                this.f4489a = Object.class;
                return;
            }
            com.google.gson.a.a.a(typeArr[0]);
            b.e(typeArr[0]);
            this.f4490b = null;
            this.f4489a = b.a(typeArr[0]);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && b.a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            return this.f4490b != null ? new Type[]{this.f4490b} : b.f4485a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f4489a};
        }

        public final int hashCode() {
            return (this.f4490b != null ? this.f4490b.hashCode() + 31 : 1) ^ (this.f4489a.hashCode() + 31);
        }

        public final String toString() {
            return this.f4490b != null ? "? super " + b.c(this.f4490b) : this.f4489a == Object.class ? "?" : "? extends " + b.c(this.f4489a);
        }
    }

    static /* synthetic */ int a(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            boolean isArray = cls.isArray();
            a aVar = cls;
            if (isArray) {
                aVar = new a(a((Type) cls.getComponentType()));
            }
            type = aVar;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            type = new C0132b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            type = new a(((GenericArrayType) type).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            type = new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
        return type;
    }

    public static Type a(Type type, Class<?> cls) {
        Type b2 = b(type, cls, Collection.class);
        Type type2 = b2;
        if (b2 instanceof WildcardType) {
            type2 = ((WildcardType) b2).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    private static Type a(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        Class<?> cls3 = cls;
        loop0: while (true) {
            if (cls2 == cls3) {
                break;
            }
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls3.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == cls2) {
                        type2 = cls3.getGenericInterfaces()[i];
                        break loop0;
                    } else if (cls2.isAssignableFrom(interfaces[i])) {
                        type2 = cls3.getGenericInterfaces()[i];
                        cls3 = interfaces[i];
                        break;
                    }
                }
            }
            type2 = cls2;
            if (cls3.isInterface()) {
                break;
            }
            while (true) {
                type2 = cls2;
                if (cls3 == Object.class) {
                    break loop0;
                }
                cls3 = cls3.getSuperclass();
                if (cls3 == cls2) {
                    type2 = cls3.getGenericSuperclass();
                    break loop0;
                } else if (cls2.isAssignableFrom(cls3)) {
                    type2 = cls3.getGenericSuperclass();
                    break;
                }
            }
        }
        return type2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0065 A[EDGE_INSN: B:73:0x0065->B:20:0x0065 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v15, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r10v17, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r10v19, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.google.gson.a.b$c] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [com.google.gson.a.b$c] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [com.google.gson.a.b$b] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type a(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.b.a(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    public static boolean a(Type type, Type type2) {
        boolean z;
        Type type3 = type2;
        Type type4 = type;
        while (true) {
            if (type4 == type3) {
                z = true;
                break;
            } else if (type4 instanceof Class) {
                z = type4.equals(type3);
                break;
            } else if (type4 instanceof ParameterizedType) {
                if (!(type3 instanceof ParameterizedType)) {
                    z = false;
                } else {
                    ParameterizedType parameterizedType = (ParameterizedType) type4;
                    ParameterizedType parameterizedType2 = (ParameterizedType) type3;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type ownerType2 = parameterizedType2.getOwnerType();
                    z = (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
                }
            } else if (type4 instanceof GenericArrayType) {
                if (!(type3 instanceof GenericArrayType)) {
                    z = false;
                    break;
                }
                type4 = ((GenericArrayType) type4).getGenericComponentType();
                type3 = ((GenericArrayType) type3).getGenericComponentType();
            } else if (type4 instanceof WildcardType) {
                if (!(type3 instanceof WildcardType)) {
                    z = false;
                } else {
                    WildcardType wildcardType = (WildcardType) type4;
                    WildcardType wildcardType2 = (WildcardType) type3;
                    z = Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
                }
            } else if (!(type4 instanceof TypeVariable)) {
                z = false;
            } else if (!(type3 instanceof TypeVariable)) {
                z = false;
            } else {
                TypeVariable typeVariable = (TypeVariable) type4;
                TypeVariable typeVariable2 = (TypeVariable) type3;
                z = typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Class<?> b(java.lang.reflect.Type r6) {
        /*
        L_0x0000:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x000e
            r0 = r6
            java.lang.Class r0 = (java.lang.Class) r0
            r6 = r0
        L_0x000c:
            r0 = r6
            return r0
        L_0x000e:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.reflect.ParameterizedType
            if (r0 == 0) goto L_0x002e
            r0 = r6
            java.lang.reflect.ParameterizedType r0 = (java.lang.reflect.ParameterizedType) r0
            java.lang.reflect.Type r0 = r0.getRawType()
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.lang.Class
            com.google.gson.a.a.a(r0)
            r0 = r6
            java.lang.Class r0 = (java.lang.Class) r0
            r6 = r0
            goto L_0x000c
        L_0x002e:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.reflect.GenericArrayType
            if (r0 == 0) goto L_0x004c
            r0 = r6
            java.lang.reflect.GenericArrayType r0 = (java.lang.reflect.GenericArrayType) r0
            java.lang.reflect.Type r0 = r0.getGenericComponentType()
            java.lang.Class r0 = b(r0)
            r1 = 0
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r0, r1)
            java.lang.Class r0 = r0.getClass()
            r6 = r0
            goto L_0x000c
        L_0x004c:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 == 0) goto L_0x0059
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            r6 = r0
            goto L_0x000c
        L_0x0059:
            r0 = r6
            boolean r0 = r0 instanceof java.lang.reflect.WildcardType
            if (r0 == 0) goto L_0x006f
            r0 = r6
            java.lang.reflect.WildcardType r0 = (java.lang.reflect.WildcardType) r0
            java.lang.reflect.Type[] r0 = r0.getUpperBounds()
            r1 = 0
            r0 = r0[r1]
            r6 = r0
            goto L_0x0000
        L_0x006f:
            r0 = r6
            if (r0 != 0) goto L_0x0097
            java.lang.String r0 = "null"
            r7 = r0
        L_0x0076:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = r2
            java.lang.String r4 = "Expected a Class, ParameterizedType, or GenericArrayType, but <"
            r3.<init>(r4)
            r3 = r6
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "> is of type "
            java.lang.StringBuilder r2 = r2.append(r3)
            r3 = r7
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0097:
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r7 = r0
            goto L_0x0076
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.b.b(java.lang.reflect.Type):java.lang.Class");
    }

    private static Type b(Type type, Class<?> cls, Class<?> cls2) {
        com.google.gson.a.a.a(cls2.isAssignableFrom(cls));
        return a(type, cls, a(type, cls, cls2));
    }

    public static Type[] b(Type type, Class<?> cls) {
        Type[] actualTypeArguments;
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            Type b2 = b(type, cls, Map.class);
            actualTypeArguments = b2 instanceof ParameterizedType ? ((ParameterizedType) b2).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        return actualTypeArguments;
    }

    public static String c(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    static /* synthetic */ void e(Type type) {
        com.google.gson.a.a.a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    private static GenericArrayType f(Type type) {
        return new a(type);
    }
}
