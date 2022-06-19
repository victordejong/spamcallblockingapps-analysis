package p282x1;

import android.database.Cursor;
import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p067d1.C2158h;
import p088f1.C2709b;
import p110h1.C3001f;
/* renamed from: x1.f */
/* loaded from: classes-dex2jar.jar:x1/f.class */
public final class C4815f implements AbstractC4814e {

    /* renamed from: a */
    public final AbstractC2151f f14814a;

    /* renamed from: b */
    public final AbstractC2141b<C4813d> f14815b;

    /* renamed from: x1.f$a */
    /* loaded from: classes-dex2jar.jar:x1/f$a.class */
    public class C4816a extends AbstractC2141b<C4813d> {
        public C4816a(C4815f c4815f, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        public void mo370d(C3001f c3001f, C4813d c4813d) {
            C4813d c4813d2 = c4813d;
            String str = c4813d2.f14812a;
            if (str == null) {
                c3001f.f10100a.bindNull(1);
            } else {
                c3001f.f10100a.bindString(1, str);
            }
            Long l = c4813d2.f14813b;
            if (l == null) {
                c3001f.f10100a.bindNull(2);
                return;
            }
            c3001f.f10100a.bindLong(2, l.longValue());
        }
    }

    public C4815f(AbstractC2151f abstractC2151f) {
        this.f14814a = abstractC2151f;
        this.f14815b = new C4816a(this, abstractC2151f);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Long m398a(String str) {
        C2158h m3806l = C2158h.m3806l("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m3806l.m3804p(1);
        } else {
            m3806l.m3803r(1, str);
        }
        this.f14814a.m3820b();
        Cursor m3217a = C2709b.m3217a(this.f14814a, m3806l, false, null);
        Long l = null;
        try {
            if (m3217a.moveToFirst()) {
                l = m3217a.isNull(0) ? null : Long.valueOf(m3217a.getLong(0));
            }
            m3217a.close();
            m3806l.release();
            return l;
        } catch (Throwable th) {
            m3217a.close();
            m3806l.release();
            throw th;
        }
    }

    /* renamed from: b */
    public void m397b(C4813d c4813d) {
        this.f14814a.m3820b();
        this.f14814a.m3819c();
        try {
            this.f14815b.m3831e(c4813d);
            this.f14814a.m3811k();
        } finally {
            this.f14814a.m3815g();
        }
    }
}
