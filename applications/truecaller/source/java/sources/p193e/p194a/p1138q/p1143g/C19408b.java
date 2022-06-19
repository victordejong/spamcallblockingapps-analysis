package p193e.p194a.p1138q.p1143g;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.contactfeedback.p157db.CommentFeedback;
import com.truecaller.contactfeedback.p157db.SyncState;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.w.d;
/* renamed from: e.a.q.g.b */
/* loaded from: classes4-dex2jar.jar:e/a/q/g/b.class */
public final class C19408b implements AbstractC19407a {

    /* renamed from: a */
    public final AbstractC25677q f53936a;

    /* renamed from: b */
    public final AbstractC25663k<CommentFeedback> f53937b;

    /* renamed from: e.a.q.g.b$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/b$a.class */
    public class C19409a extends AbstractC25663k<CommentFeedback> {
        public C19409a(C19408b c19408b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, CommentFeedback commentFeedback) {
            CommentFeedback commentFeedback2 = commentFeedback;
            abstractC26154f.mo2650l0(1, commentFeedback2.getId());
            abstractC26154f.mo2650l0(2, commentFeedback2.getTimestamp());
            if (commentFeedback2.getPhoneNumber() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, commentFeedback2.getPhoneNumber());
            }
            if (commentFeedback2.getTextBody() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, commentFeedback2.getTextBody());
            }
            if (commentFeedback2.getSource() == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, commentFeedback2.getSource());
            }
            if (commentFeedback2.getSyncState() == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, commentFeedback2.getSyncState());
            }
            abstractC26154f.mo2650l0(7, commentFeedback2.getAnonymous() ? 1L : 0L);
            if (commentFeedback2.getPhoneNumberType() == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, commentFeedback2.getPhoneNumberType());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `comment_feedback_table` (`_id`,`creation_timestamp`,`phone_number`,`text_body`,`source`,`sync_state`,`anonymous`,`phone_number_type`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.q.g.b$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/b$b.class */
    public class CallableC19410b implements Callable<List<Long>> {

        /* renamed from: a */
        public final /* synthetic */ CommentFeedback[] f53938a;

        public CallableC19410b(CommentFeedback[] commentFeedbackArr) {
            C19408b.this = r4;
            this.f53938a = commentFeedbackArr;
        }

        @Override // java.util.concurrent.Callable
        public List<Long> call() throws Exception {
            C19408b.this.f53936a.beginTransaction();
            try {
                List<Long> insertAndReturnIdsList = C19408b.this.f53937b.insertAndReturnIdsList(this.f53938a);
                C19408b.this.f53936a.setTransactionSuccessful();
                return insertAndReturnIdsList;
            } finally {
                C19408b.this.f53936a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.q.g.b$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/b$c.class */
    public class CallableC19411c implements Callable<List<CommentFeedback>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f53940a;

        public CallableC19411c(C25686y c25686y) {
            C19408b.this = r4;
            this.f53940a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<CommentFeedback> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C19408b.this.f53936a, this.f53940a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "creation_timestamp");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "text_body");
                int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "source");
                int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "sync_state");
                int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "anonymous");
                int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "phone_number_type");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new CommentFeedback(m3090b.getLong(m43237g0), m3090b.getLong(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.getInt(m43237g07) != 0, m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f53940a.m3057l();
            }
        }
    }

    /* renamed from: e.a.q.g.b$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q/g/b$d.class */
    public class CallableC19412d implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ List f53942a;

        /* renamed from: b */
        public final /* synthetic */ String f53943b;

        public CallableC19412d(List list, String str) {
            C19408b.this = r4;
            this.f53942a = list;
            this.f53943b = str;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            StringBuilder m8688M = C22128a.m8688M(StringConstant.NEW_LINE, "            UPDATE comment_feedback_table SET sync_state=", "?", StringConstant.NEW_LINE, "            WHERE _id in (");
            C25655d.m3086a(m8688M, this.f53942a.size());
            m8688M.append(")");
            m8688M.append(StringConstant.NEW_LINE);
            m8688M.append("            ");
            AbstractC26154f compileStatement = C19408b.this.f53936a.compileStatement(m8688M.toString());
            String str = this.f53943b;
            if (str == null) {
                compileStatement.mo2648y0(1);
            } else {
                compileStatement.mo2651f0(1, str);
            }
            int i = 2;
            for (Long l : this.f53942a) {
                if (l == null) {
                    compileStatement.mo2648y0(i);
                } else {
                    compileStatement.mo2650l0(i, l.longValue());
                }
                i++;
            }
            C19408b.this.f53936a.beginTransaction();
            try {
                int m2673A = compileStatement.m2673A();
                C19408b.this.f53936a.setTransactionSuccessful();
                C19408b.this.f53936a.endTransaction();
                return Integer.valueOf(m2673A);
            } catch (Throwable th) {
                C19408b.this.f53936a.endTransaction();
                throw th;
            }
        }
    }

    public C19408b(AbstractC25677q abstractC25677q) {
        this.f53936a = abstractC25677q;
        this.f53937b = new C19409a(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19407a
    /* renamed from: a */
    public Object mo13357a(CommentFeedback[] commentFeedbackArr, d<? super List<Long>> dVar) {
        return C25650g.m3094c(this.f53936a, true, new CallableC19410b(commentFeedbackArr), dVar);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19407a
    /* renamed from: b */
    public Object mo13356b(d<? super List<CommentFeedback>> dVar) {
        return m13354d(SyncState.PENDING.name(), dVar);
    }

    @Override // p193e.p194a.p1138q.p1143g.AbstractC19407a
    /* renamed from: c */
    public Object mo13355c(List<Long> list, String str, d<? super Integer> dVar) {
        return C25650g.m3094c(this.f53936a, true, new CallableC19412d(list, str), dVar);
    }

    /* renamed from: d */
    public Object m13354d(String str, d<? super List<CommentFeedback>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM comment_feedback_table WHERE sync_state = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f53936a, false, new CancellationSignal(), new CallableC19411c(m3059j), dVar);
    }
}
