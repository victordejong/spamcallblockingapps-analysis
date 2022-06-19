package p193e.p194a.p294b.p345k.p347b.p348a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p345k.p347b.p349b.C7981b;
import q3.a.x2.f;
/* renamed from: e.a.b.k.b.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/d.class */
public final class C7970d implements AbstractC7969c {

    /* renamed from: a */
    public final AbstractC25677q f24635a;

    /* renamed from: b */
    public final AbstractC25663k<C7981b> f24636b;

    /* renamed from: c */
    public final AbstractC25646c0 f24637c;

    /* renamed from: d */
    public final AbstractC25646c0 f24638d;

    /* renamed from: e.a.b.k.b.a.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/d$a.class */
    public class C7971a extends AbstractC25663k<C7981b> {
        public C7971a(C7970d c7970d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C7981b c7981b) {
            C7981b c7981b2 = c7981b;
            abstractC26154f.mo2650l0(1, c7981b2.f24651a);
            String str = c7981b2.f24652b;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            abstractC26154f.mo2650l0(3, c7981b2.f24653c);
            abstractC26154f.mo2650l0(4, c7981b2.f24654d);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `district` (`id`,`name`,`contacts_count`,`state_id`) VALUES (nullif(?, 0),?,?,?)";
        }
    }

    /* renamed from: e.a.b.k.b.a.d$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/d$b.class */
    public class C7972b extends AbstractC25646c0 {
        public C7972b(C7970d c7970d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM district";
        }
    }

    /* renamed from: e.a.b.k.b.a.d$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/d$c.class */
    public class C7973c extends AbstractC25646c0 {
        public C7973c(C7970d c7970d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE district SET contacts_count = contacts_count + ? WHERE id = ?";
        }
    }

    /* renamed from: e.a.b.k.b.a.d$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/b/a/d$d.class */
    public class CallableC7974d implements Callable<List<C7981b>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f24639a;

        public CallableC7974d(C25686y c25686y) {
            C7970d.this = r4;
            this.f24639a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C7981b> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C7970d.this.f24635a, this.f24639a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "contacts_count");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    C7981b c7981b = new C7981b(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.getInt(m43237g03), m3090b.getLong(m43237g04));
                    c7981b.f24651a = m3090b.getLong(m43237g0);
                    arrayList.add(c7981b);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f24639a.m3057l();
        }
    }

    public C7970d(AbstractC25677q abstractC25677q) {
        this.f24635a = abstractC25677q;
        this.f24636b = new C7971a(this, abstractC25677q);
        this.f24637c = new C7972b(this, abstractC25677q);
        this.f24638d = new C7973c(this, abstractC25677q);
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c
    /* renamed from: a */
    public void mo29052a(long j, int i) {
        this.f24635a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f24638d.acquire();
        acquire.mo2650l0(1, i);
        acquire.mo2650l0(2, j);
        this.f24635a.beginTransaction();
        try {
            acquire.m2673A();
            this.f24635a.setTransactionSuccessful();
        } finally {
            this.f24635a.endTransaction();
            this.f24638d.release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c
    /* renamed from: b */
    public boolean mo29051b(String str, long j) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM district WHERE name = ? AND state_id = ?", 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        this.f24635a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor m3090b = C25653b.m3090b(this.f24635a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                z = m3090b.getInt(0) != 0;
            }
            m3090b.close();
            m3059j.m3057l();
            return z;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c
    /* renamed from: c */
    public void mo29050c() {
        this.f24635a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f24637c.acquire();
        this.f24635a.beginTransaction();
        try {
            acquire.m2673A();
            this.f24635a.setTransactionSuccessful();
        } finally {
            this.f24635a.endTransaction();
            this.f24637c.release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c
    /* renamed from: d */
    public long mo29049d(String str, long j) {
        C25686y m3059j = C25686y.m3059j("SELECT id FROM district WHERE name = ? AND state_id = ?", 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        this.f24635a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f24635a, m3059j, false, null);
        try {
            char c = m3090b.moveToFirst() ? m3090b.getLong(0) : (char) 0;
            m3090b.close();
            m3059j.m3057l();
            return c;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c
    /* renamed from: e */
    public long mo29048e(C7981b c7981b) {
        this.f24635a.assertNotSuspendingTransaction();
        this.f24635a.beginTransaction();
        try {
            long insertAndReturnId = this.f24636b.insertAndReturnId(c7981b);
            this.f24635a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f24635a.endTransaction();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c
    /* renamed from: f */
    public f<List<C7981b>> mo29047f() {
        return C25650g.m3096a(this.f24635a, false, new String[]{"district"}, new CallableC7974d(C25686y.m3059j("SELECT * FROM district", 0)));
    }
}
