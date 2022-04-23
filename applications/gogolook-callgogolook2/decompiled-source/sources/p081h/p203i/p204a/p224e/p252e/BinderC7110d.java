package p081h.p203i.p204a.p224e.p252e;

import android.os.IBinder;
import java.lang.reflect.Field;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.e.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/e/d.class */
public final class BinderC7110d<T> extends AbstractC7106b.BinderC7107a {

    /* renamed from: a */
    public final T f17226a;

    public BinderC7110d(T t) {
        this.f17226a = t;
    }

    /* renamed from: A */
    public static <T> T m21059A(AbstractC7106b bVar) {
        if (bVar instanceof BinderC7110d) {
            return ((BinderC7110d) bVar).f17226a;
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
        if (i != 1) {
            int length = declaredFields.length;
            StringBuilder sb = new StringBuilder(64);
            sb.append("Unexpected number of IObjectWrapper declared fields: ");
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        } else if (!field.isAccessible()) {
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
    }

    /* renamed from: a */
    public static <T> AbstractC7106b m21058a(T t) {
        return new BinderC7110d(t);
    }
}
