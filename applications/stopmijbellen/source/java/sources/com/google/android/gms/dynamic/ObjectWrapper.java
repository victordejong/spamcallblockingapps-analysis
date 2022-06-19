package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.reflect.Field;
@RetainForClient
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/ObjectWrapper.class */
public final class ObjectWrapper<T> extends IObjectWrapper.Stub {
    private final T zza;

    private ObjectWrapper(T t) {
        this.zza = t;
    }

    @KeepForSdk
    public static <T> T unwrap(IObjectWrapper iObjectWrapper) {
        int i;
        if (iObjectWrapper instanceof ObjectWrapper) {
            return ((ObjectWrapper) iObjectWrapper).zza;
        }
        IBinder asBinder = iObjectWrapper.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        int length = declaredFields.length;
        Field field = null;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            Field field2 = declaredFields[i2];
            int i4 = i;
            if (!field2.isSynthetic()) {
                i4 = i + 1;
                field = field2;
            }
            i2++;
            i3 = i4;
        }
        if (i != 1) {
            throw new IllegalArgumentException(C0082b.m8758d(64, "Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        }
        Preconditions.checkNotNull(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(asBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException("Binder object is null.", e2);
        }
    }

    @KeepForSdk
    public static <T> IObjectWrapper wrap(T t) {
        return new ObjectWrapper(t);
    }
}
