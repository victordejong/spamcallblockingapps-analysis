package p197p1;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p186o1.AbstractC3824h;
import p186o1.AbstractC3829k;
import p186o1.AbstractC3837n;
import p186o1.AbstractC3838o;
/* renamed from: p1.f */
/* loaded from: classes-dex2jar.jar:p1/f.class */
public class C4002f extends AbstractC3837n {

    /* renamed from: j */
    public static final String f12566j = AbstractC3824h.m1773e("WorkContinuationImpl");

    /* renamed from: a */
    public final C4006j f12567a;

    /* renamed from: d */
    public final List<? extends AbstractC3838o> f12570d;

    /* renamed from: e */
    public final List<String> f12571e;

    /* renamed from: h */
    public boolean f12574h;

    /* renamed from: i */
    public AbstractC3829k f12575i;

    /* renamed from: b */
    public final String f12568b = null;

    /* renamed from: c */
    public final int f12569c = 2;

    /* renamed from: g */
    public final List<C4002f> f12573g = null;

    /* renamed from: f */
    public final List<String> f12572f = new ArrayList();

    public C4002f(C4006j c4006j, List<? extends AbstractC3838o> list) {
        this.f12567a = c4006j;
        this.f12570d = list;
        this.f12571e = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            String m1766a = list.get(i).m1766a();
            this.f12571e.add(m1766a);
            this.f12572f.add(m1766a);
        }
    }

    /* renamed from: c */
    public static boolean m1541c(C4002f c4002f, Set<String> set) {
        set.addAll(c4002f.f12571e);
        Set<String> m1540d = m1540d(c4002f);
        for (String str : set) {
            if (((HashSet) m1540d).contains(str)) {
                return true;
            }
        }
        List<C4002f> list = c4002f.f12573g;
        if (list != null && !list.isEmpty()) {
            for (C4002f c4002f2 : list) {
                if (m1541c(c4002f2, set)) {
                    return true;
                }
            }
        }
        set.removeAll(c4002f.f12571e);
        return false;
    }

    /* renamed from: d */
    public static Set<String> m1540d(C4002f c4002f) {
        HashSet hashSet = new HashSet();
        List<C4002f> list = c4002f.f12573g;
        if (list != null && !list.isEmpty()) {
            for (C4002f c4002f2 : list) {
                hashSet.addAll(c4002f2.f12571e);
            }
        }
        return hashSet;
    }
}
