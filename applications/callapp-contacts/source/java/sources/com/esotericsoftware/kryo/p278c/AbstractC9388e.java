package com.esotericsoftware.kryo.p278c;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import okhttp3.HttpUrl;
/* renamed from: com.esotericsoftware.kryo.c.e */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/e.class */
public interface AbstractC9388e {

    /* renamed from: com.esotericsoftware.kryo.c.e$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/e$a.class */
    public static final class C9389a {

        /* renamed from: a */
        public Type f32296a;

        /* renamed from: b */
        C9389a[] f32297b;

        public C9389a(Class cls, Class cls2, Type type) {
            m24340a(cls, cls2, type);
        }

        /* renamed from: a */
        private void m24340a(Class cls, Class cls2, Type type) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                this.f32296a = (Class) parameterizedType.getRawType();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                int length = actualTypeArguments.length;
                this.f32297b = new C9389a[length];
                for (int i = 0; i < length; i++) {
                    this.f32297b[i] = new C9389a(cls, cls2, actualTypeArguments[i]);
                }
            } else if (!(type instanceof GenericArrayType)) {
                this.f32296a = C9391f.m24339a(cls, cls2, type);
            } else {
                int i2 = 1;
                while (true) {
                    type = ((GenericArrayType) type).getGenericComponentType();
                    if (!(type instanceof GenericArrayType)) {
                        break;
                    }
                    i2++;
                }
                m24340a(cls, cls2, type);
                Type m24339a = C9391f.m24339a(cls, cls2, type);
                if (!(m24339a instanceof Class)) {
                    return;
                }
                if (i2 == 1) {
                    this.f32296a = Array.newInstance((Class) m24339a, 0).getClass();
                } else {
                    this.f32296a = Array.newInstance((Class) m24339a, new int[i2]).getClass();
                }
            }
        }

        /* renamed from: a */
        public final Class m24341a(AbstractC9388e abstractC9388e) {
            Type type = this.f32296a;
            return type instanceof Class ? (Class) type : abstractC9388e.mo24344a((TypeVariable) type);
        }

        public final String toString() {
            boolean z;
            StringBuilder sb = new StringBuilder(32);
            Type type = this.f32296a;
            if (type instanceof Class) {
                Class cls = (Class) type;
                boolean isArray = cls.isArray();
                Class cls2 = cls;
                if (isArray) {
                    cls2 = C9408n.m24289g(cls);
                }
                sb.append(cls2.getSimpleName());
                z = isArray;
                if (this.f32297b != null) {
                    sb.append('<');
                    int length = this.f32297b.length;
                    for (int i = 0; i < length; i++) {
                        if (i > 0) {
                            sb.append(", ");
                        }
                        sb.append(this.f32297b[i].toString());
                    }
                    sb.append('>');
                    z = isArray;
                }
            } else {
                sb.append(type.toString());
                z = false;
            }
            if (z) {
                int m24290f = C9408n.m24290f((Class) this.f32296a);
                for (int i2 = 0; i2 < m24290f; i2++) {
                    sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                }
            }
            return sb.toString();
        }
    }

    /* renamed from: com.esotericsoftware.kryo.c.e$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/e$b.class */
    public static final class C9390b {

        /* renamed from: a */
        final int f32298a;

        /* renamed from: b */
        final int f32299b;

        /* renamed from: c */
        final int[] f32300c;

        /* renamed from: d */
        final TypeVariable[] f32301d;

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0117, code lost:
            r15 = r15 + r0.f32302a[r0.f32303b - 1];
            r14 = r14 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C9390b(java.lang.Class r7) {
            /*
                Method dump skipped, instructions count: 381
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.p278c.AbstractC9388e.C9390b.<init>(java.lang.Class):void");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int[] iArr = this.f32300c;
            TypeVariable[] typeVariableArr = this.f32301d;
            int length = iArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    sb.append("]");
                    return sb.toString();
                }
                int i4 = iArr[i];
                i2 = i3;
                while (i2 < i4 + i3) {
                    if (sb.length() > 1) {
                        sb.append(", ");
                    }
                    GenericDeclaration genericDeclaration = typeVariableArr[i2].getGenericDeclaration();
                    if (genericDeclaration instanceof Class) {
                        sb.append(((Class) genericDeclaration).getSimpleName());
                    } else {
                        sb.append(genericDeclaration);
                    }
                    sb.append('<');
                    sb.append(typeVariableArr[i2].getName());
                    sb.append('>');
                    i2++;
                }
                i++;
            }
        }
    }

    /* renamed from: a */
    int mo24345a(C9390b c9390b, C9389a[] c9389aArr);

    /* renamed from: a */
    Class mo24344a(TypeVariable typeVariable);

    /* renamed from: a */
    void mo24348a();

    /* renamed from: a */
    void mo24347a(int i);

    /* renamed from: a */
    void mo24346a(C9389a c9389a);

    /* renamed from: b */
    C9389a[] mo24343b();

    /* renamed from: c */
    Class mo24342c();
}
