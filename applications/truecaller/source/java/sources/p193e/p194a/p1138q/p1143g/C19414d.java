package p193e.p194a.p1138q.p1143g;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.contactfeedback.p157db.ContactFeedback;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.q.g.d */
/* loaded from: classes4-dex2jar.jar:e/a/q/g/d.class */
public final class C19414d implements AbstractC19413c {

    /* renamed from: a */
    public final AbstractC25677q f53945a;

    /* renamed from: b */
    public final AbstractC25663k<ContactFeedback> f53946b;

    /* renamed from: c */
    public final AbstractC25646c0 f53947c;

    /* renamed from: e.a.q.g.d$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/d$a.class */
    public class C19415a extends AbstractC25663k<ContactFeedback> {
        public C19415a(C19414d c19414d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, ContactFeedback contactFeedback) {
            ContactFeedback contactFeedback2 = contactFeedback;
            if (contactFeedback2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2650l0(1, contactFeedback2.getId().longValue());
            }
            if (contactFeedback2.getPhoneNumber() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, contactFeedback2.getPhoneNumber());
            }
            if (contactFeedback2.getOriginalName() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, contactFeedback2.getOriginalName());
            }
            if (contactFeedback2.getSuggestedName() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, contactFeedback2.getSuggestedName());
            }
            if (contactFeedback2.getFeedbackType() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2650l0(5, contactFeedback2.getFeedbackType().intValue());
            }
            if (contactFeedback2.getContactType() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2650l0(6, contactFeedback2.getContactType().intValue());
            }
            if (contactFeedback2.getFeedbackSource() == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2650l0(7, contactFeedback2.getFeedbackSource().intValue());
            }
            if (contactFeedback2.getNameElectionAlgo() == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, contactFeedback2.getNameElectionAlgo());
            }
            abstractC26154f.mo2650l0(9, contactFeedback2.getCreatedAt());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `contact_feedback` (`_id`,`normalized_number`,`original_name`,`suggested_name`,`feedback_type`,`contact_type`,`feedback_source`,`name_election_algorithm`,`created_at`) VALUES (?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.q.g.d$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/d$b.class */
    public class C19416b extends AbstractC25646c0 {
        public C19416b(C19414d c19414d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM contact_feedback";
        }
    }

    /* renamed from: e.a.q.g.d$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/d$c.class */
    public class CallableC19417c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ ContactFeedback[] f53948a;

        public CallableC19417c(ContactFeedback[] contactFeedbackArr) {
            C19414d.this = r4;
            this.f53948a = contactFeedbackArr;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C19414d.this.f53945a.beginTransaction();
            try {
                C19414d.this.f53946b.insert(this.f53948a);
                C19414d.this.f53945a.setTransactionSuccessful();
                return s.a;
            } finally {
                C19414d.this.f53945a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.q.g.d$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/d$d.class */
    public class CallableC19418d implements Callable<Integer> {
        public CallableC19418d() {
            C19414d.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            AbstractC26154f acquire = C19414d.this.f53947c.acquire();
            C19414d.this.f53945a.beginTransaction();
            try {
                int m2673A = acquire.m2673A();
                C19414d.this.f53945a.setTransactionSuccessful();
                C19414d.this.f53945a.endTransaction();
                C19414d.this.f53947c.release(acquire);
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C19414d.this.f53945a.endTransaction();
                C19414d.this.f53947c.release(acquire);
                throw th;
            }
        }
    }

    /* renamed from: e.a.q.g.d$e */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/d$e.class */
    public class CallableC19419e implements Callable<List<ContactFeedback>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f53951a;

        public CallableC19419e(C25686y c25686y) {
            C19414d.this = r4;
            this.f53951a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<ContactFeedback> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C19414d.this.f53945a, this.f53951a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "normalized_number");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "original_name");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "suggested_name");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "feedback_type");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "contact_type");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "feedback_source");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "name_election_algorithm");
                int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    ContactFeedback contactFeedback = new ContactFeedback(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : Integer.valueOf(m3090b.getInt(m43237g05)), m3090b.isNull(m43237g06) ? null : Integer.valueOf(m3090b.getInt(m43237g06)), m3090b.isNull(m43237g07) ? null : Integer.valueOf(m3090b.getInt(m43237g07)), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.getLong(m43237g09));
                    contactFeedback.setId(m3090b.isNull(m43237g0) ? null : Long.valueOf(m3090b.getLong(m43237g0)));
                    arrayList.add(contactFeedback);
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f53951a.m3057l();
            }
        }
    }

    /* renamed from: e.a.q.g.d$f */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/d$f.class */
    public class CallableC19420f implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ Long[] f53953a;

        public CallableC19420f(Long[] lArr) {
            C19414d.this = r4;
            this.f53953a = lArr;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Long[] lArr;
            StringBuilder sb = new StringBuilder();
            sb.append(StringConstant.NEW_LINE);
            sb.append("        DELETE FROM contact_feedback ");
            sb.append(StringConstant.NEW_LINE);
            sb.append("        WHERE _id NOT IN (");
            C25655d.m3086a(sb, this.f53953a.length);
            sb.append(")");
            sb.append(StringConstant.NEW_LINE);
            sb.append("        ");
            AbstractC26154f compileStatement = C19414d.this.f53945a.compileStatement(sb.toString());
            int i = 1;
            for (Long l : this.f53953a) {
                if (l == null) {
                    compileStatement.mo2648y0(i);
                } else {
                    compileStatement.mo2650l0(i, l.longValue());
                }
                i++;
            }
            C19414d.this.f53945a.beginTransaction();
            try {
                int m2673A = compileStatement.m2673A();
                C19414d.this.f53945a.setTransactionSuccessful();
                C19414d.this.f53945a.endTransaction();
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C19414d.this.f53945a.endTransaction();
                throw th;
            }
        }
    }

    public C19414d(AbstractC25677q abstractC25677q) {
        this.f53945a = abstractC25677q;
        this.f53946b = new C19415a(this, abstractC25677q);
        this.f53947c = new C19416b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19413c
    /* renamed from: a */
    public Object mo13353a(long j, int i, d<? super List<ContactFeedback>> dVar) {
        C25686y m3059j = C25686y.m3059j("\n        SELECT * FROM contact_feedback \n        WHERE created_at >= ? \n        ORDER BY created_at DESC \n        LIMIT ? \n        ", 2);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, i);
        return C25650g.m3095b(this.f53945a, false, new CancellationSignal(), new CallableC19419e(m3059j), dVar);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19413c
    /* renamed from: b */
    public Object mo13352b(Long[] lArr, d<? super Integer> dVar) {
        return C25650g.m3094c(this.f53945a, true, new CallableC19420f(lArr), dVar);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19413c
    /* renamed from: c */
    public Object mo13351c(ContactFeedback[] contactFeedbackArr, d<? super s> dVar) {
        return C25650g.m3094c(this.f53945a, true, new CallableC19417c(contactFeedbackArr), dVar);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19413c
    /* renamed from: d */
    public Object mo13350d(d<? super Integer> dVar) {
        return C25650g.m3094c(this.f53945a, true, new CallableC19418d(), dVar);
    }
}
