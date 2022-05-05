package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ResourcesFlusher.class */
class ResourcesFlusher {

    /* renamed from: a */
    private static Field f273a;

    /* renamed from: b */
    private static boolean f274b;

    /* renamed from: c */
    private static Class<?> f275c;

    /* renamed from: d */
    private static boolean f276d;

    /* renamed from: e */
    private static Field f277e;

    /* renamed from: f */
    private static boolean f278f;

    /* renamed from: g */
    private static Field f279g;

    /* renamed from: h */
    private static boolean f280h;

    private ResourcesFlusher() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m22137a(@NonNull Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            if (i >= 24) {
                m22134d(resources);
            } else if (i >= 23) {
                m22135c(resources);
            } else if (i >= 21) {
                m22136b(resources);
            }
        }
    }

    @RequiresApi
    /* renamed from: b */
    private static void m22136b(@NonNull Resources resources) {
        if (!f274b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f273a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f274b = true;
        }
        Field field = f273a;
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

    @RequiresApi
    /* renamed from: c */
    private static void m22135c(@NonNull Resources resources) {
        if (!f274b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f273a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f274b = true;
        }
        Field field = f273a;
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
            m22133e(obj);
        }
    }

    @RequiresApi
    /* renamed from: d */
    private static void m22134d(@NonNull Resources resources) {
        Object obj;
        if (!f280h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f279g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f280h = true;
        }
        Field field = f279g;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
                obj = null;
            }
            if (obj != null) {
                if (!f274b) {
                    try {
                        Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                        f273a = declaredField2;
                        declaredField2.setAccessible(true);
                    } catch (NoSuchFieldException e3) {
                        Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
                    }
                    f274b = true;
                }
                Field field2 = f273a;
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
                    m22133e(obj2);
                }
            }
        }
    }

    @RequiresApi
    /* renamed from: e */
    private static void m22133e(@NonNull Object obj) {
        if (!f276d) {
            try {
                f275c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f276d = true;
        }
        Class<?> cls = f275c;
        if (cls != null) {
            if (!f278f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    f277e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                f278f = true;
            }
            Field field = f277e;
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
