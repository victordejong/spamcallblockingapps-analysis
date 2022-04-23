package com.esotericsoftware.kryo.c;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/e.class */
public interface e {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Type f18993a;

        /* renamed from: b  reason: collision with root package name */
        a[] f18994b;

        public a(Class cls, Class cls2, Type type) {
            a(cls, cls2, type);
        }

        private void a(Class cls, Class cls2, Type type) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                this.f18993a = (Class) parameterizedType.getRawType();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                int length = actualTypeArguments.length;
                this.f18994b = new a[length];
                for (int i = 0; i < length; i++) {
                    this.f18994b[i] = new a(cls, cls2, actualTypeArguments[i]);
                }
            } else if (type instanceof GenericArrayType) {
                int i2 = 1;
                while (true) {
                    type = ((GenericArrayType) type).getGenericComponentType();
                    if (!(type instanceof GenericArrayType)) {
                        break;
                    }
                    i2++;
                }
                a(cls, cls2, type);
                Type a2 = f.a(cls, cls2, type);
                if (!(a2 instanceof Class)) {
                    return;
                }
                if (i2 == 1) {
                    this.f18993a = Array.newInstance((Class) a2, 0).getClass();
                } else {
                    this.f18993a = Array.newInstance((Class) a2, new int[i2]).getClass();
                }
            } else {
                this.f18993a = f.a(cls, cls2, type);
            }
        }

        public final Class a(e eVar) {
            Type type = this.f18993a;
            return type instanceof Class ? (Class) type : eVar.a((TypeVariable) type);
        }

        public final String toString() {
            boolean z;
            StringBuilder sb = new StringBuilder(32);
            Type type = this.f18993a;
            if (type instanceof Class) {
                Class cls = (Class) type;
                boolean isArray = cls.isArray();
                Class cls2 = cls;
                if (isArray) {
                    cls2 = n.g(cls);
                }
                sb.append(cls2.getSimpleName());
                z = isArray;
                if (this.f18994b != null) {
                    sb.append('<');
                    int length = this.f18994b.length;
                    for (int i = 0; i < length; i++) {
                        if (i > 0) {
                            sb.append(", ");
                        }
                        sb.append(this.f18994b[i].toString());
                    }
                    sb.append('>');
                    z = isArray;
                }
            } else {
                sb.append(type.toString());
                z = false;
            }
            if (z) {
                int f = n.f((Class) this.f18993a);
                for (int i2 = 0; i2 < f; i2++) {
                    sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                }
            }
            return sb.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/e$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f18995a;

        /* renamed from: b  reason: collision with root package name */
        final int f18996b;

        /* renamed from: c  reason: collision with root package name */
        final int[] f18997c;

        /* renamed from: d  reason: collision with root package name */
        final TypeVariable[] f18998d;

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0117, code lost:
            r15 = r15 + r0.f18999a[r0.f19000b - 1];
            r14 = r14 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b(java.lang.Class r7) {
            /*
                Method dump skipped, instructions count: 381
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.c.e.b.<init>(java.lang.Class):void");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int[] iArr = this.f18997c;
            TypeVariable[] typeVariableArr = this.f18998d;
            int i = 0;
            for (int i2 : iArr) {
                i = i;
                while (i < i2 + i) {
                    if (sb.length() > 1) {
                        sb.append(", ");
                    }
                    GenericDeclaration genericDeclaration = typeVariableArr[i].getGenericDeclaration();
                    if (genericDeclaration instanceof Class) {
                        sb.append(((Class) genericDeclaration).getSimpleName());
                    } else {
                        sb.append(genericDeclaration);
                    }
                    sb.append('<');
                    sb.append(typeVariableArr[i].getName());
                    sb.append('>');
                    i++;
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    int a(b bVar, a[] aVarArr);

    Class a(TypeVariable typeVariable);

    void a();

    void a(int i);

    void a(a aVar);

    a[] b();

    Class c();
}
