package p193e.p194a.p294b.p345k.p347b.p348a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p345k.p347b.p349b.C7980a;
/* renamed from: e.a.b.k.b.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/b.class */
public final class C7966b implements AbstractC7965a {

    /* renamed from: a */
    public final AbstractC25677q f24632a;

    /* renamed from: b */
    public final AbstractC25663k<C7980a> f24633b;

    /* renamed from: c */
    public final AbstractC25646c0 f24634c;

    /* renamed from: e.a.b.k.b.a.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/b$a.class */
    public class C7967a extends AbstractC25663k<C7980a> {
        public C7967a(C7966b c7966b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C7980a c7980a) {
            C7980a c7980a2 = c7980a;
            abstractC26154f.mo2650l0(1, c7980a2.f24645a);
            String str = c7980a2.f24646b;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            String str2 = c7980a2.f24647c;
            if (str2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str2);
            }
            String str3 = c7980a2.f24648d;
            if (str3 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str3);
            }
            Long l = c7980a2.f24649e;
            if (l == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2650l0(5, l.longValue());
            }
            Long l2 = c7980a2.f24650f;
            if (l2 == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2650l0(6, l2.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `contact` (`id`,`hospital_name`,`phone_number`,`address`,`district_id`,`state_id`) VALUES (nullif(?, 0),?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.b.k.b.a.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/b$b.class */
    public class C7968b extends AbstractC25646c0 {
        public C7968b(C7966b c7966b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM contact";
        }
    }

    public C7966b(AbstractC25677q abstractC25677q) {
        this.f24632a = abstractC25677q;
        this.f24633b = new C7967a(this, abstractC25677q);
        this.f24634c = new C7968b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7965a
    /* renamed from: a */
    public void mo29055a() {
        this.f24632a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f24634c.acquire();
        this.f24632a.beginTransaction();
        try {
            acquire.m2673A();
            this.f24632a.setTransactionSuccessful();
        } finally {
            this.f24632a.endTransaction();
            this.f24634c.release(acquire);
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7965a
    /* renamed from: b */
    public List<C7980a> mo29054b(long j) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM contact WHERE district_id = ?", 1);
        m3059j.mo2650l0(1, j);
        this.f24632a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f24632a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "hospital_name");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "address");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "district_id");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "state_id");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C7980a c7980a = new C7980a(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : Long.valueOf(m3090b.getLong(m43237g05)), m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06)));
                c7980a.f24645a = m3090b.getLong(m43237g0);
                arrayList.add(c7980a);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7965a
    /* renamed from: c */
    public long mo29053c(C7980a c7980a) {
        this.f24632a.assertNotSuspendingTransaction();
        this.f24632a.beginTransaction();
        try {
            long insertAndReturnId = this.f24633b.insertAndReturnId(c7980a);
            this.f24632a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f24632a.endTransaction();
        }
    }
}
