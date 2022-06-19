package p193e.p194a.p1159q4;

import android.content.Context;
import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p804h.p806b.p818w0.C14629c;
import p193e.p194a.p997k3.p1000l.C16496d;
import w3.c.a.a.a.h;
/* renamed from: e.a.q4.i0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/i0.class */
public class C19645i0 implements AbstractC19643h0 {

    /* renamed from: a */
    public final C19672u f54570a;

    /* renamed from: b */
    public final Context f54571b;

    public C19645i0(C19672u c19672u, Context context) {
        this.f54570a = c19672u;
        this.f54571b = context;
    }

    @Override // p193e.p194a.p1159q4.AbstractC19643h0
    /* renamed from: a */
    public void mo13089a() {
        m13086d();
    }

    @Override // p193e.p194a.p1159q4.AbstractC19643h0
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo13088b(Contact contact) {
        Iterator it = ((ArrayList) C19103t.m14110c(this.f54571b, contact.m35548R(), Collections.singletonList(SupportMessenger.WHATSAPP))).iterator();
        while (it.hasNext()) {
            if (((C16496d) it.next()).f46385d.equalsIgnoreCase(SupportMessenger.WHATSAPP)) {
                return AbstractC19891x.m11834h(Boolean.TRUE);
            }
        }
        return AbstractC19891x.m11834h(Boolean.FALSE);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19643h0
    /* renamed from: c */
    public AbstractC19891x<List<Participant>> mo13087c() {
        return AbstractC19891x.m11834h(m13086d());
    }

    /* renamed from: d */
    public final List<Participant> m13086d() {
        List<Participant> list;
        String[] split;
        C19672u c19672u = this.f54570a;
        synchronized (c19672u) {
            c19672u.f54635e.clear();
            String string = c19672u.f54638h.getString("smsReferralPrefetchBatch");
            h.j(string);
            if (!h.j(string)) {
                for (String str : string.split(",")) {
                    Contact m17364h = c19672u.f54637g.m17364h(str);
                    if (m17364h != null && !c19672u.m13039b(str, m17364h.m35574A0())) {
                        c19672u.f54635e.add(Participant.m35457b(m17364h, str, c19672u.f54639i, C12864a2.m22592B(m17364h, true)));
                    }
                }
                c19672u.m13038c();
                list = Collections.unmodifiableList(new ArrayList(c19672u.f54635e));
            } else {
                List<C14629c> m19850d = c19672u.f54631a.m19850d(0);
                ArrayList arrayList = new ArrayList(m19850d.size());
                for (C14629c c14629c : m19850d) {
                    Contact contact = c14629c.f42110b;
                    if (contact != null && contact.m35495t0()) {
                        arrayList.add(contact);
                    }
                }
                if (!c19672u.f54638h.getBoolean("referralSuggestionCountLogged")) {
                    c19672u.f54638h.mo13033c("referralSuggestionCountLogged", true);
                }
                c19672u.f54636f.addAll(arrayList);
                c19672u.f54636f.size();
                c19672u.m13036e();
                c19672u.f54636f.clear();
                list = Collections.unmodifiableList(new ArrayList(c19672u.f54635e));
            }
        }
        return list;
    }
}
