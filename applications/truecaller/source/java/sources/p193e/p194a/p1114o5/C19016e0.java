package p193e.p194a.p1114o5;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.multisim.SimInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.AbstractC19096r1;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.o5.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/e0.class */
public final class C19016e0 implements AbstractC19092q1 {

    /* renamed from: a */
    public final AbstractC19230g f53140a;

    /* renamed from: b */
    public final AbstractC13497p f53141b;

    @Inject
    public C19016e0(AbstractC19230g abstractC19230g, AbstractC13497p abstractC13497p) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13497p, "multiSimManager");
        this.f53140a = abstractC19230g;
        this.f53141b = abstractC13497p;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19092q1
    /* renamed from: a */
    public AbstractC19096r1 mo14134a(String str) {
        AbstractC19096r1.C19099c c19099c;
        boolean z;
        l.e(str, "rawInput");
        if (str.length() == 0) {
            c19099c = null;
        } else {
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    z = true;
                    break;
                }
                char charAt = str.charAt(i);
                if ((charAt == '#' || charAt == '*') ? false : true) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                c19099c = null;
            } else if (r.y(str, "*#*#", false, 2) && r.m(str, "#*#*", false, 2)) {
                String substring = str.substring(4, str.length() - 4);
                l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                c19099c = new AbstractC19096r1.C19099c(substring, str);
            } else {
                c19099c = null;
                if ((r.y(str, "*", false, 2) | r.y(str, StringConstant.HASH, false, 2)) & r.m(str, StringConstant.HASH, false, 2)) {
                    int hashCode = str.hashCode();
                    if (hashCode == 39878404) {
                        c19099c = null;
                        if (str.equals("*#06#")) {
                            String str2 = this.f53140a.mo13783n() ? "MEID" : "IMEI";
                            List<SimInfo> mo21742d = this.f53141b.mo21742d();
                            ArrayList m8670S = C22128a.m8670S(mo21742d, "multiSimManager.allSimInfos");
                            for (SimInfo simInfo : mo21742d) {
                                String str3 = simInfo.f13989g;
                                if (str3 != null) {
                                    m8670S.add(str3);
                                }
                            }
                            ArrayList arrayList = new ArrayList();
                            Iterator it = m8670S.iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                if (((String) next).length() > 0) {
                                    arrayList.add(next);
                                }
                            }
                            Object[] array = arrayList.toArray(new String[0]);
                            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                            String[] strArr = (String[]) array;
                            c19099c = new AbstractC19096r1.C19097a(str2, (String[]) Arrays.copyOf(strArr, strArr.length));
                        }
                    } else if (hashCode != 39878435) {
                        c19099c = null;
                    } else {
                        c19099c = null;
                        if (str.equals("*#07#")) {
                            c19099c = AbstractC19096r1.C19098b.f53314a;
                        }
                    }
                }
            }
        }
        return c19099c;
    }
}
