package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
final class C0205i {

    /* renamed from: a */
    private static Field f532a;

    /* renamed from: b */
    private static boolean f533b;

    /* renamed from: c */
    private static Class<?> f534c;

    /* renamed from: d */
    private static boolean f535d;

    /* renamed from: e */
    private static Field f536e;

    /* renamed from: f */
    private static boolean f537f;

    /* renamed from: g */
    private static Field f538g;

    /* renamed from: h */
    private static boolean f539h;

    private C0205i() {
    }

    /* renamed from: a */
    public static void m46261a(Resources resources) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m46257d(resources);
        } else if (Build.VERSION.SDK_INT >= 23) {
            m46258c(resources);
        } else if (Build.VERSION.SDK_INT < 21) {
        } else {
            m46259b(resources);
        }
    }

    /* renamed from: a */
    private static void m46260a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f535d) {
            try {
                f534c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f535d = true;
        }
        Class<?> cls = f534c;
        if (cls == null) {
            return;
        }
        if (!f537f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f536e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f537f = true;
        }
        Field field = f536e;
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

    /* renamed from: b */
    private static void m46259b(Resources resources) {
        Map map;
        if (!f533b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f532a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f533b = true;
        }
        Field field = f532a;
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
    private static void m46258c(Resources resources) {
        if (!f533b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f532a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f533b = true;
        }
        Field field = f532a;
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
        m46260a(obj);
    }

    /* renamed from: d */
    private static void m46257d(Resources resources) {
        Object obj;
        if (!f539h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f538g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f539h = true;
        }
        Field field = f538g;
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
        if (!f533b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f532a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            f533b = true;
        }
        Field field2 = f532a;
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
        m46260a(obj2);
    }
}
