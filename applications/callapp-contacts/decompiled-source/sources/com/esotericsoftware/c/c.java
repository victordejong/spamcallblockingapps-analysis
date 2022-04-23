package com.esotericsoftware.c;

import com.esotericsoftware.a.g;
import com.esotericsoftware.a.p;
import com.esotericsoftware.a.q;
import com.esotericsoftware.a.t;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/c/c.class */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private String[] f18952a;

    /* renamed from: b  reason: collision with root package name */
    private Class[] f18953b;

    /* renamed from: c  reason: collision with root package name */
    private Field[] f18954c;

    private static q a(q qVar) {
        qVar.a(187, "java/lang/IllegalArgumentException");
        qVar.a(89);
        qVar.a(187, "java/lang/StringBuilder");
        qVar.a(89);
        qVar.a("Field not found: ");
        qVar.b(183, "java/lang/StringBuilder", "<init>", "(Ljava/lang/String;)V");
        qVar.b(21, 2);
        qVar.b(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
        qVar.b(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
        qVar.b(183, "java/lang/IllegalArgumentException", "<init>", "(Ljava/lang/String;)V");
        qVar.a(191);
        return qVar;
    }

    private static q a(q qVar, String str) {
        qVar.a(187, "java/lang/IllegalArgumentException");
        qVar.a(89);
        qVar.a(187, "java/lang/StringBuilder");
        qVar.a(89);
        qVar.a("Field not declared as " + str + ": ");
        qVar.b(183, "java/lang/StringBuilder", "<init>", "(Ljava/lang/String;)V");
        qVar.b(21, 2);
        qVar.b(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
        qVar.b(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
        qVar.b(183, "java/lang/IllegalArgumentException", "<init>", "(Ljava/lang/String;)V");
        qVar.a(191);
        return qVar;
    }

    public static c a(Class cls) {
        Class cls2;
        Field[] declaredFields;
        if (cls.getSuperclass() != null) {
            ArrayList arrayList = new ArrayList();
            Class cls3 = cls;
            while (true) {
                if (cls3 == Object.class) {
                    break;
                }
                for (Field field : cls3.getDeclaredFields()) {
                    int modifiers = field.getModifiers();
                    if (!Modifier.isStatic(modifiers) && !Modifier.isPrivate(modifiers)) {
                        arrayList.add(field);
                    }
                }
                cls3 = cls3.getSuperclass();
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
            a a2 = a.a(cls);
            synchronized (a2) {
                Class a3 = a2.a(str2);
                cls2 = a3;
                if (a3 == null) {
                    String replace = str2.replace('.', '/');
                    String replace2 = name.replace('.', '/');
                    g gVar = new g(0);
                    gVar.a(196653, 33, replace, null, "com/esotericsoftware/reflectasm/FieldAccess", null);
                    q a4 = gVar.a(1, "<init>", "()V", (String) null, (String[]) null);
                    a4.b(25, 0);
                    a4.b(183, "com/esotericsoftware/reflectasm/FieldAccess", "<init>", "()V");
                    a4.a(177);
                    a4.d(1, 1);
                    b(gVar, replace2, arrayList);
                    a(gVar, replace2, arrayList);
                    b(gVar, replace2, arrayList, t.f18937b);
                    a(gVar, replace2, arrayList, t.f18937b);
                    b(gVar, replace2, arrayList, t.f18939d);
                    a(gVar, replace2, arrayList, t.f18939d);
                    b(gVar, replace2, arrayList, t.e);
                    a(gVar, replace2, arrayList, t.e);
                    b(gVar, replace2, arrayList, t.f);
                    a(gVar, replace2, arrayList, t.f);
                    b(gVar, replace2, arrayList, t.h);
                    a(gVar, replace2, arrayList, t.h);
                    b(gVar, replace2, arrayList, t.i);
                    a(gVar, replace2, arrayList, t.i);
                    b(gVar, replace2, arrayList, t.g);
                    a(gVar, replace2, arrayList, t.g);
                    b(gVar, replace2, arrayList, t.f18938c);
                    a(gVar, replace2, arrayList, t.f18938c);
                    c(gVar, replace2, arrayList);
                    cls2 = a2.a(str2, gVar.a());
                }
            }
            try {
                c cVar = (c) cls2.newInstance();
                cVar.f18952a = strArr;
                cVar.f18953b = clsArr;
                cVar.f18954c = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
                return cVar;
            } catch (Throwable th) {
                throw new RuntimeException("Error constructing field access class: ".concat(String.valueOf(str2)), th);
            }
        } else {
            throw new IllegalArgumentException("The type must not be the Object class, an interface, a primitive type, or void.");
        }
    }

    private static void a(g gVar, String str, ArrayList<Field> arrayList) {
        int i;
        q a2 = gVar.a(1, "set", "(Ljava/lang/Object;ILjava/lang/Object;)V", (String) null, (String[]) null);
        a2.b(21, 2);
        if (!arrayList.isEmpty()) {
            i = 5;
            int size = arrayList.size();
            p[] pVarArr = new p[size];
            for (int i2 = 0; i2 < size; i2++) {
                pVarArr[i2] = new p();
            }
            p pVar = new p();
            a2.a(0, size - 1, pVar, pVarArr);
            for (int i3 = 0; i3 < size; i3++) {
                Field field = arrayList.get(i3);
                t a3 = t.a(field.getType());
                a2.a(pVarArr[i3]);
                a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
                a2.b(25, 1);
                a2.a(192, str);
                a2.b(25, 3);
                switch (a3.j) {
                    case 1:
                        a2.a(192, "java/lang/Boolean");
                        a2.b(182, "java/lang/Boolean", "booleanValue", "()Z");
                        break;
                    case 2:
                        a2.a(192, "java/lang/Character");
                        a2.b(182, "java/lang/Character", "charValue", "()C");
                        break;
                    case 3:
                        a2.a(192, "java/lang/Byte");
                        a2.b(182, "java/lang/Byte", "byteValue", "()B");
                        break;
                    case 4:
                        a2.a(192, "java/lang/Short");
                        a2.b(182, "java/lang/Short", "shortValue", "()S");
                        break;
                    case 5:
                        a2.a(192, "java/lang/Integer");
                        a2.b(182, "java/lang/Integer", "intValue", "()I");
                        break;
                    case 6:
                        a2.a(192, "java/lang/Float");
                        a2.b(182, "java/lang/Float", "floatValue", "()F");
                        break;
                    case 7:
                        a2.a(192, "java/lang/Long");
                        a2.b(182, "java/lang/Long", "longValue", "()J");
                        break;
                    case 8:
                        a2.a(192, "java/lang/Double");
                        a2.b(182, "java/lang/Double", "doubleValue", "()D");
                        break;
                    case 9:
                        a2.a(192, a3.c());
                        break;
                    case 10:
                        a2.a(192, a3.b());
                        break;
                }
                a2.a(181, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), a3.c());
                a2.a(177);
            }
            a2.a(pVar);
            a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
        } else {
            i = 6;
        }
        a(a2).d(i, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.esotericsoftware.a.g r7, java.lang.String r8, java.util.ArrayList<java.lang.reflect.Field> r9, com.esotericsoftware.a.t r10) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.c.c.a(com.esotericsoftware.a.g, java.lang.String, java.util.ArrayList, com.esotericsoftware.a.t):void");
    }

    private static void b(g gVar, String str, ArrayList<Field> arrayList) {
        int i;
        q a2 = gVar.a(1, "get", "(Ljava/lang/Object;I)Ljava/lang/Object;", (String) null, (String[]) null);
        a2.b(21, 2);
        if (!arrayList.isEmpty()) {
            i = 5;
            int size = arrayList.size();
            p[] pVarArr = new p[size];
            for (int i2 = 0; i2 < size; i2++) {
                pVarArr[i2] = new p();
            }
            p pVar = new p();
            a2.a(0, size - 1, pVar, pVarArr);
            for (int i3 = 0; i3 < size; i3++) {
                Field field = arrayList.get(i3);
                a2.a(pVarArr[i3]);
                a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
                a2.b(25, 1);
                a2.a(192, str);
                a2.a(180, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), t.b(field.getType()));
                switch (t.a(field.getType()).j) {
                    case 1:
                        a2.b(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
                        break;
                    case 2:
                        a2.b(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
                        break;
                    case 3:
                        a2.b(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                        break;
                    case 4:
                        a2.b(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                        break;
                    case 5:
                        a2.b(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                        break;
                    case 6:
                        a2.b(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                        break;
                    case 7:
                        a2.b(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                        break;
                    case 8:
                        a2.b(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                        break;
                }
                a2.a(176);
            }
            a2.a(pVar);
            a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
        } else {
            i = 6;
        }
        a(a2);
        a2.d(i, 3);
    }

    private static void b(g gVar, String str, ArrayList<Field> arrayList, t tVar) {
        String str2;
        int i;
        String c2 = tVar.c();
        int i2 = 172;
        switch (tVar.j) {
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
        q a2 = gVar.a(1, str2, "(Ljava/lang/Object;I)".concat(String.valueOf(c2)), (String) null, (String[]) null);
        a2.b(21, 2);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            p[] pVarArr = new p[size];
            p pVar = new p();
            boolean z = false;
            for (int i3 = 0; i3 < size; i3++) {
                if (t.a(arrayList.get(i3).getType()).equals(tVar)) {
                    pVarArr[i3] = new p();
                } else {
                    pVarArr[i3] = pVar;
                    z = true;
                }
            }
            p pVar2 = new p();
            a2.a(0, size - 1, pVar2, pVarArr);
            for (int i4 = 0; i4 < size; i4++) {
                Field field = arrayList.get(i4);
                if (!pVarArr[i4].equals(pVar)) {
                    a2.a(pVarArr[i4]);
                    a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
                    a2.b(25, 1);
                    a2.a(192, str);
                    a2.a(180, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), c2);
                    a2.a(i2);
                }
            }
            if (z) {
                a2.a(pVar);
                a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
                a(a2, tVar.a());
            }
            a2.a(pVar2);
            a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
            i = 5;
        } else {
            i = 6;
        }
        a(a2).d(i, 3);
    }

    private static void c(g gVar, String str, ArrayList<Field> arrayList) {
        int i;
        q a2 = gVar.a(1, "getString", "(Ljava/lang/Object;I)Ljava/lang/String;", (String) null, (String[]) null);
        a2.b(21, 2);
        if (!arrayList.isEmpty()) {
            i = 5;
            int size = arrayList.size();
            p[] pVarArr = new p[size];
            p pVar = new p();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).getType().equals(String.class)) {
                    pVarArr[i2] = new p();
                } else {
                    pVarArr[i2] = pVar;
                    z = true;
                }
            }
            p pVar2 = new p();
            a2.a(0, size - 1, pVar2, pVarArr);
            for (int i3 = 0; i3 < size; i3++) {
                if (!pVarArr[i3].equals(pVar)) {
                    Field field = arrayList.get(i3);
                    a2.a(pVarArr[i3]);
                    a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
                    a2.b(25, 1);
                    a2.a(192, str);
                    a2.a(180, field.getDeclaringClass().getName().replace('.', '/'), field.getName(), "Ljava/lang/String;");
                    a2.a(176);
                }
            }
            if (z) {
                a2.a(pVar);
                a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
                a(a2, "String");
            }
            a2.a(pVar2);
            a2.a(3, 0, (Object[]) null, 0, (Object[]) null);
        } else {
            i = 6;
        }
        a(a2);
        a2.d(i, 3);
    }

    public final int a(Field field) {
        int length = this.f18954c.length;
        for (int i = 0; i < length; i++) {
            if (this.f18954c[i].equals(field)) {
                return i;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private field: ".concat(String.valueOf(field)));
    }

    public abstract Object a();

    public abstract String b();

    public abstract char c();

    public abstract boolean d();

    public abstract byte e();

    public abstract short f();

    public abstract int g();

    public abstract long h();

    public abstract double i();

    public abstract float j();
}
