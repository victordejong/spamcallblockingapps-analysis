package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.lang.reflect.Field;
/* renamed from: com.google.android.gms.dynamic.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/b.class */
public final class BinderC2734b<T> extends AbstractC2731a.BinderC2732a {

    /* renamed from: a */
    private final T f7549a;

    private BinderC2734b(T t) {
        this.f7549a = t;
    }

    /* renamed from: a */
    public static <T> AbstractC2731a m13794a(T t) {
        return new BinderC2734b(t);
    }

    /* renamed from: a */
    public static <T> T m13795a(AbstractC2731a abstractC2731a) {
        T t;
        if (abstractC2731a instanceof BinderC2734b) {
            t = ((BinderC2734b) abstractC2731a).f7549a;
        } else {
            IBinder asBinder = abstractC2731a.asBinder();
            Field[] declaredFields = asBinder.getClass().getDeclaredFields();
            Field field = null;
            int i = 0;
            for (Field field2 : declaredFields) {
                if (!field2.isSynthetic()) {
                    i++;
                    field = field2;
                }
            }
            if (i != 1) {
                throw new IllegalArgumentException(new StringBuilder(64).append("Unexpected number of IObjectWrapper declared fields: ").append(declaredFields.length).toString());
            } else if (field.isAccessible()) {
                throw new IllegalArgumentException("IObjectWrapper declared field not private!");
            } else {
                field.setAccessible(true);
                try {
                    t = field.get(asBinder);
                } catch (IllegalAccessException e) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
                } catch (NullPointerException e2) {
                    throw new IllegalArgumentException("Binder object is null.", e2);
                }
            }
        }
        return (T) t;
    }
}
