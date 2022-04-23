package p655o;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
/* renamed from: o.t */
/* loaded from: classes3-dex2jar.jar:o/t.class */
public abstract class AbstractC15303t<T> {
    /* renamed from: a */
    public static <T> AbstractC15303t<T> m71a(C15300s sVar, Method method) {
        C15297q a = C15297q.m107a(sVar, method);
        Type genericReturnType = method.getGenericReturnType();
        if (C15306w.m48c(genericReturnType)) {
            throw C15306w.m63a(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
        } else if (genericReturnType != Void.TYPE) {
            return AbstractC15255i.m148a(sVar, method, a);
        } else {
            throw C15306w.m63a(method, "Service methods cannot return void.", new Object[0]);
        }
    }

    @Nullable
    /* renamed from: a */
    public abstract T mo70a(Object[] objArr);
}
