package p193e.p194a.p1080o.p1103p.p1106c;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import s1.s;
import s1.w.d;
/* renamed from: e.a.o.p.c.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b.class */
public final class C18834b implements AbstractC18833a {

    /* renamed from: a */
    public final AbstractC25677q f52893a;

    /* renamed from: b */
    public final AbstractC25663k<IncomingCallContext> f52894b;

    /* renamed from: c */
    public final AbstractC25646c0 f52895c;

    /* renamed from: d */
    public final AbstractC25646c0 f52896d;

    /* renamed from: e.a.o.p.c.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$a.class */
    public class C18835a extends AbstractC25663k<IncomingCallContext> {
        public C18835a(C18834b c18834b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, IncomingCallContext incomingCallContext) {
            IncomingCallContext incomingCallContext2 = incomingCallContext;
            if (incomingCallContext2.getId() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, incomingCallContext2.getId());
            }
            if (incomingCallContext2.getNumber() == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, incomingCallContext2.getNumber());
            }
            if (incomingCallContext2.getMessage() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, incomingCallContext2.getMessage());
            }
            abstractC26154f.mo2650l0(4, incomingCallContext2.getCreatedAt());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `incoming_call_context` (`_id`,`phone_number`,`message`,`created_at`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.o.p.c.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$b.class */
    public class C18836b extends AbstractC25646c0 {
        public C18836b(C18834b c18834b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM incoming_call_context WHERE phone_number=?";
        }
    }

    /* renamed from: e.a.o.p.c.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$c.class */
    public class C18837c extends AbstractC25646c0 {
        public C18837c(C18834b c18834b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM incoming_call_context WHERE _id IN (SELECT _id FROM incoming_call_context WHERE created_at < ?)";
        }
    }

    /* renamed from: e.a.o.p.c.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$d.class */
    public class CallableC18838d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ IncomingCallContext f52897a;

        public CallableC18838d(IncomingCallContext incomingCallContext) {
            C18834b.this = r4;
            this.f52897a = incomingCallContext;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18834b.this.f52893a.beginTransaction();
            try {
                C18834b.this.f52894b.insert((AbstractC25663k<IncomingCallContext>) this.f52897a);
                C18834b.this.f52893a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18834b.this.f52893a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.c.b$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$e.class */
    public class CallableC18839e implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ String f52899a;

        public CallableC18839e(String str) {
            C18834b.this = r4;
            this.f52899a = str;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C18834b.this.f52895c.acquire();
            String str = this.f52899a;
            if (str == null) {
                acquire.mo2648y0(1);
            } else {
                acquire.mo2651f0(1, str);
            }
            C18834b.this.f52893a.beginTransaction();
            try {
                acquire.m2673A();
                C18834b.this.f52893a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18834b.this.f52893a.endTransaction();
                C18834b.this.f52895c.release(acquire);
            }
        }
    }

    /* renamed from: e.a.o.p.c.b$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$f.class */
    public class CallableC18840f implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ long f52901a;

        public CallableC18840f(long j) {
            C18834b.this = r5;
            this.f52901a = j;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C18834b.this.f52896d.acquire();
            acquire.mo2650l0(1, this.f52901a);
            C18834b.this.f52893a.beginTransaction();
            try {
                acquire.m2673A();
                C18834b.this.f52893a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18834b.this.f52893a.endTransaction();
                C18834b.this.f52896d.release(acquire);
            }
        }
    }

    /* renamed from: e.a.o.p.c.b$g */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/b$g.class */
    public class CallableC18841g implements Callable<IncomingCallContext> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52903a;

        public CallableC18841g(C25686y c25686y) {
            C18834b.this = r4;
            this.f52903a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public IncomingCallContext call() throws Exception {
            IncomingCallContext incomingCallContext = null;
            String str = null;
            Cursor m3090b = C25653b.m3090b(C18834b.this.f52893a, this.f52903a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "created_at");
                if (m3090b.moveToFirst()) {
                    String string = m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0);
                    String string2 = m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02);
                    if (!m3090b.isNull(m43237g03)) {
                        str = m3090b.getString(m43237g03);
                    }
                    incomingCallContext = new IncomingCallContext(string, string2, str, m3090b.getLong(m43237g04));
                }
                m3090b.close();
                this.f52903a.m3057l();
                return incomingCallContext;
            } catch (Throwable th) {
                m3090b.close();
                this.f52903a.m3057l();
                throw th;
            }
        }
    }

    public C18834b(AbstractC25677q abstractC25677q) {
        this.f52893a = abstractC25677q;
        this.f52894b = new C18835a(this, abstractC25677q);
        this.f52895c = new C18836b(this, abstractC25677q);
        this.f52896d = new C18837c(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1106c.AbstractC18833a
    /* renamed from: a */
    public Object mo14426a(String str, d<? super IncomingCallContext> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM incoming_call_context WHERE phone_number=? ORDER BY created_at DESC", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f52893a, false, new CancellationSignal(), new CallableC18841g(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1106c.AbstractC18833a
    /* renamed from: b */
    public Object mo14425b(IncomingCallContext incomingCallContext, d<? super s> dVar) {
        return C25650g.m3094c(this.f52893a, true, new CallableC18838d(incomingCallContext), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1106c.AbstractC18833a
    /* renamed from: c */
    public Object mo14424c(String str, d<? super s> dVar) {
        return C25650g.m3094c(this.f52893a, true, new CallableC18839e(str), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1106c.AbstractC18833a
    /* renamed from: d */
    public Object mo14423d(long j, d<? super s> dVar) {
        return C25650g.m3094c(this.f52893a, true, new CallableC18840f(j), dVar);
    }
}
