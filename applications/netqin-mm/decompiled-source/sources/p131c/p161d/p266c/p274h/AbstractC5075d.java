package p131c.p161d.p266c.p274h;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.h.d */
/* loaded from: classes2-dex2jar.jar:c/d/c/h/d.class */
public abstract class AbstractC5075d<T> {
    public final Type capture() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        C4933n.m24782a(genericSuperclass instanceof ParameterizedType, "%s isn't parameterized", genericSuperclass);
        return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
