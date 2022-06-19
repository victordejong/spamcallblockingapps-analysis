package p193e.p194a.p195a.p285x0;

import com.truecaller.multisim.SimInfo;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p712e4.AbstractC13497p;
/* renamed from: e.a.a.x0.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/x0/a.class */
public class C7296a {

    /* renamed from: a */
    public final AbstractC13497p f23287a;

    /* renamed from: b */
    public final AbstractC19223c0 f23288b;

    /* renamed from: c */
    public final AbstractC19462a f23289c;

    /* renamed from: d */
    public AbstractC7297b f23290d;

    /* renamed from: e */
    public String f23291e = "-1";

    public C7296a(AbstractC13497p abstractC13497p, AbstractC19223c0 abstractC19223c0, AbstractC19462a abstractC19462a, String str) {
        this.f23287a = abstractC13497p;
        this.f23288b = abstractC19223c0;
        this.f23289c = abstractC19462a;
    }

    /* renamed from: a */
    public void m29824a(String str) {
        if (str == null || "-1".equals(str) || this.f23287a.mo21719v(str) == null) {
            this.f23291e = this.f23287a.mo21743b();
            m29823b();
            return;
        }
        this.f23291e = str;
        m29823b();
    }

    /* renamed from: b */
    public void m29823b() {
        if (this.f23290d == null) {
            return;
        }
        if (!this.f23287a.mo21740h()) {
            this.f23290d.mo29820vm(false);
            return;
        }
        SimInfo mo21719v = this.f23287a.mo21719v(this.f23291e);
        if (mo21719v == null) {
            this.f23290d.mo29822Ui(2131232701);
        } else {
            int i = mo21719v.f13983a;
            if (i == 0) {
                this.f23290d.mo29822Ui(2131232653);
            } else if (i == 1) {
                this.f23290d.mo29822Ui(2131232654);
            } else {
                this.f23290d.mo29822Ui(2131232701);
            }
        }
        this.f23290d.mo29820vm(true);
    }
}
