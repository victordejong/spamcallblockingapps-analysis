package p193e.p194a.p1342w4;

import android.content.Context;
import android.text.TextUtils;
import com.truecaller.TrueApp;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.Tag;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import org.apache.avro.AvroRuntimeException;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1050l5.p1051a.C17517e4;
import p193e.p194a.p1050l5.p1051a.C17589i4;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import p193e.p194a.p1050l5.p1051a.C17822y1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
/* renamed from: e.a.w4.a */
/* loaded from: classes13-dex2jar.jar:e/a/w4/a.class */
public abstract class AbstractAsyncTaskC21201a extends AbstractAsyncTaskC15557a {

    /* renamed from: d */
    public final Context f59394d;

    /* renamed from: e */
    public final Contact f59395e;

    /* renamed from: f */
    public final AbstractC14835j f59396f;

    /* renamed from: g */
    public final AbstractC19854f<AbstractC19463a0> f59397g;

    /* renamed from: h */
    public final String f59398h;

    /* renamed from: i */
    public final UUID f59399i;

    /* renamed from: j */
    public final int f59400j;

    /* renamed from: k */
    public C14012i f59401k;

    /* renamed from: l */
    public AbstractC19321u f59402l;

    /* renamed from: m */
    public final AbstractC14537p f59403m;

    public AbstractAsyncTaskC21201a(Context context, AbstractC15561d abstractC15561d, AbstractC14835j abstractC14835j, AbstractC19854f<AbstractC19463a0> abstractC19854f, Contact contact, String str, UUID uuid, int i) {
        super(abstractC15561d, false, false, null);
        Context applicationContext = context.getApplicationContext();
        this.f59394d = applicationContext;
        this.f59396f = abstractC14835j;
        this.f59397g = abstractC19854f;
        this.f59395e = contact;
        this.f59398h = str;
        this.f59399i = uuid;
        this.f59400j = i;
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        this.f59402l = mo10154s.mo12725G1();
        this.f59403m = mo10154s.mo12619O();
    }

    /* renamed from: b */
    public final void m10142b(String str) {
        C17822y1.C17824b m15783a = C17822y1.m15783a();
        m15783a.m15777f(this.f59399i.toString());
        m15783a.m15774i(this.f59398h);
        m15783a.m15773j(String.valueOf(this.f59400j));
        m15783a.m15779d(null);
        m15783a.m15776g(false);
        m15783a.m15775h(false);
        FilterMatch mo19591e = this.f59396f.mo19591e(this.f59395e.m35542V());
        ArrayList arrayList = new ArrayList();
        Integer num = mo19591e == null ? null : mo19591e.f10460i;
        C17654m3.C17656b m15891a = C17654m3.m15891a();
        C17891a1.C17902k.m15637W0(m15891a, this.f59395e, num);
        m15891a.m15889b(!this.f59395e.m35570C0());
        m15891a.m15887d((this.f59395e.getSource() & 2) != 0);
        boolean z = false;
        if ((this.f59395e.getSource() & 64) != 0) {
            z = true;
        }
        m15891a.m15888c(Boolean.valueOf(z));
        m15891a.m15883h(Integer.valueOf(this.f59395e.m35533a0()));
        m15891a.m15882i(Boolean.valueOf(this.f59395e.m35574A0()));
        m15891a.m15885f(Boolean.valueOf(mo19591e.m35813a()));
        m15891a.m15884g(Boolean.valueOf(mo19591e.m35811c()));
        m15891a.m15886e(Boolean.valueOf(mo19591e.m35812b()));
        C17654m3 build = m15891a.build();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (Tag tag : this.f59395e.m35524d0()) {
            if (tag.getSource() == 1) {
                arrayList2.add(tag.getValue());
            } else {
                arrayList3.add(tag.getValue());
            }
        }
        C8551c mo20025b = this.f59403m.mo20025b(this.f59395e);
        if (mo20025b != null) {
            arrayList4.add(String.valueOf(mo20025b.f26350a));
        }
        C17589i4.C17591b m15938a = C17589i4.m15938a();
        ArrayList arrayList5 = arrayList2;
        if (arrayList2.isEmpty()) {
            arrayList5 = null;
        }
        m15938a.m15935c(arrayList5);
        ArrayList arrayList6 = arrayList3;
        if (arrayList3.isEmpty()) {
            arrayList6 = null;
        }
        m15938a.m15936b(arrayList6);
        ArrayList arrayList7 = arrayList4;
        if (arrayList4.isEmpty()) {
            arrayList7 = null;
        }
        m15938a.m15934d(arrayList7);
        C17589i4 build2 = m15938a.build();
        List<Number> m35557M = this.f59395e.m35557M();
        String m35542V = this.f59395e.m35542V();
        String str2 = null;
        for (Number number : m35557M) {
            if ((number.f11564a & 1) != 0) {
                str2 = number.m35478f();
                m35542V = number.m35476h();
            }
        }
        C17517e4.C17519b m15987a = C17517e4.m15987a();
        m15987a.m15981f(m35542V);
        m15987a.m15982e(build2);
        m15987a.m15985b(build);
        m15987a.m15984c(str);
        m15987a.m15983d(str2);
        arrayList.add(m15987a.build());
        m15783a.m15778e(arrayList);
        m15783a.m15781b(null);
        try {
            this.f59397g.mo11854a().mo13111a(m15783a.build());
        } catch (AvroRuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    /* renamed from: c */
    public final void m10141c(Contact contact, List<String> list) {
        Number number;
        if (!contact.m35523d1() || !contact.m35514h0()) {
            return;
        }
        if (!((AbstractAsyncTaskC21209i) this).f59414o.mo10138b(contact)) {
            m10142b("validCacheResult");
        } else if (!this.f59402l.mo13429d()) {
            String str = "Cannot refresh " + contact + ", internet not OK";
            m10142b("noConnection");
        } else {
            String str2 = contact + " is stale, attempt to refresh it";
            Iterator<Number> it = contact.m35557M().iterator();
            do {
                number = null;
                if (!it.hasNext()) {
                    break;
                }
                number = it.next();
            } while (TextUtils.isEmpty(number.m35476h()));
            if (number == null) {
                String str3 = "Cannot refresh " + contact + ", no searchable number";
                return;
            }
            list.add(number.m35476h());
            C14012i c14012i = this.f59401k;
            String m35479e = number.m35479e();
            String m35473l = number.m35473l();
            String countryCode = number.getCountryCode();
            Objects.requireNonNull(c14012i);
            c14012i.f40518d.add(new C14012i.C14014b(m35479e, m35473l, countryCode));
        }
    }

    /* renamed from: d */
    public List<Contact> mo10134d(Context context, List<String> list) {
        try {
            C14012i c14012i = this.f59401k;
            c14012i.m20857b();
            c14012i.f40519e = false;
            c14012i.f40520f = false;
            C14030t mo20821a = c14012i.mo20821a();
            if (mo20821a != null) {
                return mo20821a.f40582c;
            }
        } catch (IOException | RuntimeException e) {
            C10480a.m26057J1(e, "Searching for " + list + " failed");
        }
        return Collections.emptyList();
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        try {
            C14012i c14012i = new C14012i(this.f59394d, this.f59399i, this.f59398h);
            c14012i.f40521g = this.f59400j;
            this.f59401k = c14012i;
            boolean z = TrueApp.f9585r;
            Context m28551L = AbstractApplicationC8442a.m28551L();
            C16461b c16461b = new C16461b(m28551L);
            C16487j c16487j = new C16487j(m28551L);
            Long id = this.f59395e.getId();
            ArrayList arrayList = new ArrayList();
            boolean z2 = false;
            if (id != null) {
                z2 = false;
                if (id.longValue() > 0) {
                    if (C16461b.m17357o(this.f59395e)) {
                        Iterator it = ((ArrayList) c16487j.m17328f(id.longValue())).iterator();
                        while (true) {
                            z2 = true;
                            if (!it.hasNext()) {
                                break;
                            }
                            m10141c((Contact) it.next(), arrayList);
                        }
                    } else {
                        m10141c(this.f59395e, arrayList);
                        z2 = false;
                    }
                }
            }
            if (arrayList.isEmpty()) {
                String str = "No contacts were refreshed for " + this.f59395e;
                return null;
            }
            List<Contact> mo10134d = mo10134d(m28551L, arrayList);
            if (mo10134d.isEmpty()) {
                return null;
            }
            if (!c16487j.m17330d(mo10134d)) {
                throw new RuntimeException("Error storing " + mo10134d);
            }
            mo10134d.size();
            if (z2) {
                return c16461b.m17360l(this.f59395e);
            }
            String tcId = this.f59395e.getTcId();
            if (TextUtils.isEmpty(tcId)) {
                return null;
            }
            return c16487j.m17327g(tcId);
        } catch (RuntimeException e) {
            C10480a.m26061I1(e);
            return null;
        }
    }
}
