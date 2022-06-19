package p193e.p1681q.p1701f.p1702a.p1705e.p1706b;

import com.razorpay.AnalyticsConstants;
import e.q.f.a.c.b;
import e.q.f.a.f.n;
import java.util.HashMap;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25230b;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25234a;
import p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b;
import p193e.p1681q.p1701f.p1702a.p1712f.AbstractC25248d;
/* renamed from: e.q.f.a.e.b.a */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/e/b/a.class */
public class C25229a {

    /* renamed from: a */
    public C25234a f70544a;

    /* renamed from: b */
    public C25234a f70545b;

    /* renamed from: c */
    public C25234a f70546c;

    /* renamed from: d */
    public b f70547d;

    /* renamed from: e */
    public b f70548e;

    /* renamed from: f */
    public C25235b f70549f;

    /* renamed from: h */
    public int f70551h;

    /* renamed from: k */
    public AbstractC25248d f70554k;

    /* renamed from: l */
    public b f70555l;

    /* renamed from: m */
    public C25235b f70556m;

    /* renamed from: n */
    public C25235b f70557n;

    /* renamed from: g */
    public boolean f70550g = false;

    /* renamed from: j */
    public boolean f70553j = false;

    /* renamed from: i */
    public int f70552i = 0;

    public C25229a(b bVar, C25234a c25234a, C25234a c25234a2, AbstractC25248d abstractC25248d, int i) {
        this.f70548e = bVar;
        this.f70547d = bVar;
        this.f70546c = c25234a2;
        this.f70545b = c25234a2;
        this.f70544a = c25234a;
        this.f70554k = abstractC25248d;
        this.f70551h = i;
        c25234a2.f70578b = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x048e, code lost:
        if (r13 == false) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0506  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3789a(p193e.p1681q.p1701f.p1702a.p1705e.p1708d.C25235b r9) {
        /*
            Method dump skipped, instructions count: 1469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1701f.p1702a.p1705e.p1706b.C25229a.m3789a(e.q.f.a.e.d.b):boolean");
    }

    /* renamed from: b */
    public final void m3788b(C25235b c25235b) {
        b bVar;
        if ((this.f70547d != this.f70548e) && (bVar = this.f70555l) != null) {
            if ((!bVar.f70533c ? 0 : bVar.e.size()) > 1) {
                C25230b.a aVar = this.f70554k;
                C25235b c25235b2 = this.f70556m;
                String str = c25235b2.f70579a;
                int i = this.f70552i;
                C25230b c25230b = (C25230b) aVar.a.get();
                if (c25230b != null) {
                    b bVar2 = c25230b.f70559b;
                    C25234a c25234a = c25230b.f70558a.m3784c().f70545b;
                    C25234a c25234a2 = c25230b.f70558a.m3784c().f70545b;
                    C25234a c25234a3 = new C25234a(c25234a2.f70577a, c25234a2.f70578b);
                    C25230b.a aVar2 = new C25230b.a(c25230b);
                    int i2 = c25230b.f70562e + 1;
                    c25230b.f70562e = i2;
                    C25229a c25229a = new C25229a(bVar2, c25234a, c25234a3, aVar2, i2);
                    c25229a.f70552i = i;
                    c25230b.f70560c.put(str, new C25230b.C25231b(c25229a, c25235b2));
                }
            }
        }
        this.f70556m = c25235b;
        this.f70555l = this.f70547d.d(c25235b);
        this.f70547d = this.f70547d.d(c25235b);
        if (this.f70549f == null) {
            C25235b c25235b3 = new C25235b();
            this.f70549f = c25235b3;
            c25235b3.f70585g = c25235b.f70585g;
        }
        n nVar = c25235b.f70581c;
        if (nVar != null && nVar.g() > 0) {
            C25235b c25235b4 = this.f70549f;
            n nVar2 = c25235b4.f70581c;
            n nVar3 = c25235b.f70581c;
            HashMap hashMap = new HashMap();
            for (Map.Entry entry : nVar3.b()) {
                if (!((String) entry.getKey()).equals("num_class")) {
                    if (((String) entry.getKey()).equals("type")) {
                        String str2 = (String) entry.getKey();
                        n nVar4 = nVar2;
                        if (nVar4.a(str2) && !nVar4.c((String) entry.getKey()).equals(entry.getValue())) {
                            String str3 = (String) entry.getValue();
                            String c = nVar4.c((String) entry.getKey());
                            if ((str3.equals("neft") || str3.equals("imps") || str3.equals(AnalyticsConstants.UPI) || str3.equals("aeps") || str3.equals("rtgs")) && c.equals("debit")) {
                                hashMap.put(entry.getKey(), str3);
                            } else if (c.equals("neft") || c.equals("imps") || c.equals(AnalyticsConstants.UPI) || c.equals("aeps") || c.equals("rtgs")) {
                                if (str3.equals("debit")) {
                                    hashMap.put(entry.getKey(), c);
                                }
                            }
                        }
                    }
                    if (((String) entry.getKey()).equals("loc")) {
                        String str4 = (String) entry.getKey();
                        n nVar5 = nVar2;
                        if (nVar5.a(str4) && !nVar5.c((String) entry.getKey()).equals(entry.getValue())) {
                            hashMap.put("from_loc", nVar5.f((String) entry.getKey()));
                            hashMap.put("to_loc", entry.getValue());
                        }
                    }
                    if (((String) entry.getKey()).equals("airport")) {
                        String str5 = (String) entry.getKey();
                        n nVar6 = nVar2;
                        if (nVar6.a(str5) && !nVar6.c((String) entry.getKey()).equals(entry.getValue())) {
                            hashMap.put("from_loc", nVar6.f((String) entry.getKey()));
                            hashMap.put("to_loc", entry.getValue());
                        }
                    }
                    hashMap.put(entry.getKey(), entry.getValue());
                }
            }
            c25235b4.f70581c.b.putAll(hashMap);
        }
        this.f70549f.f70582d.add(c25235b);
    }
}
