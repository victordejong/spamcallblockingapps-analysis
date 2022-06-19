package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.p1552w.C23403i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
/* renamed from: e.k.a.c.n0.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/k.class */
public final class C23921k implements Serializable {

    /* renamed from: a */
    public final Class<Enum<?>> f66175a;

    /* renamed from: b */
    public final AbstractC23384p[] f66176b;

    public C23921k(Class<Enum<?>> cls, AbstractC23384p[] abstractC23384pArr) {
        this.f66175a = cls;
        cls.getEnumConstants();
        this.f66176b = abstractC23384pArr;
    }

    /* renamed from: a */
    public static C23921k m5731a(AbstractC23458k<?> abstractC23458k, Class<Enum<?>> cls) {
        Annotation[] annotationArr = C23914g.f66156a;
        Class<? super Enum<?>> superclass = cls.getSuperclass() != Enum.class ? cls.getSuperclass() : cls;
        Enum<?>[] enumArr = (Enum[]) superclass.getEnumConstants();
        if (enumArr != null) {
            String[] mo6275l = abstractC23458k.m6864e().mo6275l(superclass, enumArr, new String[enumArr.length]);
            AbstractC23384p[] abstractC23384pArr = new AbstractC23384p[enumArr.length];
            int length = enumArr.length;
            for (int i = 0; i < length; i++) {
                Enum<?> r0 = enumArr[i];
                String str = mo6275l[i];
                String str2 = str;
                if (str == null) {
                    str2 = r0.name();
                }
                abstractC23384pArr[r0.ordinal()] = new C23403i(str2);
            }
            return new C23921k(cls, abstractC23384pArr);
        }
        throw new IllegalArgumentException(C22128a.m8647Z1(cls, C22128a.m8728C("Cannot determine enum constants for Class ")));
    }
}
