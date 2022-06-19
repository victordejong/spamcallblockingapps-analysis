package p193e.p194a.p1080o.p1103p.p1105b;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.contextcall.p159db.hiddennumber.HiddenNumber;
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
/* renamed from: e.a.o.p.b.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c.class */
public final class C18815c implements AbstractC18814b {

    /* renamed from: a */
    public final AbstractC25677q f52850a;

    /* renamed from: b */
    public final AbstractC25663k<HiddenNumber> f52851b;

    /* renamed from: c */
    public final AbstractC25662j<HiddenNumber> f52852c;

    /* renamed from: e.a.o.p.b.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$a.class */
    public class C18816a extends AbstractC25663k<HiddenNumber> {
        public C18816a(C18815c c18815c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, HiddenNumber hiddenNumber) {
            HiddenNumber hiddenNumber2 = hiddenNumber;
            if (hiddenNumber2.getNumber() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, hiddenNumber2.getNumber());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `hidden_number` (`number`) VALUES (?)";
        }
    }

    /* renamed from: e.a.o.p.b.c$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$b.class */
    public class C18817b extends AbstractC25662j<HiddenNumber> {
        public C18817b(C18815c c18815c, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25662j
        public void bind(AbstractC26154f abstractC26154f, HiddenNumber hiddenNumber) {
            HiddenNumber hiddenNumber2 = hiddenNumber;
            if (hiddenNumber2.getNumber() == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, hiddenNumber2.getNumber());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM `hidden_number` WHERE `number` = ?";
        }
    }

    /* renamed from: e.a.o.p.b.c$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$c.class */
    public class CallableC18818c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ HiddenNumber f52853a;

        public CallableC18818c(HiddenNumber hiddenNumber) {
            C18815c.this = r4;
            this.f52853a = hiddenNumber;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18815c.this.f52850a.beginTransaction();
            try {
                C18815c.this.f52851b.insert((AbstractC25663k<HiddenNumber>) this.f52853a);
                C18815c.this.f52850a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18815c.this.f52850a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.b.c$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$d.class */
    public class CallableC18819d implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ HiddenNumber f52855a;

        public CallableC18819d(HiddenNumber hiddenNumber) {
            C18815c.this = r4;
            this.f52855a = hiddenNumber;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18815c.this.f52850a.beginTransaction();
            try {
                C18815c.this.f52852c.m3081a(this.f52855a);
                C18815c.this.f52850a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18815c.this.f52850a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.b.c$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$e.class */
    public class CallableC18820e implements Callable<List<HiddenNumber>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52857a;

        public CallableC18820e(C25686y c25686y) {
            C18815c.this = r4;
            this.f52857a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<HiddenNumber> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C18815c.this.f52850a, this.f52857a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "number");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new HiddenNumber(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f52857a.m3057l();
            }
        }
    }

    /* renamed from: e.a.o.p.b.c$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$f.class */
    public class CallableC18821f implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52859a;

        public CallableC18821f(C25686y c25686y) {
            C18815c.this = r4;
            this.f52859a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C18815c.this.f52850a, this.f52859a, false, null);
            Integer num = null;
            try {
                if (m3090b.moveToFirst()) {
                    num = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
                }
                m3090b.close();
                this.f52859a.m3057l();
                return num;
            } catch (Throwable th) {
                m3090b.close();
                this.f52859a.m3057l();
                throw th;
            }
        }
    }

    /* renamed from: e.a.o.p.b.c$g */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/c$g.class */
    public class CallableC18822g implements Callable<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52861a;

        public CallableC18822g(C25686y c25686y) {
            C18815c.this = r4;
            this.f52861a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            boolean z = false;
            Cursor m3090b = C25653b.m3090b(C18815c.this.f52850a, this.f52861a, false, null);
            Boolean bool = null;
            try {
                if (m3090b.moveToFirst()) {
                    Integer valueOf = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
                    if (valueOf == null) {
                        bool = null;
                    } else {
                        if (valueOf.intValue() != 0) {
                            z = true;
                        }
                        bool = Boolean.valueOf(z);
                    }
                }
                m3090b.close();
                this.f52861a.m3057l();
                return bool;
            } catch (Throwable th) {
                m3090b.close();
                this.f52861a.m3057l();
                throw th;
            }
        }
    }

    public C18815c(AbstractC25677q abstractC25677q) {
        this.f52850a = abstractC25677q;
        this.f52851b = new C18816a(this, abstractC25677q);
        this.f52852c = new C18817b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18814b
    /* renamed from: a */
    public Object mo14454a(String str, d<? super Boolean> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT EXISTS(SELECT * FROM hidden_number WHERE number=?)", 1);
        m3059j.mo2651f0(1, str);
        return C25650g.m3095b(this.f52850a, false, new CancellationSignal(), new CallableC18822g(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18814b
    /* renamed from: b */
    public Object mo14453b(HiddenNumber hiddenNumber, d<? super s> dVar) {
        return C25650g.m3094c(this.f52850a, true, new CallableC18819d(hiddenNumber), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18814b
    /* renamed from: c */
    public Object mo14452c(d<? super List<HiddenNumber>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM hidden_number", 0);
        return C25650g.m3095b(this.f52850a, false, new CancellationSignal(), new CallableC18820e(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18814b
    /* renamed from: d */
    public Object mo14451d(HiddenNumber hiddenNumber, d<? super s> dVar) {
        return C25650g.m3094c(this.f52850a, true, new CallableC18818c(hiddenNumber), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18814b
    /* renamed from: e */
    public Object mo14450e(d<? super Integer> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT COUNT(*) FROM hidden_number", 0);
        return C25650g.m3095b(this.f52850a, false, new CancellationSignal(), new CallableC18821f(m3059j), dVar);
    }
}
