package p1727n3.p1758e.p1759a.p1761e;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25764a;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.C26077m0;
import p1727n3.p1758e.p1767b.C26079n0;
import p1727n3.p1758e.p1767b.C26101x0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25951e0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26056y;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1758e.p1767b.p1768j1.C25946d0;
/* renamed from: n3.e.a.e.a1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/a1.class */
public final class C25713a1 implements AbstractC26056y {

    /* renamed from: a */
    public final AbstractC25951e0 f72002a;

    /* renamed from: c */
    public final C25795k f72004c;

    /* renamed from: d */
    public final List<String> f72005d;

    /* renamed from: e */
    public final Map<String, c1> f72006e = new HashMap();

    /* renamed from: b */
    public final C25946d0 f72003b = new C25946d0(1);

    public C25713a1(Context context, AbstractC25951e0 abstractC25951e0, C26077m0 c26077m0) throws C26101x0 {
        String str;
        this.f72002a = abstractC25951e0;
        C25795k m2991a = C25795k.m2991a(context, abstractC25951e0.mo2825b());
        this.f72004c = m2991a;
        try {
            ArrayList arrayList = new ArrayList();
            List<String> asList = Arrays.asList(m2991a.m2989c());
            if (c26077m0 == null) {
                for (String str2 : asList) {
                    arrayList.add(str2);
                }
            } else {
                try {
                    str = MediaSessionCompat.m43272S(m2991a, c26077m0.m2738c(), asList);
                } catch (IllegalStateException e) {
                    str = null;
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str3 : asList) {
                    if (!str3.equals(str)) {
                        arrayList2.add(m3035c(str3));
                    }
                }
                try {
                    Iterator<AbstractC26075l0> it = c26077m0.m2739b(arrayList2).iterator();
                    while (it.hasNext()) {
                        arrayList.add(((AbstractC26059z) it.next()).m2766a());
                    }
                } catch (IllegalArgumentException e2) {
                }
            }
            this.f72005d = arrayList;
        } catch (C25764a e3) {
            throw new C26101x0(MediaSessionCompat.m43289L(e3));
        } catch (C26079n0 e4) {
            throw new C26101x0(e4);
        }
    }

    /* renamed from: a */
    public Set<String> m3037a() {
        return new LinkedHashSet(this.f72005d);
    }

    /* renamed from: b */
    public AbstractC25938b0 m3036b(String str) throws C26079n0 {
        if (this.f72005d.contains(str)) {
            return new b1(this.f72004c, str, m3035c(str), this.f72003b, this.f72002a.mo2826a(), this.f72002a.mo2825b());
        }
        throw new IllegalArgumentException("The given camera id is not on the available camera id list.");
    }

    /* renamed from: c */
    public c1 m3035c(String str) throws C26079n0 {
        try {
            c1 c1Var = this.f72006e.get(str);
            c1 c1Var2 = c1Var;
            if (c1Var == null) {
                c1Var2 = new c1(str, this.f72004c.m2990b(str));
                this.f72006e.put(str, c1Var2);
            }
            return c1Var2;
        } catch (C25764a e) {
            throw MediaSessionCompat.m43289L(e);
        }
    }
}
