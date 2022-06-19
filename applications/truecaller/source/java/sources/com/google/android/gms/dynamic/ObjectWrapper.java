package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.reflect.Field;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@RetainForClient
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/ObjectWrapper.class */
public final class ObjectWrapper<T> extends IObjectWrapper.Stub {

    /* renamed from: a */
    public final T f6174a;

    public ObjectWrapper(T t) {
        this.f6174a = t;
    }

    @KeepForSdk
    /* renamed from: B1 */
    public static <T> T m38746B1(IObjectWrapper iObjectWrapper) {
        int i;
        if (iObjectWrapper instanceof ObjectWrapper) {
            return ((ObjectWrapper) iObjectWrapper).f6174a;
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
            throw new IllegalArgumentException(C22128a.m8690L1(64, "Unexpected number of IObjectWrapper declared fields: ", declaredFields.length));
        }
        Objects.requireNonNull(field, "null reference");
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
}
