package p193e.p194a.p1080o.p1103p.p1108e;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.contextcall.p159db.reason.CallReason;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25662j;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.o.p.e.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b.class */
public final class C18851b extends AbstractC18850a {

    /* renamed from: a */
    public final AbstractC25677q f52921a;

    /* renamed from: b */
    public final AbstractC25663k<CallReason> f52922b;

    /* renamed from: c */
    public final AbstractC25662j<CallReason> f52923c;

    /* renamed from: d */
    public final AbstractC25662j<CallReason> f52924d;

    /* renamed from: e.a.o.p.e.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$a.class */
    public class C18852a extends AbstractC25663k<CallReason> {
        public C18852a(C18851b c18851b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, CallReason callReason) {
            CallReason callReason2 = callReason;
            abstractC26154f.mo2650l0(1, callReason2.getId());
            if (callReason2.getReasonText() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, callReason2.getReasonText());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `call_reason` (`_id`,`message`) VALUES (nullif(?, 0),?)";
        }
    }

    /* renamed from: e.a.o.p.e.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$b.class */
    public class C18853b extends AbstractC25662j<CallReason> {
        public C18853b(C18851b c18851b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, CallReason callReason) {
            abstractC26154f.mo2650l0(1, callReason.getId());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM `call_reason` WHERE `_id` = ?";
        }
    }

    /* renamed from: e.a.o.p.e.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$c.class */
    public class C18854c extends AbstractC25662j<CallReason> {
        public C18854c(C18851b c18851b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, CallReason callReason) {
            CallReason callReason2 = callReason;
            abstractC26154f.mo2650l0(1, callReason2.getId());
            if (callReason2.getReasonText() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, callReason2.getReasonText());
            }
            abstractC26154f.mo2650l0(3, callReason2.getId());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE OR IGNORE `call_reason` SET `_id` = ?,`message` = ? WHERE `_id` = ?";
        }
    }

    /* renamed from: e.a.o.p.e.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$d.class */
    public class CallableC18855d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ CallReason f52925a;

        public CallableC18855d(CallReason callReason) {
            C18851b.this = r4;
            this.f52925a = callReason;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18851b.this.f52921a.beginTransaction();
            try {
                C18851b.this.f52922b.insert((AbstractC25663k<CallReason>) this.f52925a);
                C18851b.this.f52921a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18851b.this.f52921a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.e.b$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$e.class */
    public class CallableC18856e implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ CallReason f52927a;

        public CallableC18856e(CallReason callReason) {
            C18851b.this = r4;
            this.f52927a = callReason;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18851b.this.f52921a.beginTransaction();
            try {
                C18851b.this.f52923c.m3081a(this.f52927a);
                C18851b.this.f52921a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18851b.this.f52921a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.e.b$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$f.class */
    public class CallableC18857f implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ CallReason f52929a;

        public CallableC18857f(CallReason callReason) {
            C18851b.this = r4;
            this.f52929a = callReason;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18851b.this.f52921a.beginTransaction();
            try {
                C18851b.this.f52924d.m3081a(this.f52929a);
                C18851b.this.f52921a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18851b.this.f52921a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.e.b$g */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$g.class */
    public class CallableC18858g implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52931a;

        public CallableC18858g(C25686y c25686y) {
            C18851b.this = r4;
            this.f52931a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C18851b.this.f52921a, this.f52931a, false, null);
            Integer num = null;
            try {
                if (m3090b.moveToFirst()) {
                    num = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
                }
                m3090b.close();
                this.f52931a.m3057l();
                return num;
            } catch (Throwable th) {
                m3090b.close();
                this.f52931a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.o.p.e.b$h */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/b$h.class */
    public class CallableC18859h implements Callable<List<CallReason>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52933a;

        public CallableC18859h(C25686y c25686y) {
            C18851b.this = r4;
            this.f52933a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<CallReason> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C18851b.this.f52921a, this.f52933a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "message");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new CallReason(m3090b.getInt(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f52933a.m3057l();
            }
        }
    }

    public C18851b(AbstractC25677q abstractC25677q) {
        this.f52921a = abstractC25677q;
        this.f52922b = new C18852a(this, abstractC25677q);
        this.f52923c = new C18853b(this, abstractC25677q);
        this.f52924d = new C18854c(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18850a
    /* renamed from: a */
    public Object mo14409a(d<? super List<CallReason>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM call_reason", 0);
        return C25650g.m3095b(this.f52921a, false, new CancellationSignal(), new CallableC18859h(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18850a
    /* renamed from: b */
    public Object mo14408b(d<? super Integer> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT COUNT(*) FROM call_reason", 0);
        return C25650g.m3095b(this.f52921a, false, new CancellationSignal(), new CallableC18858g(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18850a
    /* renamed from: c */
    public Object mo14407c(CallReason callReason, d<? super s> dVar) {
        return C25650g.m3094c(this.f52921a, true, new CallableC18855d(callReason), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18850a
    /* renamed from: d */
    public Object mo14406d(CallReason callReason, d<? super s> dVar) {
        return C25650g.m3094c(this.f52921a, true, new CallableC18856e(callReason), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.AbstractC18850a
    /* renamed from: e */
    public Object mo14405e(CallReason callReason, d<? super s> dVar) {
        return C25650g.m3094c(this.f52921a, true, new CallableC18857f(callReason), dVar);
    }
}
