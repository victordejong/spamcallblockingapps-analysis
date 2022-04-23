package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import java.lang.reflect.Field;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/d.class */
public final class d<T> extends b.a {

    /* renamed from: a  reason: collision with root package name */
    private final T f22964a;

    private d(T t) {
        this.f22964a = t;
    }

    public static <T> b a(T t) {
        return new d(t);
    }

    public static <T> T a(b bVar) {
        if (bVar instanceof d) {
            return ((d) bVar).f22964a;
        }
        IBinder asBinder = bVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            i = i;
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i == 1) {
            o.a(field);
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return (T) field.get(asBinder);
                } catch (IllegalAccessException e) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
                } catch (NullPointerException e2) {
                    throw new IllegalArgumentException("Binder object is null.", e2);
                }
            } else {
                throw new IllegalArgumentException("IObjectWrapper declared field not private!");
            }
        } else {
            int length = declaredFields.length;
            StringBuilder sb = new StringBuilder(64);
            sb.append("Unexpected number of IObjectWrapper declared fields: ");
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        }
    }
}
