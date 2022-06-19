package com.google.android.gms.common.util;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p226s.C4251a;
import p226s.C4254c;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CollectionUtils.class */
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    public static boolean isEmpty(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.emptyList();
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(T t) {
        return Collections.singletonList(t);
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> listOf(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : listOf(tArr[0]) : listOf();
    }

    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3) {
        Map zza = zza(3, false);
        zza.put(k, v);
        zza.put(k2, v2);
        zza.put(k3, v3);
        return Collections.unmodifiableMap(zza);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        Map zza = zza(6, false);
        zza.put(k, v);
        zza.put(k2, v2);
        zza.put(k3, v3);
        zza.put(k4, v4);
        zza.put(k5, v5);
        zza.put(k6, v6);
        return Collections.unmodifiableMap(zza);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> mapOfKeyValueArrays(K[] kArr, V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length == length2) {
            if (length == 0) {
                return Collections.emptyMap();
            }
            if (length == 1) {
                return Collections.singletonMap(kArr[0], vArr[0]);
            }
            Map zza = zza(length, false);
            for (int i = 0; i < kArr.length; i++) {
                zza.put(kArr[i], vArr[i]);
            }
            return Collections.unmodifiableMap(zza);
        }
        throw new IllegalArgumentException(C0082b.m8757e(66, "Key and values array lengths not equal: ", length, " != ", length2));
    }

    @KeepForSdk
    public static <T> Set<T> mutableSetOfWithSize(int i) {
        return i == 0 ? new C4254c(0) : zzb(i, true);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(T t, T t2, T t3) {
        Set zzb = zzb(3, false);
        zzb.add(t);
        zzb.add(t2);
        zzb.add(t3);
        return Collections.unmodifiableSet(zzb);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> setOf(T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length == 1) {
                return Collections.singleton(tArr[0]);
            }
            if (length == 2) {
                T t = tArr[0];
                T t2 = tArr[1];
                Set zzb = zzb(2, false);
                zzb.add(t);
                zzb.add(t2);
                return Collections.unmodifiableSet(zzb);
            } else if (length == 3) {
                return setOf(tArr[0], tArr[1], tArr[2]);
            } else {
                if (length != 4) {
                    Set zzb2 = zzb(length, false);
                    Collections.addAll(zzb2, tArr);
                    return Collections.unmodifiableSet(zzb2);
                }
                T t3 = tArr[0];
                T t4 = tArr[1];
                T t5 = tArr[2];
                T t6 = tArr[3];
                Set zzb3 = zzb(4, false);
                zzb3.add(t3);
                zzb3.add(t4);
                zzb3.add(t5);
                zzb3.add(t6);
                return Collections.unmodifiableSet(zzb3);
            }
        }
        return Collections.emptySet();
    }

    private static <K, V> Map<K, V> zza(int i, boolean z) {
        return i <= 256 ? new C4251a(i) : new HashMap(i, 1.0f);
    }

    private static <T> Set<T> zzb(int i, boolean z) {
        return i <= (true != z ? 256 : 128) ? new C4254c(i) : new HashSet(i, true != z ? 1.0f : 0.75f);
    }
}
