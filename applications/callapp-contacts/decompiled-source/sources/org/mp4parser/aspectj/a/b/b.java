package org.mp4parser.aspectj.a.b;

import java.util.Hashtable;
import java.util.StringTokenizer;
import org.mp4parser.aspectj.a.b.c;
import org.mp4parser.aspectj.lang.a;
import org.mp4parser.aspectj.lang.c;
import org.mp4parser.aspectj.lang.reflect.d;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/b.class */
public final class b {
    static Hashtable e;
    static Class f;
    private static Object[] g = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    Class f39342a;

    /* renamed from: b  reason: collision with root package name */
    ClassLoader f39343b;

    /* renamed from: c  reason: collision with root package name */
    String f39344c;

    /* renamed from: d  reason: collision with root package name */
    int f39345d = 0;

    static {
        Hashtable hashtable = new Hashtable();
        e = hashtable;
        hashtable.put("void", Void.TYPE);
        e.put("boolean", Boolean.TYPE);
        e.put("byte", Byte.TYPE);
        e.put("char", Character.TYPE);
        e.put("short", Short.TYPE);
        e.put("int", Integer.TYPE);
        e.put("long", Long.TYPE);
        e.put("float", Float.TYPE);
        e.put("double", Double.TYPE);
    }

    public b(String str, Class cls) {
        this.f39344c = str;
        this.f39342a = cls;
        this.f39343b = cls.getClassLoader();
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class a(String str, ClassLoader classLoader) {
        if (str.equals("*")) {
            return null;
        }
        Class cls = (Class) e.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            return classLoader == null ? Class.forName(str) : Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException e2) {
            Class cls2 = f;
            Class cls3 = cls2;
            if (cls2 == null) {
                cls3 = a("java.lang.ClassNotFoundException");
                f = cls3;
            }
            return cls3;
        }
    }

    public static a a(a.AbstractC0755a aVar, Object obj, Object obj2) {
        return new c(aVar, obj, obj2, g);
    }

    public static a a(a.AbstractC0755a aVar, Object obj, Object obj2, Object obj3) {
        return new c(aVar, obj, obj2, new Object[]{obj3});
    }

    private d a(int i) {
        return new g(this.f39342a, this.f39344c, i);
    }

    public final a.AbstractC0755a a(String str, c cVar, int i) {
        int i2 = this.f39345d;
        this.f39345d = i2 + 1;
        return new c.a(i2, str, cVar, a(i));
    }

    public final org.mp4parser.aspectj.lang.reflect.c a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int parseInt = Integer.parseInt(str, 16);
        Class a2 = a(str3, this.f39343b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i = 0; i < countTokens; i++) {
            clsArr[i] = a(stringTokenizer.nextToken(), this.f39343b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int countTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[countTokens2];
        for (int i2 = 0; i2 < countTokens2; i2++) {
            strArr[i2] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int countTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[countTokens3];
        for (int i3 = 0; i3 < countTokens3; i3++) {
            clsArr2[i3] = a(stringTokenizer3.nextToken(), this.f39343b);
        }
        return new e(parseInt, str2, a2, clsArr, strArr, clsArr2, a(str7, this.f39343b));
    }
}
