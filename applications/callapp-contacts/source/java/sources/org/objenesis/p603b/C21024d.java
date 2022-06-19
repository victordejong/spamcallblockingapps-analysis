package org.objenesis.p603b;

import java.io.Serializable;
import org.objenesis.p596a.AbstractC21005a;
import org.objenesis.p596a.p597a.C21006a;
import org.objenesis.p596a.p597a.C21007b;
import org.objenesis.p596a.p597a.C21008c;
import org.objenesis.p596a.p598b.C21009a;
import org.objenesis.p596a.p598b.C21011c;
import org.objenesis.p596a.p599c.C21013a;
import org.objenesis.p596a.p600d.C21016a;
import org.objenesis.p596a.p601e.C21018b;
import org.objenesis.p596a.p601e.C21019c;
/* renamed from: org.objenesis.b.d */
/* loaded from: classes5-dex2jar.jar:org/objenesis/b/d.class */
public class C21024d extends AbstractC21021a {
    @Override // org.objenesis.p603b.AbstractC21022b
    /* renamed from: a */
    public <T> AbstractC21005a<T> mo125a(Class<T> cls) {
        return (C21023c.m129a("Java HotSpot") || C21023c.m129a("OpenJDK")) ? (!C21023c.m128b() || !C21023c.f67622a.equals("1.7")) ? new C21018b(cls) : Serializable.class.isAssignableFrom(cls) ? new C21011c(cls) : new C21009a(cls) : C21023c.m129a("Dalvik") ? C21023c.m131a() ? new C21019c(cls) : C21023c.f67628g <= 10 ? new C21006a(cls) : C21023c.f67628g <= 17 ? new C21007b(cls) : new C21008c(cls) : C21023c.m129a("GNU libgcj") ? new C21013a(cls) : C21023c.m129a("PERC") ? new C21016a(cls) : new C21019c(cls);
    }
}
