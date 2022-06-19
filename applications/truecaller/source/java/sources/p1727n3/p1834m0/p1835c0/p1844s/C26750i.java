package p1727n3.p1834m0.p1835c0.p1844s;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: n3.m0.c0.s.i */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/i.class */
public final class C26750i implements AbstractC26749h {

    /* renamed from: a */
    public final AbstractC25677q f74887a;

    /* renamed from: b */
    public final AbstractC25663k<C26748g> f74888b;

    /* renamed from: c */
    public final AbstractC25646c0 f74889c;

    /* renamed from: n3.m0.c0.s.i$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/i$b.class */
    public class C26751b extends AbstractC25646c0 {
        public C26751b(C26750i c26750i, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public C26750i(AbstractC25677q abstractC25677q) {
        this.f74887a = abstractC25677q;
        this.f74888b = new a(this, abstractC25677q);
        this.f74889c = new C26751b(this, abstractC25677q);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public C26748g m1366a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f74887a.assertNotSuspendingTransaction();
        C26748g c26748g = null;
        Cursor m3090b = C25653b.m3090b(this.f74887a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "work_spec_id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "system_id");
            if (m3090b.moveToFirst()) {
                c26748g = new C26748g(m3090b.getString(m43237g0), m3090b.getInt(m43237g02));
            }
            m3090b.close();
            m3059j.m3057l();
            return c26748g;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    /* renamed from: b */
    public void m1365b(C26748g c26748g) {
        this.f74887a.assertNotSuspendingTransaction();
        this.f74887a.beginTransaction();
        try {
            this.f74888b.insert((AbstractC25663k<C26748g>) c26748g);
            this.f74887a.setTransactionSuccessful();
        } finally {
            this.f74887a.endTransaction();
        }
    }

    /* renamed from: c */
    public void m1364c(String str) {
        this.f74887a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74889c.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f74887a.beginTransaction();
        try {
            acquire.m2673A();
            this.f74887a.setTransactionSuccessful();
        } finally {
            this.f74887a.endTransaction();
            this.f74889c.release(acquire);
        }
    }
}
