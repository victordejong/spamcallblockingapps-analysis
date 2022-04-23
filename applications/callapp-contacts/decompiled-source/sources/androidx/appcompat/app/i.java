package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private static Field f665a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f666b;

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f667c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f668d;
    private static Field e;
    private static boolean f;
    private static Field g;
    private static boolean h;

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Resources resources) {
        if (Build.VERSION.SDK_INT < 28) {
            if (Build.VERSION.SDK_INT >= 24) {
                d(resources);
            } else if (Build.VERSION.SDK_INT >= 23) {
                c(resources);
            } else if (Build.VERSION.SDK_INT >= 21) {
                b(resources);
            }
        }
    }

    private static void a(Object obj) {
        if (!f668d) {
            try {
                f667c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            f668d = true;
        }
        Class<?> cls = f667c;
        if (cls != null) {
            if (!f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
                }
                f = true;
            }
            Field field = e;
            if (field != null) {
                LongSparseArray longSparseArray = null;
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e4) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }

    private static void b(Resources resources) {
        if (!f666b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f665a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f666b = true;
        }
        Field field = f665a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    private static void c(Resources resources) {
        if (!f666b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f665a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f666b = true;
        }
        Field field = f665a;
        Object obj = null;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
                obj = null;
            }
        }
        if (obj != null) {
            a(obj);
        }
    }

    private static void d(Resources resources) {
        Object obj;
        if (!h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
            }
            h = true;
        }
        Field field = g;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
                obj = null;
            }
            if (obj != null) {
                if (!f666b) {
                    try {
                        Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                        f665a = declaredField2;
                        declaredField2.setAccessible(true);
                    } catch (NoSuchFieldException e4) {
                        Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
                    }
                    f666b = true;
                }
                Field field2 = f665a;
                Object obj2 = null;
                if (field2 != null) {
                    try {
                        obj2 = field2.get(obj);
                    } catch (IllegalAccessException e5) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
                        obj2 = null;
                    }
                }
                if (obj2 != null) {
                    a(obj2);
                }
            }
        }
    }
}
