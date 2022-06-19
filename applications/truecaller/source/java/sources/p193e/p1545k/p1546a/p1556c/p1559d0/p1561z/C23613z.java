package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
/* renamed from: e.k.a.c.d0.z.z */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/z.class */
public class C23613z extends AbstractC23552e0<StackTraceElement> {
    public C23613z() {
        super(StackTraceElement.class);
    }

    /* renamed from: m0 */
    public StackTraceElement mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        String str;
        String str2;
        int i;
        String str3;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l != EnumC23381m.START_OBJECT) {
            if (mo7142l != EnumC23381m.START_ARRAY || !abstractC23632g.m6488R(EnumC23694h.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            }
            abstractC23376j.mo5811i2();
            StackTraceElement mo6232d = mo6232d(abstractC23376j, abstractC23632g);
            if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
                return mo6232d;
            }
            m6643k0(abstractC23632g);
            throw null;
        }
        int i2 = -1;
        String str4 = "";
        String str5 = "";
        String str6 = str5;
        while (true) {
            String str7 = str6;
            EnumC23381m mo7141o2 = abstractC23376j.mo7141o2();
            if (mo7141o2 == EnumC23381m.END_OBJECT) {
                return new StackTraceElement(str4, str5, str7, i2);
            }
            String mo5809k = abstractC23376j.mo5809k();
            if ("className".equals(mo5809k)) {
                str3 = abstractC23376j.mo5817U0();
                i = i2;
                str2 = str5;
                str = str7;
            } else if ("classLoaderName".equals(mo5809k)) {
                abstractC23376j.mo5817U0();
                i = i2;
                str3 = str4;
                str2 = str5;
                str = str7;
            } else if ("fileName".equals(mo5809k)) {
                str = abstractC23376j.mo5817U0();
                i = i2;
                str3 = str4;
                str2 = str5;
            } else if ("lineNumber".equals(mo5809k)) {
                if (mo7141o2.f64710g) {
                    i = abstractC23376j.mo5800z0();
                    str3 = str4;
                    str2 = str5;
                    str = str7;
                } else {
                    i = m6658T(abstractC23376j, abstractC23632g);
                    str3 = str4;
                    str2 = str5;
                    str = str7;
                }
            } else if ("methodName".equals(mo5809k)) {
                str2 = abstractC23376j.mo5817U0();
                i = i2;
                str3 = str4;
                str = str7;
            } else if ("nativeMethod".equals(mo5809k)) {
                i = i2;
                str3 = str4;
                str2 = str5;
                str = str7;
            } else if ("moduleName".equals(mo5809k)) {
                abstractC23376j.mo5817U0();
                i = i2;
                str3 = str4;
                str2 = str5;
                str = str7;
            } else if ("moduleVersion".equals(mo5809k)) {
                abstractC23376j.mo5817U0();
                i = i2;
                str3 = str4;
                str2 = str5;
                str = str7;
            } else {
                i = i2;
                str3 = str4;
                str2 = str5;
                str = str7;
                if (!"declaringClass".equals(mo5809k)) {
                    if ("format".equals(mo5809k)) {
                        i = i2;
                        str3 = str4;
                        str2 = str5;
                        str = str7;
                    } else {
                        mo6642l0(abstractC23376j, abstractC23632g, this.f65309a, mo5809k);
                        str = str7;
                        str2 = str5;
                        str3 = str4;
                        i = i2;
                    }
                }
            }
            abstractC23376j.mo7139w2();
            i2 = i;
            str4 = str3;
            str5 = str2;
            str6 = str;
        }
    }
}
