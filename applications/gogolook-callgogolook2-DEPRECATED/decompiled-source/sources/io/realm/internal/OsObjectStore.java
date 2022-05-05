package io.realm.internal;

import io.realm.RealmConfiguration;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/OsObjectStore.class */
public class OsObjectStore {
    public static final long SCHEMA_NOT_VERSIONED = -1;

    public static boolean callWithLock(RealmConfiguration realmConfiguration, Runnable runnable) {
        return nativeCallWithLock(realmConfiguration.getPath(), runnable);
    }

    public static boolean deleteTableForObject(OsSharedRealm osSharedRealm, String str) {
        return nativeDeleteTableForObject(osSharedRealm.getNativePtr(), str);
    }

    @Nullable
    public static String getPrimaryKeyForObject(OsSharedRealm osSharedRealm, String str) {
        return nativeGetPrimaryKeyForObject(osSharedRealm.getNativePtr(), str);
    }

    public static long getSchemaVersion(OsSharedRealm osSharedRealm) {
        return nativeGetSchemaVersion(osSharedRealm.getNativePtr());
    }

    public static native boolean nativeCallWithLock(String str, Runnable runnable);

    public static native boolean nativeDeleteTableForObject(long j, String str);

    @Nullable
    public static native String nativeGetPrimaryKeyForObject(long j, String str);

    public static native long nativeGetSchemaVersion(long j);

    public static native void nativeSetPrimaryKeyForObject(long j, String str, @Nullable String str2);

    public static native void nativeSetSchemaVersion(long j, long j2);

    public static void setPrimaryKeyForObject(OsSharedRealm osSharedRealm, String str, @Nullable String str2) {
        nativeSetPrimaryKeyForObject(osSharedRealm.getNativePtr(), str, str2);
    }

    public static void setSchemaVersion(OsSharedRealm osSharedRealm, long j) {
        nativeSetSchemaVersion(osSharedRealm.getNativePtr(), j);
    }
}
