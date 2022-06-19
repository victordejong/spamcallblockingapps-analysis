package org.mp4parser.aspectj.p593a.p595b;

import java.util.Hashtable;
import java.util.StringTokenizer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.lang.AbstractC21000c;
import org.mp4parser.aspectj.lang.reflect.AbstractC21003c;
import org.mp4parser.aspectj.lang.reflect.AbstractC21004d;
import org.mp4parser.aspectj.p593a.p595b.C20988c;
/* renamed from: org.mp4parser.aspectj.a.b.b */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/b.class */
public final class C20987b {

    /* renamed from: e */
    static Hashtable f67549e;

    /* renamed from: f */
    static Class f67550f;

    /* renamed from: g */
    private static Object[] f67551g = new Object[0];

    /* renamed from: a */
    Class f67552a;

    /* renamed from: b */
    ClassLoader f67553b;

    /* renamed from: c */
    String f67554c;

    /* renamed from: d */
    int f67555d = 0;

    static {
        Hashtable hashtable = new Hashtable();
        f67549e = hashtable;
        hashtable.put("void", Void.TYPE);
        f67549e.put("boolean", Boolean.TYPE);
        f67549e.put("byte", Byte.TYPE);
        f67549e.put("char", Character.TYPE);
        f67549e.put("short", Short.TYPE);
        f67549e.put("int", Integer.TYPE);
        f67549e.put("long", Long.TYPE);
        f67549e.put("float", Float.TYPE);
        f67549e.put("double", Double.TYPE);
    }

    public C20987b(String str, Class cls) {
        this.f67554c = str;
        this.f67552a = cls;
        this.f67553b = cls.getClassLoader();
    }

    /* renamed from: a */
    private static Class m167a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: a */
    public static Class m166a(String str, ClassLoader classLoader) {
        if (str.equals("*")) {
            return null;
        }
        Class cls = (Class) f67549e.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            return classLoader == null ? Class.forName(str) : Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException e) {
            Class cls2 = f67550f;
            Class cls3 = cls2;
            if (cls2 == null) {
                cls3 = m167a("java.lang.ClassNotFoundException");
                f67550f = cls3;
            }
            return cls3;
        }
    }

    /* renamed from: a */
    public static AbstractC20997a m163a(AbstractC20997a.AbstractC20998a abstractC20998a, Object obj, Object obj2) {
        return new C20988c(abstractC20998a, obj, obj2, f67551g);
    }

    /* renamed from: a */
    public static AbstractC20997a m162a(AbstractC20997a.AbstractC20998a abstractC20998a, Object obj, Object obj2, Object obj3) {
        return new C20988c(abstractC20998a, obj, obj2, new Object[]{obj3});
    }

    /* renamed from: a */
    private AbstractC21004d m168a(int i) {
        return new C20995g(this.f67552a, this.f67554c, i);
    }

    /* renamed from: a */
    public final AbstractC20997a.AbstractC20998a m164a(String str, AbstractC21000c abstractC21000c, int i) {
        int i2 = this.f67555d;
        this.f67555d = i2 + 1;
        return new C20988c.C20989a(i2, str, abstractC21000c, m168a(i));
    }

    /* renamed from: a */
    public final AbstractC21003c m165a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int parseInt = Integer.parseInt(str, 16);
        Class m166a = m166a(str3, this.f67553b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i = 0; i < countTokens; i++) {
            clsArr[i] = m166a(stringTokenizer.nextToken(), this.f67553b);
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
            clsArr2[i3] = m166a(stringTokenizer3.nextToken(), this.f67553b);
        }
        return new C20991e(parseInt, str2, m166a, clsArr, strArr, clsArr2, m166a(str7, this.f67553b));
    }
}
