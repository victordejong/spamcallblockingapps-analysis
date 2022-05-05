package com.apptentive.android.sdk.util;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/ObjectUtils.class */
public final class ObjectUtils {
    @Nullable
    /* renamed from: as */
    public static <T> T m15631as(Object obj, Class<T> cls) {
        if (!cls.isInstance(obj)) {
            obj = (T) null;
        }
        return (T) obj;
    }

    public static boolean equal(@Nullable Object obj, @Nullable Object obj2) {
        return (obj == null || obj2 == null || !obj.equals(obj2)) ? false : true;
    }

    public static boolean isNullOrEmpty(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static Map<String, Object> toMap(Object... objArr) {
        if (objArr.length % 2 == 0) {
            HashMap hashMap = new HashMap();
            for (int i = 0; i < objArr.length; i += 2) {
                hashMap.put((String) objArr[i], objArr[i + 1]);
            }
            return hashMap;
        }
        throw new IllegalArgumentException("Invalid args");
    }
}
