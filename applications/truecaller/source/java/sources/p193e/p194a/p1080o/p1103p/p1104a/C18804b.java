package p193e.p194a.p1080o.p1103p.p1104a;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.p159db.availability.ContextCallAvailability;
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
/* renamed from: e.a.o.p.a.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/a/b.class */
public final class C18804b implements AbstractC18803a {

    /* renamed from: a */
    public final AbstractC25677q f52831a;

    /* renamed from: b */
    public final AbstractC25663k<ContextCallAvailability> f52832b;

    /* renamed from: e.a.o.p.a.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/a/b$a.class */
    public class C18805a extends AbstractC25663k<ContextCallAvailability> {
        public C18805a(C18804b c18804b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, ContextCallAvailability contextCallAvailability) {
            ContextCallAvailability contextCallAvailability2 = contextCallAvailability;
            if (contextCallAvailability2.getPhone() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, contextCallAvailability2.getPhone());
            }
            abstractC26154f.mo2650l0(2, contextCallAvailability2.getEnabled());
            abstractC26154f.mo2650l0(3, contextCallAvailability2.getVersion());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `context_call_availability` (`phone`,`enabled`,`version`) VALUES (?,?,?)";
        }
    }

    /* renamed from: e.a.o.p.a.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/a/b$b.class */
    public class C18806b extends AbstractC25662j<ContextCallAvailability> {
        public C18806b(C18804b c18804b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, ContextCallAvailability contextCallAvailability) {
            ContextCallAvailability contextCallAvailability2 = contextCallAvailability;
            if (contextCallAvailability2.getPhone() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, contextCallAvailability2.getPhone());
            }
            abstractC26154f.mo2650l0(2, contextCallAvailability2.getEnabled());
            abstractC26154f.mo2650l0(3, contextCallAvailability2.getVersion());
            if (contextCallAvailability2.getPhone() == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, contextCallAvailability2.getPhone());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE OR ABORT `context_call_availability` SET `phone` = ?,`enabled` = ?,`version` = ? WHERE `phone` = ?";
        }
    }

    /* renamed from: e.a.o.p.a.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/a/b$c.class */
    public class CallableC18807c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ ContextCallAvailability f52833a;

        public CallableC18807c(ContextCallAvailability contextCallAvailability) {
            C18804b.this = r4;
            this.f52833a = contextCallAvailability;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18804b.this.f52831a.beginTransaction();
            try {
                C18804b.this.f52832b.insert((AbstractC25663k<ContextCallAvailability>) this.f52833a);
                C18804b.this.f52831a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18804b.this.f52831a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.a.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/a/b$d.class */
    public class CallableC18808d implements Callable<ContextCallAvailability> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52835a;

        public CallableC18808d(C25686y c25686y) {
            C18804b.this = r4;
            this.f52835a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public ContextCallAvailability call() throws Exception {
            ContextCallAvailability contextCallAvailability = null;
            Cursor m3090b = C25653b.m3090b(C18804b.this.f52831a, this.f52835a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.PHONE);
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "enabled");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "version");
                if (m3090b.moveToFirst()) {
                    contextCallAvailability = new ContextCallAvailability(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.getInt(m43237g02), m3090b.getInt(m43237g03));
                }
                m3090b.close();
                this.f52835a.m3057l();
                return contextCallAvailability;
            } catch (Throwable th) {
                m3090b.close();
                this.f52835a.m3057l();
                throw th;
            }
        }
    }

    public C18804b(AbstractC25677q abstractC25677q) {
        this.f52831a = abstractC25677q;
        this.f52832b = new C18805a(this, abstractC25677q);
        new C18806b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1104a.AbstractC18803a
    /* renamed from: a */
    public Object mo14462a(String str, d<? super ContextCallAvailability> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM context_call_availability WHERE phone=?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3095b(this.f52831a, false, new CancellationSignal(), new CallableC18808d(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1104a.AbstractC18803a
    /* renamed from: b */
    public Object mo14461b(ContextCallAvailability contextCallAvailability, d<? super s> dVar) {
        return C25650g.m3094c(this.f52831a, true, new CallableC18807c(contextCallAvailability), dVar);
    }
}
