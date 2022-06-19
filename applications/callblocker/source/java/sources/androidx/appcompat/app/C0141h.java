package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
class C0141h {

    /* renamed from: a */
    private static Field f434a;

    /* renamed from: b */
    private static boolean f435b;

    /* renamed from: c */
    private static Class<?> f436c;

    /* renamed from: d */
    private static boolean f437d;

    /* renamed from: e */
    private static Field f438e;

    /* renamed from: f */
    private static boolean f439f;

    /* renamed from: g */
    private static Field f440g;

    /* renamed from: h */
    private static boolean f441h;

    /* renamed from: a */
    public static void m22110a(Resources resources) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            m22106d(resources);
        } else if (Build.VERSION.SDK_INT >= 23) {
            m22107c(resources);
        } else if (Build.VERSION.SDK_INT < 21) {
        } else {
            m22108b(resources);
        }
    }

    /* renamed from: a */
    private static void m22109a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f437d) {
            try {
                f436c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f437d = true;
        }
        if (f436c == null) {
            return;
        }
        if (!f439f) {
            try {
                f438e = f436c.getDeclaredField("mUnthemedEntries");
                f438e.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f439f = true;
        }
        if (f438e == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) f438e.get(obj);
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
    private static void m22108b(Resources resources) {
        Map map;
        if (!f435b) {
            try {
                f434a = Resources.class.getDeclaredField("mDrawableCache");
                f434a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f435b = true;
        }
        if (f434a != null) {
            try {
                map = (Map) f434a.get(resources);
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

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m22107c(android.content.res.Resources r4) {
        /*
            boolean r0 = androidx.appcompat.app.C0141h.f435b
            if (r0 != 0) goto L1b
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r1 = "mDrawableCache"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.NoSuchFieldException -> L2e
            androidx.appcompat.app.C0141h.f434a = r0     // Catch: java.lang.NoSuchFieldException -> L2e
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f434a     // Catch: java.lang.NoSuchFieldException -> L2e
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L2e
        L17:
            r0 = 1
            androidx.appcompat.app.C0141h.f435b = r0
        L1b:
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f434a
            if (r0 == 0) goto L45
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f434a     // Catch: java.lang.IllegalAccessException -> L3b
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.IllegalAccessException -> L3b
            r4 = r0
        L29:
            r0 = r4
            if (r0 != 0) goto L4a
        L2d:
            return
        L2e:
            r5 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve Resources#mDrawableCache field"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
            goto L17
        L3b:
            r4 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve value from Resources#mDrawableCache"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L45:
            r0 = 0
            r4 = r0
            goto L29
        L4a:
            r0 = r4
            m22109a(r0)
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0141h.m22107c(android.content.res.Resources):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m22106d(android.content.res.Resources r4) {
        /*
            boolean r0 = androidx.appcompat.app.C0141h.f441h
            if (r0 != 0) goto L1b
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r1 = "mResourcesImpl"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.NoSuchFieldException -> L22
            androidx.appcompat.app.C0141h.f440g = r0     // Catch: java.lang.NoSuchFieldException -> L22
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f440g     // Catch: java.lang.NoSuchFieldException -> L22
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L22
        L17:
            r0 = 1
            androidx.appcompat.app.C0141h.f441h = r0
        L1b:
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f440g
            if (r0 != 0) goto L2f
        L21:
            return
        L22:
            r5 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve Resources#mResourcesImpl field"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
            goto L17
        L2f:
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f440g     // Catch: java.lang.IllegalAccessException -> L71
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.IllegalAccessException -> L71
            r4 = r0
        L37:
            r0 = r4
            if (r0 == 0) goto L21
            boolean r0 = androidx.appcompat.app.C0141h.f435b
            if (r0 != 0) goto L58
            r0 = r4
            java.lang.Class r0 = r0.getClass()     // Catch: java.lang.NoSuchFieldException -> L80
            java.lang.String r1 = "mDrawableCache"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.NoSuchFieldException -> L80
            androidx.appcompat.app.C0141h.f434a = r0     // Catch: java.lang.NoSuchFieldException -> L80
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f434a     // Catch: java.lang.NoSuchFieldException -> L80
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L80
        L54:
            r0 = 1
            androidx.appcompat.app.C0141h.f435b = r0
        L58:
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f434a
            if (r0 == 0) goto L97
            java.lang.reflect.Field r0 = androidx.appcompat.app.C0141h.f434a     // Catch: java.lang.IllegalAccessException -> L8d
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.IllegalAccessException -> L8d
            r4 = r0
        L66:
            r0 = r4
            if (r0 == 0) goto L21
            r0 = r4
            m22109a(r0)
            goto L21
        L71:
            r4 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve value from Resources#mResourcesImpl"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
            r0 = 0
            r4 = r0
            goto L37
        L80:
            r5 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve ResourcesImpl#mDrawableCache field"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
            goto L54
        L8d:
            r4 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve value from ResourcesImpl#mDrawableCache"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L97:
            r0 = 0
            r4 = r0
            goto L66
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0141h.m22106d(android.content.res.Resources):void");
    }
}
