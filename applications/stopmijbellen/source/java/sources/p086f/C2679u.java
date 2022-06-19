package p086f;

import android.util.LongSparseArray;
import java.lang.reflect.Field;
/* renamed from: f.u */
/* loaded from: classes-dex2jar.jar:f/u.class */
public class C2679u {

    /* renamed from: a */
    public static Field f9204a;

    /* renamed from: b */
    public static boolean f9205b;

    /* renamed from: c */
    public static Class<?> f9206c;

    /* renamed from: d */
    public static boolean f9207d;

    /* renamed from: e */
    public static Field f9208e;

    /* renamed from: f */
    public static boolean f9209f;

    /* renamed from: g */
    public static Field f9210g;

    /* renamed from: h */
    public static boolean f9211h;

    /* renamed from: a */
    public static void m3286a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f9207d) {
            try {
                f9206c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
            }
            f9207d = true;
        }
        Class<?> cls = f9206c;
        if (cls == null) {
            return;
        }
        if (!f9209f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f9208e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
            }
            f9209f = true;
        }
        Field field = f9208e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            longSparseArray = null;
        }
        if (longSparseArray == null) {
            return;
        }
        longSparseArray.clear();
    }
}
