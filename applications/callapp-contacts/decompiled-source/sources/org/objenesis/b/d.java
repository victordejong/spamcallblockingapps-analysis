package org.objenesis.b;

import java.io.Serializable;
import org.objenesis.a.a;
import org.objenesis.a.b.c;
import org.objenesis.a.e.b;
/* loaded from: classes5-dex2jar.jar:org/objenesis/b/d.class */
public class d extends a {
    @Override // org.objenesis.b.b
    public <T> a<T> a(Class<T> cls) {
        return (c.a("Java HotSpot") || c.a("OpenJDK")) ? (!c.b() || !c.f39393a.equals("1.7")) ? new b(cls) : Serializable.class.isAssignableFrom(cls) ? new c(cls) : new org.objenesis.a.b.a(cls) : c.a("Dalvik") ? c.a() ? new org.objenesis.a.e.c(cls) : c.g <= 10 ? new org.objenesis.a.a.a(cls) : c.g <= 17 ? new org.objenesis.a.a.b(cls) : new org.objenesis.a.a.c(cls) : c.a("GNU libgcj") ? new org.objenesis.a.c.a(cls) : c.a("PERC") ? new org.objenesis.a.d.a(cls) : new org.objenesis.a.e.c(cls);
    }
}
