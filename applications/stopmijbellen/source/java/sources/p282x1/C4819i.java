package p282x1;

import android.database.Cursor;
import p015b0.C0713a;
import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p067d1.AbstractC2160j;
import p067d1.C2158h;
import p088f1.C2709b;
import p110h1.C3001f;
/* renamed from: x1.i */
/* loaded from: classes-dex2jar.jar:x1/i.class */
public final class C4819i implements AbstractC4818h {

    /* renamed from: a */
    public final AbstractC2151f f14818a;

    /* renamed from: b */
    public final AbstractC2141b<C4817g> f14819b;

    /* renamed from: c */
    public final AbstractC2160j f14820c;

    /* renamed from: x1.i$a */
    /* loaded from: classes-dex2jar.jar:x1/i$a.class */
    public class C4820a extends AbstractC2141b<C4817g> {
        public C4820a(C4819i c4819i, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        public void mo370d(C3001f c3001f, C4817g c4817g) {
            C4817g c4817g2 = c4817g;
            String str = c4817g2.f14816a;
            if (str == null) {
                c3001f.f10100a.bindNull(1);
            } else {
                c3001f.f10100a.bindString(1, str);
            }
            c3001f.f10100a.bindLong(2, c4817g2.f14817b);
        }
    }

    /* renamed from: x1.i$b */
    /* loaded from: classes-dex2jar.jar:x1/i$b.class */
    public class C4821b extends AbstractC2160j {
        public C4821b(C4819i c4819i, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public C4819i(AbstractC2151f abstractC2151f) {
        this.f14818a = abstractC2151f;
        this.f14819b = new C4820a(this, abstractC2151f);
        this.f14820c = new C4821b(this, abstractC2151f);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public C4817g m396a(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14818a.m3820b();
        C4817g c4817g = null;
        Cursor m3217a = C2709b.m3217a(this.f14818a, m3806l, false, null);
        try {
            int m7442e = C0713a.m7442e(m3217a, "work_spec_id");
            int m7442e2 = C0713a.m7442e(m3217a, "system_id");
            if (m3217a.moveToFirst()) {
                c4817g = new C4817g(m3217a.getString(m7442e), m3217a.getInt(m7442e2));
            }
            m3217a.close();
            m3806l.release();
            return c4817g;
        } catch (Throwable th) {
            m3217a.close();
            m3806l.release();
            throw th;
        }
    }

    /* renamed from: b */
    public void m395b(C4817g c4817g) {
        this.f14818a.m3820b();
        this.f14818a.m3819c();
        try {
            this.f14819b.m3831e(c4817g);
            this.f14818a.m3811k();
        } finally {
            this.f14818a.m3815g();
        }
    }

    /* renamed from: c */
    public void m394c(String str) {
        this.f14818a.m3820b();
        C3001f m3800a = this.f14820c.m3800a();
        if (str == null) {
            m3800a.f10100a.bindNull(1);
        } else {
            m3800a.f10100a.bindString(1, str);
        }
        this.f14818a.m3819c();
        try {
            m3800a.m2768d();
            this.f14818a.m3811k();
            this.f14818a.m3815g();
            AbstractC2160j abstractC2160j = this.f14820c;
            if (m3800a != abstractC2160j.f7911c) {
                return;
            }
            abstractC2160j.f7909a.set(false);
        } catch (Throwable th) {
            this.f14818a.m3815g();
            this.f14820c.m3799c(m3800a);
            throw th;
        }
    }
}
