package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
class C0155g {

    /* renamed from: a */
    private static Field f447a;

    /* renamed from: b */
    private static boolean f448b;

    /* renamed from: c */
    private static Class<?> f449c;

    /* renamed from: d */
    private static boolean f450d;

    /* renamed from: e */
    private static Field f451e;

    /* renamed from: f */
    private static boolean f452f;

    /* renamed from: g */
    private static Field f453g;

    /* renamed from: h */
    private static boolean f454h;

    /* renamed from: a */
    public static void m35495a(Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return;
        }
        if (i >= 24) {
            m35492d(resources);
        } else if (i >= 23) {
            m35493c(resources);
        } else if (i < 21) {
        } else {
            m35494b(resources);
        }
    }

    /* renamed from: b */
    private static void m35494b(Resources resources) {
        Map map;
        if (!f448b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f447a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f448b = true;
        }
        Field field = f447a;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map == null) {
                return;
            }
            map.clear();
        }
    }

    /* renamed from: c */
    private static void m35493c(Resources resources) {
        if (!f448b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f447a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f448b = true;
        }
        Field field = f447a;
        Object obj = null;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                obj = null;
            }
        }
        if (obj == null) {
            return;
        }
        m35491e(obj);
    }

    /* renamed from: d */
    private static void m35492d(Resources resources) {
        Object obj;
        if (!f454h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f453g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f454h = true;
        }
        Field field = f453g;
        if (field == null) {
            return;
        }
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e2) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f448b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f447a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            f448b = true;
        }
        Field field2 = f447a;
        Object obj2 = null;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e4) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
                obj2 = null;
            }
        }
        if (obj2 == null) {
            return;
        }
        m35491e(obj2);
    }

    /* renamed from: e */
    private static void m35491e(Object obj) {
        LongSparseArray longSparseArray;
        if (!f450d) {
            try {
                f449c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f450d = true;
        }
        Class<?> cls = f449c;
        if (cls == null) {
            return;
        }
        if (!f452f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f451e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f452f = true;
        }
        Field field = f451e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray == null) {
            return;
        }
        longSparseArray.clear();
    }
}
