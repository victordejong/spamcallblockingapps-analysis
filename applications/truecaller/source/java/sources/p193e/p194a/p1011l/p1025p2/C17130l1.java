package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.PremiumProductType;
import com.truecaller.premium.data.ProductKind;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.C16993f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.p2.l1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/l1.class */
public final class C17130l1 {

    /* renamed from: a */
    public final C17125k1 f48081a;

    /* renamed from: b */
    public final C17125k1 f48082b;

    /* renamed from: c */
    public final C17125k1 f48083c;

    /* renamed from: d */
    public final C17125k1 f48084d;

    /* renamed from: e */
    public final C17125k1 f48085e;

    /* renamed from: f */
    public final C17125k1 f48086f;

    /* renamed from: g */
    public final C17125k1 f48087g;

    /* renamed from: h */
    public final C17125k1 f48088h;

    /* renamed from: i */
    public final C17125k1 f48089i;

    /* renamed from: j */
    public final C17125k1 f48090j;

    /* renamed from: k */
    public final C17125k1 f48091k;

    /* renamed from: l */
    public final C17125k1 f48092l;

    public C17130l1() {
        this(null, null, null, null, null, null, null, null, null, null, null, null);
    }

    public C17130l1(C17125k1 c17125k1, C17125k1 c17125k12, C17125k1 c17125k13, C17125k1 c17125k14, C17125k1 c17125k15, C17125k1 c17125k16, C17125k1 c17125k17, C17125k1 c17125k18, C17125k1 c17125k19, C17125k1 c17125k110, C17125k1 c17125k111, C17125k1 c17125k112) {
        this.f48081a = c17125k1;
        this.f48082b = c17125k12;
        this.f48083c = c17125k13;
        this.f48084d = c17125k14;
        this.f48085e = c17125k15;
        this.f48086f = c17125k16;
        this.f48087g = c17125k17;
        this.f48088h = c17125k18;
        this.f48089i = c17125k19;
        this.f48090j = c17125k110;
        this.f48091k = c17125k111;
        this.f48092l = c17125k112;
    }

    /* renamed from: a */
    public final List<C17125k1> m16495a() {
        return i.V(new C17125k1[]{this.f48081a, this.f48082b, this.f48083c, this.f48084d, this.f48085e, this.f48086f, this.f48087g, this.f48088h, this.f48089i, this.f48091k, this.f48092l, this.f48090j});
    }

    /* renamed from: b */
    public final C16993f m16494b(List<C16993f> list) {
        Object obj;
        l.e(list, "subscriptions");
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            String str = ((C16993f) next).f47662a;
            C17125k1 c17125k1 = this.f48087g;
            if (l.a(str, c17125k1 != null ? c17125k1.m16506e() : null)) {
                obj = next;
                break;
            }
        }
        C16993f c16993f = (C16993f) obj;
        C16993f c16993f2 = null;
        if (c16993f != null) {
            ProductKind productKind = ProductKind.SUBSCRIPTION_GOLD;
            PremiumProductType premiumProductType = PremiumProductType.SUBSCRIPTION;
            C17125k1 c17125k12 = this.f48087g;
            boolean m16503h = c17125k12 != null ? c17125k12.m16503h() : false;
            C17125k1 c17125k13 = this.f48087g;
            C17138n1 c17138n1 = null;
            if (c17125k13 != null) {
                c17138n1 = c17125k13.m16505f();
            }
            c16993f2 = C16993f.m16658a(c16993f, null, null, null, null, 0L, null, 0L, null, 0, null, productKind, premiumProductType, m16503h, c17138n1, 1023);
        }
        return c16993f2;
    }

    /* renamed from: c */
    public final C16993f m16493c(List<C16993f> list) {
        Object obj;
        l.e(list, "subscriptions");
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            String str = ((C16993f) next).f47662a;
            C17125k1 c17125k1 = this.f48085e;
            if (l.a(str, c17125k1 != null ? c17125k1.m16506e() : null)) {
                obj = next;
                break;
            }
        }
        C16993f c16993f = (C16993f) obj;
        C16993f c16993f2 = null;
        if (c16993f != null) {
            ProductKind productKind = ProductKind.SUBSCRIPTION_YEARLY;
            PremiumProductType premiumProductType = PremiumProductType.SUBSCRIPTION;
            C17125k1 c17125k12 = this.f48085e;
            boolean m16503h = c17125k12 != null ? c17125k12.m16503h() : false;
            C17125k1 c17125k13 = this.f48085e;
            C17138n1 c17138n1 = null;
            if (c17125k13 != null) {
                c17138n1 = c17125k13.m16505f();
            }
            c16993f2 = C16993f.m16658a(c16993f, null, null, null, null, 0L, null, 0L, null, 0, null, productKind, premiumProductType, m16503h, c17138n1, 1023);
        }
        return c16993f2;
    }

    /* renamed from: d */
    public final C17134m1 m16492d() {
        List<C17125k1> m16495a = m16495a();
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m16495a).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (l.a(((C17125k1) next).m16504g(), PremiumProductType.SUBSCRIPTION.getProductType())) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String m16506e = ((C17125k1) it2.next()).m16506e();
            if (m16506e != null) {
                arrayList2.add(m16506e);
            }
        }
        List<C17125k1> m16495a2 = m16495a();
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = ((ArrayList) m16495a2).iterator();
        while (it3.hasNext()) {
            Object next2 = it3.next();
            if (l.a(((C17125k1) next2).m16504g(), PremiumProductType.IN_APP.getProductType())) {
                arrayList3.add(next2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            String m16506e2 = ((C17125k1) it4.next()).m16506e();
            if (m16506e2 != null) {
                arrayList4.add(m16506e2);
            }
        }
        return new C17134m1(arrayList2, arrayList4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17130l1)) {
                return false;
            }
            C17130l1 c17130l1 = (C17130l1) obj;
            return l.a(this.f48081a, c17130l1.f48081a) && l.a(this.f48082b, c17130l1.f48082b) && l.a(this.f48083c, c17130l1.f48083c) && l.a(this.f48084d, c17130l1.f48084d) && l.a(this.f48085e, c17130l1.f48085e) && l.a(this.f48086f, c17130l1.f48086f) && l.a(this.f48087g, c17130l1.f48087g) && l.a(this.f48088h, c17130l1.f48088h) && l.a(this.f48089i, c17130l1.f48089i) && l.a(this.f48090j, c17130l1.f48090j) && l.a(this.f48091k, c17130l1.f48091k) && l.a(this.f48092l, c17130l1.f48092l);
        }
        return true;
    }

    public int hashCode() {
        C17125k1 c17125k1 = this.f48081a;
        int i = 0;
        int hashCode = c17125k1 != null ? c17125k1.hashCode() : 0;
        C17125k1 c17125k12 = this.f48082b;
        int hashCode2 = c17125k12 != null ? c17125k12.hashCode() : 0;
        C17125k1 c17125k13 = this.f48083c;
        int hashCode3 = c17125k13 != null ? c17125k13.hashCode() : 0;
        C17125k1 c17125k14 = this.f48084d;
        int hashCode4 = c17125k14 != null ? c17125k14.hashCode() : 0;
        C17125k1 c17125k15 = this.f48085e;
        int hashCode5 = c17125k15 != null ? c17125k15.hashCode() : 0;
        C17125k1 c17125k16 = this.f48086f;
        int hashCode6 = c17125k16 != null ? c17125k16.hashCode() : 0;
        C17125k1 c17125k17 = this.f48087g;
        int hashCode7 = c17125k17 != null ? c17125k17.hashCode() : 0;
        C17125k1 c17125k18 = this.f48088h;
        int hashCode8 = c17125k18 != null ? c17125k18.hashCode() : 0;
        C17125k1 c17125k19 = this.f48089i;
        int hashCode9 = c17125k19 != null ? c17125k19.hashCode() : 0;
        C17125k1 c17125k110 = this.f48090j;
        int hashCode10 = c17125k110 != null ? c17125k110.hashCode() : 0;
        C17125k1 c17125k111 = this.f48091k;
        int hashCode11 = c17125k111 != null ? c17125k111.hashCode() : 0;
        C17125k1 c17125k112 = this.f48092l;
        if (c17125k112 != null) {
            i = c17125k112.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ProductIds(monthly=");
        m8728C.append(this.f48081a);
        m8728C.append(", monthlyBasic=");
        m8728C.append(this.f48082b);
        m8728C.append(", quarterly=");
        m8728C.append(this.f48083c);
        m8728C.append(", halfYearly=");
        m8728C.append(this.f48084d);
        m8728C.append(", yearly=");
        m8728C.append(this.f48085e);
        m8728C.append(", yearlyWelcome=");
        m8728C.append(this.f48086f);
        m8728C.append(", gold=");
        m8728C.append(this.f48087g);
        m8728C.append(", yearlyConsumable=");
        m8728C.append(this.f48088h);
        m8728C.append(", goldYearlyConsumable=");
        m8728C.append(this.f48089i);
        m8728C.append(", halfYearlyConsumable=");
        m8728C.append(this.f48090j);
        m8728C.append(", monthlyConsumable=");
        m8728C.append(this.f48091k);
        m8728C.append(", quarterlyConsumable=");
        m8728C.append(this.f48092l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
