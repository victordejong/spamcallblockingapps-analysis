package android.support.p004v7.app;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: android.support.v7.app.ResourcesFlusher */
/* loaded from: classes-dex2jar.jar:android/support/v7/app/ResourcesFlusher.class */
class ResourcesFlusher {
    private static final String TAG = "ResourcesFlusher";
    private static Field sDrawableCacheField;
    private static boolean sDrawableCacheFieldFetched;
    private static Field sResourcesImplField;
    private static boolean sResourcesImplFieldFetched;
    private static Class sThemedResourceCacheClazz;
    private static boolean sThemedResourceCacheClazzFetched;
    private static Field sThemedResourceCache_mUnthemedEntriesField;
    private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    private ResourcesFlusher() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void flush(@NonNull Resources resources) {
        if (Build.VERSION.SDK_INT < 28) {
            if (Build.VERSION.SDK_INT >= 24) {
                flushNougats(resources);
            } else if (Build.VERSION.SDK_INT >= 23) {
                flushMarshmallows(resources);
            } else if (Build.VERSION.SDK_INT >= 21) {
                flushLollipops(resources);
            }
        }
    }

    @RequiresApi(21)
    private static void flushLollipops(@NonNull Resources resources) {
        Map map;
        if (!sDrawableCacheFieldFetched) {
            try {
                sDrawableCacheField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "Could not retrieve Resources#mDrawableCache field", e);
            }
            sDrawableCacheFieldFetched = true;
        }
        if (sDrawableCacheField != null) {
            try {
                map = (Map) sDrawableCacheField.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    @android.support.annotation.RequiresApi(23)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void flushMarshmallows(@android.support.annotation.NonNull android.content.res.Resources r4) {
        /*
            boolean r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheFieldFetched
            if (r0 != 0) goto L_0x0028
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r1 = "mDrawableCache"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: NoSuchFieldException -> 0x001a
            android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField = r0     // Catch: NoSuchFieldException -> 0x001a
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField     // Catch: NoSuchFieldException -> 0x001a
            r1 = 1
            r0.setAccessible(r1)     // Catch: NoSuchFieldException -> 0x001a
            goto L_0x0024
        L_0x001a:
            r5 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve Resources#mDrawableCache field"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x0024:
            r0 = 1
            android.support.p004v7.app.ResourcesFlusher.sDrawableCacheFieldFetched = r0
        L_0x0028:
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField
            if (r0 == 0) goto L_0x0043
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField     // Catch: IllegalAccessException -> 0x0039
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: IllegalAccessException -> 0x0039
            r4 = r0
            goto L_0x0045
        L_0x0039:
            r4 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve value from Resources#mDrawableCache"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x0043:
            r0 = 0
            r4 = r0
        L_0x0045:
            r0 = r4
            if (r0 != 0) goto L_0x004a
            return
        L_0x004a:
            r0 = r4
            flushThemedResourcesCache(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.app.ResourcesFlusher.flushMarshmallows(android.content.res.Resources):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    @android.support.annotation.RequiresApi(24)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void flushNougats(@android.support.annotation.NonNull android.content.res.Resources r4) {
        /*
            boolean r0 = android.support.p004v7.app.ResourcesFlusher.sResourcesImplFieldFetched
            if (r0 != 0) goto L_0x0028
            java.lang.Class<android.content.res.Resources> r0 = android.content.res.Resources.class
            java.lang.String r1 = "mResourcesImpl"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: NoSuchFieldException -> 0x001a
            android.support.p004v7.app.ResourcesFlusher.sResourcesImplField = r0     // Catch: NoSuchFieldException -> 0x001a
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sResourcesImplField     // Catch: NoSuchFieldException -> 0x001a
            r1 = 1
            r0.setAccessible(r1)     // Catch: NoSuchFieldException -> 0x001a
            goto L_0x0024
        L_0x001a:
            r5 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve Resources#mResourcesImpl field"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x0024:
            r0 = 1
            android.support.p004v7.app.ResourcesFlusher.sResourcesImplFieldFetched = r0
        L_0x0028:
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sResourcesImplField
            if (r0 != 0) goto L_0x002f
            return
        L_0x002f:
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sResourcesImplField     // Catch: IllegalAccessException -> 0x003a
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: IllegalAccessException -> 0x003a
            r4 = r0
            goto L_0x0046
        L_0x003a:
            r4 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve value from Resources#mResourcesImpl"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
            r0 = 0
            r4 = r0
        L_0x0046:
            r0 = r4
            if (r0 != 0) goto L_0x004b
            return
        L_0x004b:
            boolean r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheFieldFetched
            if (r0 != 0) goto L_0x0075
            r0 = r4
            java.lang.Class r0 = r0.getClass()     // Catch: NoSuchFieldException -> 0x0067
            java.lang.String r1 = "mDrawableCache"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: NoSuchFieldException -> 0x0067
            android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField = r0     // Catch: NoSuchFieldException -> 0x0067
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField     // Catch: NoSuchFieldException -> 0x0067
            r1 = 1
            r0.setAccessible(r1)     // Catch: NoSuchFieldException -> 0x0067
            goto L_0x0071
        L_0x0067:
            r5 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve ResourcesImpl#mDrawableCache field"
            r2 = r5
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x0071:
            r0 = 1
            android.support.p004v7.app.ResourcesFlusher.sDrawableCacheFieldFetched = r0
        L_0x0075:
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField
            if (r0 == 0) goto L_0x0090
            java.lang.reflect.Field r0 = android.support.p004v7.app.ResourcesFlusher.sDrawableCacheField     // Catch: IllegalAccessException -> 0x0086
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: IllegalAccessException -> 0x0086
            r4 = r0
            goto L_0x0092
        L_0x0086:
            r4 = move-exception
            java.lang.String r0 = "ResourcesFlusher"
            java.lang.String r1 = "Could not retrieve value from ResourcesImpl#mDrawableCache"
            r2 = r4
            int r0 = android.util.Log.e(r0, r1, r2)
        L_0x0090:
            r0 = 0
            r4 = r0
        L_0x0092:
            r0 = r4
            if (r0 == 0) goto L_0x009a
            r0 = r4
            flushThemedResourcesCache(r0)
        L_0x009a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p004v7.app.ResourcesFlusher.flushNougats(android.content.res.Resources):void");
    }

    @RequiresApi(16)
    private static void flushThemedResourcesCache(@NonNull Object obj) {
        LongSparseArray longSparseArray;
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e(TAG, "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        if (sThemedResourceCacheClazz != null) {
            if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
                try {
                    sThemedResourceCache_mUnthemedEntriesField = sThemedResourceCacheClazz.getDeclaredField("mUnthemedEntries");
                    sThemedResourceCache_mUnthemedEntriesField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e(TAG, "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
            }
            if (sThemedResourceCache_mUnthemedEntriesField != null) {
                try {
                    longSparseArray = (LongSparseArray) sThemedResourceCache_mUnthemedEntriesField.get(obj);
                } catch (IllegalAccessException e3) {
                    Log.e(TAG, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
                    longSparseArray = null;
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
