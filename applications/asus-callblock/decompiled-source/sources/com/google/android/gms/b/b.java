package com.google.android.gms.b;

import android.os.IBinder;
import com.google.android.gms.b.a;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/b.class */
public final class b<T> extends a.AbstractBinderC0107a {

    /* renamed from: a  reason: collision with root package name */
    private final T f3915a;

    private b(T t) {
        this.f3915a = t;
    }

    public static <T> a a(T t) {
        return new b(t);
    }

    public static <T> T a(a aVar) {
        T t;
        if (aVar instanceof b) {
            t = ((b) aVar).f3915a;
        } else {
            IBinder asBinder = aVar.asBinder();
            Field[] declaredFields = asBinder.getClass().getDeclaredFields();
            if (declaredFields.length == 1) {
                Field field = declaredFields[0];
                if (!field.isAccessible()) {
                    field.setAccessible(true);
                    try {
                        t = (T) field.get(asBinder);
                    } catch (IllegalAccessException e) {
                        throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
                    } catch (IllegalArgumentException e2) {
                        throw new IllegalArgumentException("remoteBinder is the wrong class.", e2);
                    } catch (NullPointerException e3) {
                        throw new IllegalArgumentException("Binder object is null.", e3);
                    }
                } else {
                    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
                }
            } else {
                throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
            }
        }
        return t;
    }
}
