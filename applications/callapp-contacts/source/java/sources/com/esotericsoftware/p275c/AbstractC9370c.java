package com.esotericsoftware.p275c;

import com.esotericsoftware.p273a.AbstractC9361q;
import com.esotericsoftware.p273a.C9351g;
import com.esotericsoftware.p273a.C9360p;
import com.esotericsoftware.p273a.C9364t;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: com.esotericsoftware.c.c */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/c/c.class */
public abstract class AbstractC9370c {

    /* renamed from: a */
    private String[] f32200a;

    /* renamed from: b */
    private Class[] f32201b;

    /* renamed from: c */
    private Field[] f32202c;

    /* renamed from: a */
    private static AbstractC9361q m24479a(AbstractC9361q abstractC9361q) {
        abstractC9361q.mo24548a(187, "java/lang/IllegalArgumentException");
        abstractC9361q.mo24556a(89);
        abstractC9361q.mo24548a(187, "java/lang/StringBuilder");
        abstractC9361q.mo24556a(89);
        abstractC9361q.mo24537a("Field not found: ");
        abstractC9361q.m24558b(183, "java/lang/StringBuilder", "<init>", "(Ljava/lang/String;)V");
        abstractC9361q.mo24527b(21, 2);
        abstractC9361q.m24558b(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
        abstractC9361q.m24558b(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
        abstractC9361q.m24558b(183, "java/lang/IllegalArgumentException", "<init>", "(Ljava/lang/String;)V");
        abstractC9361q.mo24556a(191);
        return abstractC9361q;
    }

    /* renamed from: a */
    private static AbstractC9361q m24478a(AbstractC9361q abstractC9361q, String str) {
        abstractC9361q.mo24548a(187, "java/lang/IllegalArgumentException");
        abstractC9361q.mo24556a(89);
        abstractC9361q.mo24548a(187, "java/lang/StringBuilder");
        abstractC9361q.mo24556a(89);
        abstractC9361q.mo24537a("Field not declared as " + str + ": ");
        abstractC9361q.m24558b(183, "java/lang/StringBuilder", "<init>", "(Ljava/lang/String;)V");
        abstractC9361q.mo24527b(21, 2);
        abstractC9361q.m24558b(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
        abstractC9361q.m24558b(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
        abstractC9361q.m24558b(183, "java/lang/IllegalArgumentException", "<init>", "(Ljava/lang/String;)V");
        abstractC9361q.mo24556a(191);
        return abstractC9361q;
    }

    /* renamed from: a */
    public static AbstractC9370c m24477a(Class cls) {
        Class cls2;
        Field[] declaredFields;
        if (cls.getSuperclass() != null) {
            ArrayList arrayList = new ArrayList();
            Class cls3 = cls;
            while (true) {
                Class cls4 = cls3;
                if (cls4 == Object.class) {
                    break;
                }
                for (Field field : cls4.getDeclaredFields()) {
                    int modifiers = field.getModifiers();
                    if (!Modifier.isStatic(modifiers) && !Modifier.isPrivate(modifiers)) {
                        arrayList.add(field);
                    }
                }
                cls3 = cls4.getSuperclass();
            }
            int size = arrayList.size();
            String[] strArr = new String[size];
            Class[] clsArr = new Class[arrayList.size()];
            for (int i = 0; i < size; i++) {
                strArr[i] = ((Field) arrayList.get(i)).getName();
                clsArr[i] = ((Field) arrayList.get(i)).getType();
            }
            String name = cls.getName();
            String str = name + "FieldAccess";
            String str2 = str;
            if (str.startsWith("java.")) {
                str2 = "reflectasm.".concat(String.valueOf(str));
            }
            C9368a m24490a = C9368a.m24490a(cls);
            synchronized (m24490a) {
                Class m24488a = m24490a.m24488a(str2);
                cls2 = m24488a;
                if (m24488a == null) {
                    String replace = str2.replace('.', '/');
                    String replace2 = name.replace('.', '/');
                    C9351g c9351g = new C9351g(0);
                    c9351g.mo24615a(196653, 33, replace, null, "com/esotericsoftware/reflectasm/FieldAccess", null);
                    AbstractC9361q mo24611a = c9351g.mo24611a(1, "<init>", "()V", (String) null, (String[]) null);
                    mo24611a.mo24527b(25, 0);
                    mo24611a.m24558b(183, "com/esotericsoftware/reflectasm/FieldAccess", "<init>", "()V");
                    mo24611a.mo24556a(177);
                    mo24611a.mo24515d(1, 1);
                    m24474b(c9351g, replace2, arrayList);
                    m24481a(c9351g, replace2, arrayList);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32172b);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32172b);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32174d);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32174d);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32175e);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32175e);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32176f);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32176f);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32178h);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32178h);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32179i);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32179i);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32177g);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32177g);
                    m24473b(c9351g, replace2, arrayList, C9364t.f32173c);
                    m24480a(c9351g, replace2, arrayList, C9364t.f32173c);
                    m24471c(c9351g, replace2, arrayList);
                    cls2 = m24490a.m24487a(str2, c9351g.m24621a());
                }
            }
            try {
                AbstractC9370c abstractC9370c = (AbstractC9370c) cls2.newInstance();
                abstractC9370c.f32200a = strArr;
                abstractC9370c.f32201b = clsArr;
                abstractC9370c.f32202c = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
                return abstractC9370c;
            } catch (Throwable th) {
                throw new RuntimeException("Error constructing field access class: ".concat(String.valueOf(str2)), th);
            }
        }
        throw new IllegalArgumentException("The type must not be the Object class, an interface, a primitive type, or void.");
    }

    /* renamed from: a */
    private static void m24481a(C9351g c9351g, String str, ArrayList<Field> arrayList) {
        int i;
        AbstractC9361q mo24611a = c9351g.mo24611a(1, "set", "(Ljava/lang/Object;ILjava/lang/Object;)V", (String) null, (String[]) null);
        mo24611a.mo24527b(21, 2);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            C9360p[] c9360pArr = new C9360p[size];
            for (int i2 = 0; i2 < size; i2++) {
                c9360pArr[i2] = new C9360p();
            }
            C9360p c9360p = new C9360p();
            mo24611a.mo24553a(0, size - 1, c9360p, c9360pArr);
            for (int i3 = 0; i3 < size; i3++) {
                Field field = arrayList.get(i3);
                C9364t m24511a = C9364t.m24511a(field.getType());
                mo24611a.mo24541a(c9360pArr[i3]);
                mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
                mo24611a.mo24527b(25, 1);
                mo24611a.mo24548a(192, str);
                mo24611a.mo24527b(25, 3);
                switch (m24511a.f32180j) {
                    case 1:
                        mo24611a.mo24548a(192, "java/lang/Boolean");
                        mo24611a.m24558b(182, "java/lang/Boolean", "booleanValue", "()Z");
                        break;
                    case 2:
                        mo24611a.mo24548a(192, "java/lang/Character");
                        mo24611a.m24558b(182, "java/lang/Character", "charValue", "()C");
                        break;
                    case 3:
                        mo24611a.mo24548a(192, "java/lang/Byte");
                        mo24611a.m24558b(182, "java/lang/Byte", "byteValue", "()B");
                        break;
                    case 4:
                        mo24611a.mo24548a(192, "java/lang/Short");
                        mo24611a.m24558b(182, "java/lang/Short", "shortValue", "()S");
                        break;
                    case 5:
                        mo24611a.mo24548a(192, "java/lang/Integer");
                        mo24611a.m24558b(182, "java/lang/Integer", "intValue", "()I");
                        break;
                    case 6:
                        mo24611a.mo24548a(192, "java/lang/Float");
                        mo24611a.m24558b(182, "java/lang/Float", "floatValue", "()F");
                        break;
                    case 7:
                        mo24611a.mo24548a(192, "java/lang/Long");
                        mo24611a.m24558b(182, "java/lang/Long", "longValue", "()J");
                        break;
                    case 8:
                        mo24611a.mo24548a(192, "java/lang/Double");
                        mo24611a.m24558b(182, "java/lang/Double", "doubleValue", "()D");
                        break;
                    case 9:
                        mo24611a.mo24548a(192, m24511a.m24503c());
                        break;
                    case 10:
                        mo24611a.mo24548a(192, m24511a.m24506b());
                        break;
                }
                mo24611a.mo24547a(181, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), m24511a.m24503c());
                mo24611a.mo24556a(177);
            }
            mo24611a.mo24541a(c9360p);
            mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
            i = 5;
        } else {
            i = 6;
        }
        m24479a(mo24611a).mo24515d(i, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01f7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m24480a(com.esotericsoftware.p273a.C9351g r7, java.lang.String r8, java.util.ArrayList<java.lang.reflect.Field> r9, com.esotericsoftware.p273a.C9364t r10) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p275c.AbstractC9370c.m24480a(com.esotericsoftware.a.g, java.lang.String, java.util.ArrayList, com.esotericsoftware.a.t):void");
    }

    /* renamed from: b */
    private static void m24474b(C9351g c9351g, String str, ArrayList<Field> arrayList) {
        int i;
        AbstractC9361q mo24611a = c9351g.mo24611a(1, "get", "(Ljava/lang/Object;I)Ljava/lang/Object;", (String) null, (String[]) null);
        mo24611a.mo24527b(21, 2);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            C9360p[] c9360pArr = new C9360p[size];
            for (int i2 = 0; i2 < size; i2++) {
                c9360pArr[i2] = new C9360p();
            }
            C9360p c9360p = new C9360p();
            mo24611a.mo24553a(0, size - 1, c9360p, c9360pArr);
            for (int i3 = 0; i3 < size; i3++) {
                Field field = arrayList.get(i3);
                mo24611a.mo24541a(c9360pArr[i3]);
                mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
                mo24611a.mo24527b(25, 1);
                mo24611a.mo24548a(192, str);
                mo24611a.mo24547a(180, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), C9364t.m24505b(field.getType()));
                switch (C9364t.m24511a(field.getType()).f32180j) {
                    case 1:
                        mo24611a.m24558b(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
                        break;
                    case 2:
                        mo24611a.m24558b(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
                        break;
                    case 3:
                        mo24611a.m24558b(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                        break;
                    case 4:
                        mo24611a.m24558b(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                        break;
                    case 5:
                        mo24611a.m24558b(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                        break;
                    case 6:
                        mo24611a.m24558b(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                        break;
                    case 7:
                        mo24611a.m24558b(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                        break;
                    case 8:
                        mo24611a.m24558b(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                        break;
                }
                mo24611a.mo24556a(176);
            }
            mo24611a.mo24541a(c9360p);
            mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
            i = 5;
        } else {
            i = 6;
        }
        m24479a(mo24611a);
        mo24611a.mo24515d(i, 3);
    }

    /* renamed from: b */
    private static void m24473b(C9351g c9351g, String str, ArrayList<Field> arrayList, C9364t c9364t) {
        String str2;
        int i;
        String m24503c = c9364t.m24503c();
        int i2 = 172;
        switch (c9364t.f32180j) {
            case 1:
                str2 = "getBoolean";
                break;
            case 2:
                str2 = "getChar";
                break;
            case 3:
                str2 = "getByte";
                break;
            case 4:
                str2 = "getShort";
                break;
            case 5:
                str2 = "getInt";
                break;
            case 6:
                i2 = 174;
                str2 = "getFloat";
                break;
            case 7:
                i2 = 173;
                str2 = "getLong";
                break;
            case 8:
                i2 = 175;
                str2 = "getDouble";
                break;
            default:
                i2 = 176;
                str2 = "get";
                break;
        }
        AbstractC9361q mo24611a = c9351g.mo24611a(1, str2, "(Ljava/lang/Object;I)".concat(String.valueOf(m24503c)), (String) null, (String[]) null);
        mo24611a.mo24527b(21, 2);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            C9360p[] c9360pArr = new C9360p[size];
            C9360p c9360p = new C9360p();
            boolean z = false;
            for (int i3 = 0; i3 < size; i3++) {
                if (C9364t.m24511a(arrayList.get(i3).getType()).equals(c9364t)) {
                    c9360pArr[i3] = new C9360p();
                } else {
                    c9360pArr[i3] = c9360p;
                    z = true;
                }
            }
            C9360p c9360p2 = new C9360p();
            mo24611a.mo24553a(0, size - 1, c9360p2, c9360pArr);
            for (int i4 = 0; i4 < size; i4++) {
                Field field = arrayList.get(i4);
                if (!c9360pArr[i4].equals(c9360p)) {
                    mo24611a.mo24541a(c9360pArr[i4]);
                    mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
                    mo24611a.mo24527b(25, 1);
                    mo24611a.mo24548a(192, str);
                    mo24611a.mo24547a(180, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), m24503c);
                    mo24611a.mo24556a(i2);
                }
            }
            if (z) {
                mo24611a.mo24541a(c9360p);
                mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
                m24478a(mo24611a, c9364t.m24512a());
            }
            mo24611a.mo24541a(c9360p2);
            mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
            i = 5;
        } else {
            i = 6;
        }
        m24479a(mo24611a).mo24515d(i, 3);
    }

    /* renamed from: c */
    private static void m24471c(C9351g c9351g, String str, ArrayList<Field> arrayList) {
        int i;
        AbstractC9361q mo24611a = c9351g.mo24611a(1, "getString", "(Ljava/lang/Object;I)Ljava/lang/String;", (String) null, (String[]) null);
        mo24611a.mo24527b(21, 2);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            C9360p[] c9360pArr = new C9360p[size];
            C9360p c9360p = new C9360p();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).getType().equals(String.class)) {
                    c9360pArr[i2] = new C9360p();
                } else {
                    c9360pArr[i2] = c9360p;
                    z = true;
                }
            }
            C9360p c9360p2 = new C9360p();
            mo24611a.mo24553a(0, size - 1, c9360p2, c9360pArr);
            for (int i3 = 0; i3 < size; i3++) {
                if (!c9360pArr[i3].equals(c9360p)) {
                    Field field = arrayList.get(i3);
                    mo24611a.mo24541a(c9360pArr[i3]);
                    mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
                    mo24611a.mo24527b(25, 1);
                    mo24611a.mo24548a(192, str);
                    mo24611a.mo24547a(180, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), "Ljava/lang/String;");
                    mo24611a.mo24556a(176);
                }
            }
            if (z) {
                mo24611a.mo24541a(c9360p);
                mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
                m24478a(mo24611a, "String");
            }
            mo24611a.mo24541a(c9360p2);
            mo24611a.mo24552a(3, 0, (Object[]) null, 0, (Object[]) null);
            i = 5;
        } else {
            i = 6;
        }
        m24479a(mo24611a);
        mo24611a.mo24515d(i, 3);
    }

    /* renamed from: a */
    public final int m24476a(Field field) {
        int length = this.f32202c.length;
        for (int i = 0; i < length; i++) {
            if (this.f32202c[i].equals(field)) {
                return i;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private field: ".concat(String.valueOf(field)));
    }

    /* renamed from: a */
    public abstract Object m24482a();

    /* renamed from: b */
    public abstract String m24475b();

    /* renamed from: c */
    public abstract char m24472c();

    /* renamed from: d */
    public abstract boolean m24470d();

    /* renamed from: e */
    public abstract byte m24469e();

    /* renamed from: f */
    public abstract short m24468f();

    /* renamed from: g */
    public abstract int m24467g();

    /* renamed from: h */
    public abstract long m24466h();

    /* renamed from: i */
    public abstract double m24465i();

    /* renamed from: j */
    public abstract float m24464j();
}
