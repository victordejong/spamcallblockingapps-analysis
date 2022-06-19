package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/k.class */
class C0119k {

    /* renamed from: a */
    private static Field f364a;

    /* renamed from: b */
    private static boolean f365b;

    /* renamed from: c */
    private static Class<?> f366c;

    /* renamed from: d */
    private static boolean f367d;

    /* renamed from: e */
    private static Field f368e;

    /* renamed from: f */
    private static boolean f369f;

    /* renamed from: g */
    private static Field f370g;

    /* renamed from: h */
    private static boolean f371h;

    /* renamed from: a */
    public static void m7790a(Resources resources) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m7786d(resources);
        } else if (Build.VERSION.SDK_INT >= 23) {
            m7787c(resources);
        } else if (Build.VERSION.SDK_INT < 21) {
        } else {
            m7788b(resources);
        }
    }

    /* renamed from: a */
    private static void m7789a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f367d) {
            try {
                f366c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f367d = true;
        }
        Class<?> cls = f366c;
        if (cls == null) {
            return;
        }
        if (!f369f) {
            try {
                f368e = cls.getDeclaredField("mUnthemedEntries");
                f368e.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f369f = true;
        }
        Field field = f368e;
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
    private static void m7788b(Resources resources) {
        Map map;
        if (!f365b) {
            try {
                f364a = Resources.class.getDeclaredField("mDrawableCache");
                f364a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f365b = true;
        }
        Field field = f364a;
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
    private static void m7787c(Resources resources) {
        if (!f365b) {
            try {
                f364a = Resources.class.getDeclaredField("mDrawableCache");
                f364a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f365b = true;
        }
        Field field = f364a;
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
        m7789a(obj);
    }

    /* renamed from: d */
    private static void m7786d(Resources resources) {
        Object obj;
        if (!f371h) {
            try {
                f370g = Resources.class.getDeclaredField("mResourcesImpl");
                f370g.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f371h = true;
        }
        Field field = f370g;
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
        if (!f365b) {
            try {
                f364a = obj.getClass().getDeclaredField("mDrawableCache");
                f364a.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            f365b = true;
        }
        Field field2 = f364a;
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
        m7789a(obj2);
    }
}
