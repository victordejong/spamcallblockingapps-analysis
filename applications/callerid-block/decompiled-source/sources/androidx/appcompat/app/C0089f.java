package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f.class */
class C0089f {

    /* renamed from: a */
    private static Field f282a;

    /* renamed from: b */
    private static boolean f283b;

    /* renamed from: c */
    private static Class<?> f284c;

    /* renamed from: d */
    private static boolean f285d;

    /* renamed from: e */
    private static Field f286e;

    /* renamed from: f */
    private static boolean f287f;

    /* renamed from: g */
    private static Field f288g;

    /* renamed from: h */
    private static boolean f289h;

    /* renamed from: a */
    static void m14865a(Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            if (i >= 24) {
                m14862d(resources);
            } else if (i >= 23) {
                m14863c(resources);
            } else if (i >= 21) {
                m14864b(resources);
            }
        }
    }

    /* renamed from: b */
    private static void m14864b(Resources resources) {
        if (!f283b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f282a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f283b = true;
        }
        Field field = f282a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* renamed from: c */
    private static void m14863c(Resources resources) {
        if (!f283b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f282a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f283b = true;
        }
        Field field = f282a;
        Object obj = null;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                obj = null;
            }
        }
        if (obj != null) {
            m14861e(obj);
        }
    }

    /* renamed from: d */
    private static void m14862d(Resources resources) {
        Object obj;
        if (!f289h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f288g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f289h = true;
        }
        Field field = f288g;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
                obj = null;
            }
            if (obj != null) {
                if (!f283b) {
                    try {
                        Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                        f282a = declaredField2;
                        declaredField2.setAccessible(true);
                    } catch (NoSuchFieldException e3) {
                        Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
                    }
                    f283b = true;
                }
                Field field2 = f282a;
                Object obj2 = null;
                if (field2 != null) {
                    try {
                        obj2 = field2.get(obj);
                    } catch (IllegalAccessException e4) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
                        obj2 = null;
                    }
                }
                if (obj2 != null) {
                    m14861e(obj2);
                }
            }
        }
    }

    /* renamed from: e */
    private static void m14861e(Object obj) {
        if (!f285d) {
            try {
                f284c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f285d = true;
        }
        Class<?> cls = f284c;
        if (cls != null) {
            if (!f287f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    f286e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                f287f = true;
            }
            Field field = f286e;
            if (field != null) {
                LongSparseArray longSparseArray = null;
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
