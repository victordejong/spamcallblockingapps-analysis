package p193e.p1681q.p1701f.p1702a.p1705e.p1707c;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25234a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25236c;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25237d;
import p193e.p1681q.p1701f.p1702a.p1712f.C25245a;
import p193e.p1681q.p1701f.p1702a.p1712f.C25254k;
/* renamed from: e.q.f.a.e.c.a */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/c/a.class */
public class C25233a {

    /* renamed from: d */
    public List<String> f70572d;

    /* renamed from: e */
    public List<String> f70573e;

    /* renamed from: g */
    public C25237d f70575g;

    /* renamed from: h */
    public HashMap<String, C25245a> f70576h;

    /* renamed from: a */
    public C25236c f70569a = new C25236c();

    /* renamed from: b */
    public C25236c f70570b = new C25236c();

    /* renamed from: c */
    public C25236c f70571c = new C25236c();

    /* renamed from: f */
    public List<Integer> f70574f = new ArrayList();

    public C25233a(C25254k c25254k, C25234a c25234a) {
        this.f70572d = c25254k.f70642c;
        ArrayList arrayList = new ArrayList();
        arrayList.add("SEATNUMB");
        this.f70573e = arrayList;
        this.f70575g = new C25237d(c25234a);
        this.f70576h = c25254k.f70641b;
    }

    /* renamed from: a */
    public void m3783a(C25235b c25235b) {
        List<C25235b> m3768g;
        try {
            if (c25235b.f70579a.equals("INSTR")) {
                if (this.f70571c.m3770e("INTENT", "TRANSINTENT", "USE", "TRANS", "TRX") && (m3768g = this.f70571c.m3768g("GDO_NONDET", 3, "INS", "DET", "PREP", "ART")) != null) {
                    StringBuilder sb = new StringBuilder("");
                    for (int size = m3768g.size() - 1; size >= 0; size--) {
                        C25235b c25235b2 = m3768g.get(size);
                        c25235b2.f70586h = true;
                        sb.append(c25235b2.f70584f);
                        sb.append(StringConstant.SPACE);
                    }
                    c25235b.m3781a("acc_name", sb.substring(0, sb.length() - 1));
                }
                if (this.f70571c.m3769f(RemoteMessageConst.FROM, 2, "INS", new String[0]) != null || this.f70571c.m3769f("frm", 2, "INS", new String[0]) != null) {
                    c25235b.m3781a("fromacc", "true");
                }
            } else if (c25235b.f70579a.equals("BILL") && this.f70571c.m3770e("REMIND", "TRANS", "SALDET", "NEW", "CUST")) {
                List<C25235b> m3768g2 = this.f70571c.m3768g("GDO_NONDET", 1, null, "DET", "PREPV", "NEW", "PREP");
                if (m3768g2 != null) {
                    StringBuilder sb2 = new StringBuilder("");
                    for (int size2 = m3768g2.size() - 1; size2 >= 0; size2--) {
                        sb2.append(m3768g2.get(size2).f70584f);
                        sb2.append(StringConstant.SPACE);
                    }
                    c25235b.m3781a("billvendor", sb2.substring(0, sb2.length() - 1));
                } else if (this.f70571c.m3766i() > 1) {
                    C25236c c25236c = this.f70571c;
                    if ("GDO_NONDET".equals(c25236c.f70589a.get(c25236c.m3766i() - 1).f70579a)) {
                        C25236c c25236c2 = this.f70571c;
                        if ("MOB".equals(c25236c2.f70589a.get(c25236c2.m3766i() - 2).f70579a)) {
                            StringBuilder sb3 = new StringBuilder();
                            C25236c c25236c3 = this.f70571c;
                            sb3.append(c25236c3.f70589a.get(c25236c3.m3766i() - 2).f70584f);
                            sb3.append(StringConstant.SPACE);
                            C25236c c25236c4 = this.f70571c;
                            sb3.append(c25236c4.f70589a.get(c25236c4.m3766i() - 1).f70584f);
                            c25235b.m3781a("billvendor", sb3.toString());
                        } else {
                            C25236c c25236c5 = this.f70571c;
                            if ("GDO_NONDET".equals(c25236c5.f70589a.get(c25236c5.m3766i() - 2).f70579a)) {
                                C25236c c25236c6 = this.f70571c;
                                if ("MOB".equals(c25236c6.f70589a.get(c25236c6.m3766i() - 3).f70579a)) {
                                    StringBuilder sb4 = new StringBuilder();
                                    C25236c c25236c7 = this.f70571c;
                                    sb4.append(c25236c7.f70589a.get(c25236c7.m3766i() - 3).f70584f);
                                    sb4.append(StringConstant.SPACE);
                                    C25236c c25236c8 = this.f70571c;
                                    sb4.append(c25236c8.f70589a.get(c25236c8.m3766i() - 1).f70584f);
                                    c25235b.m3781a("billvendor", sb4.toString());
                                }
                            }
                        }
                    }
                }
            } else if (c25235b.f70579a.equals("INSTRNO") && this.f70571c.m3772c(1, "FLIGHT") && this.f70571c.m3772c(2, "TOTAL")) {
                c25235b.m3781a("vendor", "netflix");
            }
        } catch (Exception e) {
        }
        this.f70571c.f70589a.add(c25235b);
        this.f70569a.f70589a.add(c25235b);
        if (!c25235b.m3776f()) {
            this.f70570b.f70589a.add(c25235b);
        }
    }

    /* renamed from: b */
    public boolean m3782b(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) == ' ' || str.charAt(length) == '.') {
                return !this.f70572d.contains(str.substring(length + 1, str.length()).toLowerCase());
            }
        }
        return false;
    }
}
