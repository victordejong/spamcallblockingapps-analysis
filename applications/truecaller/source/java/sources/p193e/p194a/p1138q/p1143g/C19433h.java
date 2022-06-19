package p193e.p194a.p1138q.p1143g;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.contactfeedback.p157db.ContactFeedbackTimestamp;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.w.d;
/* renamed from: e.a.q.g.h */
/* loaded from: classes4-dex2jar.jar:e/a/q/g/h.class */
public final class C19433h implements AbstractC19432g {

    /* renamed from: a */
    public final AbstractC25677q f53983a;

    /* renamed from: b */
    public final AbstractC25663k<ContactFeedbackTimestamp> f53984b;

    /* renamed from: e.a.q.g.h$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/h$a.class */
    public class C19434a extends AbstractC25663k<ContactFeedbackTimestamp> {
        public C19434a(C19433h c19433h, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, ContactFeedbackTimestamp contactFeedbackTimestamp) {
            ContactFeedbackTimestamp contactFeedbackTimestamp2 = contactFeedbackTimestamp;
            abstractC26154f.mo2650l0(1, contactFeedbackTimestamp2.getId());
            abstractC26154f.mo2650l0(2, contactFeedbackTimestamp2.getContactId());
            abstractC26154f.mo2650l0(3, contactFeedbackTimestamp2.getTimestamp());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `contact_feedback_timestamp_table` (`_id`,`contact_id`,`feedback_timestamp`) VALUES (?,?,?)";
        }
    }

    /* renamed from: e.a.q.g.h$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/h$b.class */
    public class CallableC19435b implements Callable<List<Long>> {

        /* renamed from: a */
        public final /* synthetic */ ContactFeedbackTimestamp[] f53985a;

        public CallableC19435b(ContactFeedbackTimestamp[] contactFeedbackTimestampArr) {
            C19433h.this = r4;
            this.f53985a = contactFeedbackTimestampArr;
        }

        @Override // java.util.concurrent.Callable
        public List<Long> call() throws Exception {
            C19433h.this.f53983a.beginTransaction();
            try {
                List<Long> insertAndReturnIdsList = C19433h.this.f53984b.insertAndReturnIdsList(this.f53985a);
                C19433h.this.f53983a.setTransactionSuccessful();
                return insertAndReturnIdsList;
            } finally {
                C19433h.this.f53983a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.q.g.h$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/h$c.class */
    public class CallableC19436c implements Callable<ContactFeedbackTimestamp> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f53987a;

        public CallableC19436c(C25686y c25686y) {
            C19433h.this = r4;
            this.f53987a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public ContactFeedbackTimestamp call() throws Exception {
            ContactFeedbackTimestamp contactFeedbackTimestamp = null;
            Cursor m3090b = C25653b.m3090b(C19433h.this.f53983a, this.f53987a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "contact_id");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "feedback_timestamp");
                if (m3090b.moveToFirst()) {
                    contactFeedbackTimestamp = new ContactFeedbackTimestamp(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.getLong(m43237g03));
                }
                m3090b.close();
                this.f53987a.m3057l();
                return contactFeedbackTimestamp;
            } catch (Throwable th) {
                m3090b.close();
                this.f53987a.m3057l();
                throw th;
            }
        }
    }

    public C19433h(AbstractC25677q abstractC25677q) {
        this.f53983a = abstractC25677q;
        this.f53984b = new C19434a(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19432g
    /* renamed from: a */
    public Object mo13328a(ContactFeedbackTimestamp[] contactFeedbackTimestampArr, d<? super List<Long>> dVar) {
        return C25650g.m3094c(this.f53983a, true, new CallableC19435b(contactFeedbackTimestampArr), dVar);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19432g
    /* renamed from: b */
    public Object mo13327b(long j, d<? super ContactFeedbackTimestamp> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM contact_feedback_timestamp_table WHERE contact_id = ?", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3095b(this.f53983a, false, new CancellationSignal(), new CallableC19436c(m3059j), dVar);
    }
}
