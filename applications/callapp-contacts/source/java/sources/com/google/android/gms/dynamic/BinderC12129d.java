package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.lang.reflect.Field;
/* renamed from: com.google.android.gms.dynamic.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/d.class */
public final class BinderC12129d<T> extends AbstractC12126b.AbstractBinderC12127a {

    /* renamed from: a */
    private final T f39654a;

    private BinderC12129d(T t) {
        this.f39654a = t;
    }

    /* renamed from: a */
    public static <T> AbstractC12126b m18979a(T t) {
        return new BinderC12129d(t);
    }

    /* renamed from: a */
    public static <T> T m18980a(AbstractC12126b abstractC12126b) {
        int i;
        if (abstractC12126b instanceof BinderC12129d) {
            return ((BinderC12129d) abstractC12126b).f39654a;
        }
        IBinder asBinder = abstractC12126b.asBinder();
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
        C12045o.m19162a(field);
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
