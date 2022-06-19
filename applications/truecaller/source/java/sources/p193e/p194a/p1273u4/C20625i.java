package p193e.p194a.p1273u4;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.truecaller.data.entity.Contact;
import java.util.List;
import javax.inject.Inject;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p765f5.AbstractC14046a;
import p193e.p194a.p997k3.p998j.C16461b;
import w3.c.a.a.a.h;
/* renamed from: e.a.u4.i */
/* loaded from: classes12-dex2jar.jar:e/a/u4/i.class */
public class C20625i extends AbstractC20624h implements C14022p.AbstractC14025c, AbstractC22590g<Drawable> {

    /* renamed from: b */
    public final AbstractC19854f<AbstractC19463a0> f58141b;

    /* renamed from: c */
    public final AbstractC14046a f58142c;

    /* renamed from: d */
    public final AbstractC19462a f58143d;

    @Inject
    public C20625i(C14022p c14022p, C16461b c16461b, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC14046a abstractC14046a, AbstractC19462a abstractC19462a, C20592g c20592g) {
        this.f58142c = abstractC14046a;
        this.f58143d = abstractC19462a;
        this.f58141b = abstractC19854f;
    }

    @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
    /* renamed from: Aa */
    public void mo10096Aa(Throwable th, int i) {
        if (this.f57683a != 0) {
            this.f58142c.isEnabled();
            ((AbstractC20626j) this.f57683a).m10907d(null, false, false);
            ((AbstractC20626j) this.f57683a).m10910a();
        }
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC20626j) pv).m10910a();
            return false;
        }
        return false;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
    public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC20626j) pv).m10910a();
            return false;
        }
        return false;
    }

    @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
    /* renamed from: p2 */
    public void mo10057p2(List<Contact> list, String str, String str2, String str3) {
        Contact contact = list.get(0);
        if (this.f57683a != 0) {
            String m35491w = contact.m35491w();
            boolean j = h.j(m35491w);
            this.f58142c.isEnabled();
            if (!j) {
                ((AbstractC20626j) this.f57683a).m10908c(m35491w, null, false, false);
            } else {
                ((AbstractC20626j) this.f57683a).m10907d(null, false, false);
            }
            String m35573B = contact.m35573B();
            if (!h.j(m35573B)) {
                ((AbstractC20626j) this.f57683a).m10909b(Uri.parse(m35573B), this);
            } else {
                ((AbstractC20626j) this.f57683a).m10910a();
            }
        }
    }
}
