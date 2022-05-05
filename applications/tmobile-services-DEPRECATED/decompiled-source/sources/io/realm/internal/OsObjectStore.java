package io.realm.internal;

import io.realm.RealmConfiguration;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObjectStore.class */
public class OsObjectStore {
    /* renamed from: a */
    public static boolean m2745a(RealmConfiguration realmConfiguration, Runnable runnable) {
        return nativeCallWithLock(realmConfiguration.m2987l(), runnable);
    }

    @Nullable
    /* renamed from: b */
    public static String m2744b(OsSharedRealm osSharedRealm, String str) {
        return nativeGetPrimaryKeyForObject(osSharedRealm.getNativePtr(), str);
    }

    /* renamed from: c */
    public static long m2743c(OsSharedRealm osSharedRealm) {
        return nativeGetSchemaVersion(osSharedRealm.getNativePtr());
    }

    /* renamed from: d */
    public static void m2742d(OsSharedRealm osSharedRealm, String str, @Nullable String str2) {
        nativeSetPrimaryKeyForObject(osSharedRealm.getNativePtr(), str, str2);
    }

    /* renamed from: e */
    public static void m2741e(OsSharedRealm osSharedRealm, long j) {
        nativeSetSchemaVersion(osSharedRealm.getNativePtr(), j);
    }

    private static native boolean nativeCallWithLock(String str, Runnable runnable);

    @Nullable
    private static native String nativeGetPrimaryKeyForObject(long j, String str);

    private static native long nativeGetSchemaVersion(long j);

    private static native void nativeSetPrimaryKeyForObject(long j, String str, @Nullable String str2);

    private static native void nativeSetSchemaVersion(long j, long j2);
}
