package p193e.p1512i.p1516b;

import com.criteo.publisher.model.AdUnit;
import com.tenor.android.core.constant.StringConstant;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.i.b.d3 */
/* loaded from: classes-dex2jar.jar:e/i/b/d3.class */
public final class C22936d3 {
    /* renamed from: a */
    public static final C23019f m7618a(String str, List<? extends AdUnit> list, String str2) {
        l.f(str, "cpId");
        l.f(list, "adUnits");
        l.f(str2, "version");
        StringBuilder m8688M = C22128a.m8688M("Criteo SDK version ", str2, " is initialized with Publisher ID ", str, " and ");
        m8688M.append(list.size());
        m8688M.append(" ad units:\n");
        m8688M.append(i.O(list, StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, a.b, 30));
        return new C23019f(0, m8688M.toString(), null, null, 13);
    }
}
