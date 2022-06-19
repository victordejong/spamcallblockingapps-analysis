package com.google.android.gms.dynamic;

import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.lang.reflect.Field;
/* renamed from: com.google.android.gms.dynamic.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/b.class */
public final class BinderC6255b<T> extends AbstractC6253a.AbstractBinderC6254a {

    /* renamed from: d */
    private final T f19757d;

    private BinderC6255b(T t) {
        this.f19757d = t;
    }

    @RecentlyNonNull
    /* renamed from: J0 */
    public static <T> T m16745J0(@RecentlyNonNull AbstractC6253a abstractC6253a) {
        int i;
        if (abstractC6253a instanceof BinderC6255b) {
            return ((BinderC6255b) abstractC6253a).f19757d;
        }
        IBinder asBinder = abstractC6253a.asBinder();
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
            int length2 = declaredFields.length;
            StringBuilder sb = new StringBuilder(64);
            sb.append("Unexpected number of IObjectWrapper declared fields: ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        }
        C6155o.m17018j(field);
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

    @RecentlyNonNull
    /* renamed from: m2 */
    public static <T> AbstractC6253a m16744m2(@RecentlyNonNull T t) {
        return new BinderC6255b(t);
    }
}
