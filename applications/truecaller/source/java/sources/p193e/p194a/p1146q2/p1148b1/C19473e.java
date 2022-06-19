package p193e.p194a.p1146q2.p1148b1;

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
/* renamed from: e.a.q2.b1.e */
/* loaded from: classes5-dex2jar.jar:e/a/q2/b1/e.class */
public final class C19473e implements AbstractC19472d {

    /* renamed from: a */
    public final AbstractC25677q f54068a;

    /* renamed from: b */
    public final AbstractC25663k<C19471c> f54069b;

    /* renamed from: c */
    public final AbstractC25646c0 f54070c;

    /* renamed from: e.a.q2.b1.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/b1/e$a.class */
    public class C19474a extends AbstractC25663k<C19471c> {
        public C19474a(C19473e c19473e, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C19471c c19471c) {
            C19471c c19471c2 = c19471c;
            abstractC26154f.mo2650l0(1, c19471c2.f54066a);
            byte[] bArr = c19471c2.f54067b;
            if (bArr == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2649o0(2, bArr);
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR ABORT INTO `persisted_event` (`id`,`record`) VALUES (nullif(?, 0),?)";
        }
    }

    /* renamed from: e.a.q2.b1.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/b1/e$b.class */
    public class C19475b extends AbstractC25646c0 {
        public C19475b(C19473e c19473e, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM persisted_event WHERE id <= ?";
        }
    }

    public C19473e(AbstractC25677q abstractC25677q) {
        this.f54068a = abstractC25677q;
        this.f54069b = new C19474a(this, abstractC25677q);
        this.f54070c = new C19475b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1146q2.p1148b1.AbstractC19472d
    /* renamed from: a */
    public void mo13301a(C19471c c19471c) {
        this.f54068a.assertNotSuspendingTransaction();
        this.f54068a.beginTransaction();
        try {
            this.f54069b.insert((AbstractC25663k<C19471c>) c19471c);
            this.f54068a.setTransactionSuccessful();
        } finally {
            this.f54068a.endTransaction();
        }
    }

    @Override // p193e.p194a.p1146q2.p1148b1.AbstractC19472d
    /* renamed from: b */
    public List<C19471c> mo13300b(int i) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM persisted_event ORDER BY id ASC LIMIT ?", 1);
        m3059j.mo2650l0(1, i);
        this.f54068a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f54068a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "record");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                arrayList.add(new C19471c(m3090b.getLong(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getBlob(m43237g02)));
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p1146q2.p1148b1.AbstractC19472d
    /* renamed from: c */
    public int mo13299c(long j) {
        this.f54068a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f54070c.acquire();
        acquire.mo2650l0(1, j);
        this.f54068a.beginTransaction();
        try {
            int m2673A = acquire.m2673A();
            this.f54068a.setTransactionSuccessful();
            return m2673A;
        } finally {
            this.f54068a.endTransaction();
            this.f54070c.release(acquire);
        }
    }
}
