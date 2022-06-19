package p193e.p194a.p1159q4;

import com.truecaller.blocking.FilterAction;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1336b.p1337c.C21181b;
import p193e.p194a.p1334w.p1336b.p1337c.C21182c;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p997k3.p998j.C16461b;
import w3.c.a.a.a.h;
import x3.a0;
/* renamed from: e.a.q4.u */
/* loaded from: classes12-dex2jar.jar:e/a/q4/u.class */
public class C19672u {

    /* renamed from: a */
    public final AbstractC14630d f54631a;

    /* renamed from: b */
    public final int f54632b;

    /* renamed from: c */
    public final int f54633c;

    /* renamed from: d */
    public final C21185a f54634d;

    /* renamed from: g */
    public final C16461b f54637g;

    /* renamed from: h */
    public final AbstractC21179b f54638h;

    /* renamed from: i */
    public final AbstractC8621z f54639i;

    /* renamed from: k */
    public final AbstractC14835j f54641k;

    /* renamed from: l */
    public final AbstractC14840m f54642l;

    /* renamed from: m */
    public final C21183a f54643m;

    /* renamed from: n */
    public int f54644n;

    /* renamed from: e */
    public final List<Participant> f54635e = new ArrayList();

    /* renamed from: f */
    public final List<Contact> f54636f = new ArrayList();

    /* renamed from: j */
    public final StringBuilder f54640j = new StringBuilder();

    public C19672u(AbstractC14630d abstractC14630d, int i, int i2, C21185a c21185a, C16461b c16461b, AbstractC21179b abstractC21179b, AbstractC8621z abstractC8621z, AbstractC14835j abstractC14835j, AbstractC14840m abstractC14840m, C21183a c21183a) {
        this.f54631a = abstractC14630d;
        this.f54632b = i;
        this.f54633c = i2;
        this.f54634d = c21185a;
        this.f54637g = c16461b;
        this.f54638h = abstractC21179b;
        this.f54639i = abstractC8621z;
        this.f54641k = abstractC14835j;
        this.f54642l = abstractC14840m;
        this.f54643m = c21183a;
    }

    /* renamed from: a */
    public final boolean m13040a() {
        return this.f54635e.size() == this.f54632b;
    }

    /* renamed from: b */
    public final boolean m13039b(String str, boolean z) {
        FilterAction filterAction = this.f54641k.mo19591e(str).f10453b;
        return filterAction != FilterAction.ALLOW_WHITELISTED && ((z && this.f54642l.mo19547u()) || filterAction == FilterAction.FILTER_BLACKLISTED);
    }

    /* renamed from: c */
    public final void m13038c() {
        for (Participant participant : this.f54635e) {
            C10480a.m25885v0(participant);
            String str = participant.f11572e;
            StringBuilder sb = this.f54640j;
            sb.append(str);
            sb.append(",");
        }
        this.f54635e.size();
        if (this.f54638h.contains("smsReferralPrefetchBatch") || this.f54640j.length() <= 0) {
            return;
        }
        StringBuilder sb2 = this.f54640j;
        sb2.deleteCharAt(sb2.length() - 1);
        String sb3 = this.f54640j.toString();
        if (h.j(sb3)) {
            return;
        }
        this.f54638h.mo13034b("smsReferralPrefetchBatch", sb3);
    }

    /* renamed from: d */
    public final void m13037d(List<C21182c> list) {
        Contact m17364h;
        for (C21182c c21182c : list) {
            String mo28181j = this.f54639i.mo28181j(c21182c.m10164a());
            if (mo28181j != null && (m17364h = this.f54637g.m17364h(mo28181j)) != null) {
                if (this.f54639i.mo28182i(mo28181j) == 2) {
                    Participant m35457b = Participant.m35457b(m17364h, mo28181j, this.f54639i, C12864a2.m22592B(m17364h, true));
                    if (!this.f54635e.contains(m35457b)) {
                        this.f54635e.add(m35457b);
                        m17364h.m35491w();
                    } else {
                        m17364h.m35491w();
                    }
                }
                if (m13040a()) {
                    m13038c();
                    return;
                }
            }
        }
        m13036e();
    }

    /* renamed from: e */
    public final void m13036e() {
        Object obj;
        boolean z;
        if (this.f54636f.size() <= this.f54644n) {
            m13038c();
            return;
        }
        ArrayList arrayList = new ArrayList(this.f54633c);
        int i = this.f54644n;
        loop0: while (true) {
            int i2 = i;
            if (i2 >= this.f54636f.size()) {
                break;
            }
            int i3 = i2 + 1;
            this.f54644n = i3;
            Contact contact = this.f54636f.get(i2);
            if (contact != null) {
                for (Number number : contact.m35557M()) {
                    if (number != null && !arrayList.contains(number)) {
                        String m35479e = number.m35479e();
                        contact.m35491w();
                        if (m13039b(m35479e, contact.m35574A0())) {
                            continue;
                        } else {
                            Iterator<Participant> it = this.f54635e.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (h.e(it.next().f11572e, m35479e)) {
                                        z = true;
                                        break;
                                    }
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                            if (!z) {
                                C21185a c21185a = this.f54634d;
                                Objects.requireNonNull(c21185a);
                                if (c21185a.m10155f(number.m35479e(), c21185a.m10160a(number.getCountryCode()))) {
                                    if (!this.f54634d.m10158c(m35479e)) {
                                        arrayList.add(number);
                                    }
                                    if (arrayList.size() == this.f54633c || m13040a()) {
                                        break loop0;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                continue;
            }
            i = i3;
        }
        if (m13040a()) {
            m13038c();
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String m35479e2 = ((Number) it2.next()).m35479e();
            arrayList2.add(new C14012i.C14014b(m35479e2, null, null));
            arrayList3.add(m35479e2);
        }
        if (arrayList2.isEmpty()) {
            m13038c();
            return;
        }
        arrayList2.size();
        try {
            C21183a c21183a = this.f54643m;
            C21181b c21181b = new C21181b(arrayList3);
            Objects.requireNonNull(c21183a);
            a0 execute = ((C21183a.AbstractC21184a) C8367d.m28633a(KnownEndpoints.REFERRAL, C21183a.AbstractC21184a.class)).m10161c(c21181b).execute();
            if (!execute.b() || (obj = execute.b) == null) {
                return;
            }
            List<C21182c> list = (List) obj;
            list.toString();
            m13037d(list);
        } catch (IOException e) {
            m13038c();
        }
    }
}
