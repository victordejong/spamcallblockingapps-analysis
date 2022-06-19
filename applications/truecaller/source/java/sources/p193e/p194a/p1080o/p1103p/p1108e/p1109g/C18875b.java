package p193e.p194a.p1080o.p1103p.p1108e.p1109g;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
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
import s1.z.b.l;
/* renamed from: e.a.o.p.e.g.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b.class */
public final class C18875b extends AbstractC18873a {

    /* renamed from: a */
    public final AbstractC25677q f52969a;

    /* renamed from: b */
    public final AbstractC25663k<PredefinedCallReasonEntity> f52970b;

    /* renamed from: c */
    public final AbstractC25646c0 f52971c;

    /* renamed from: e.a.o.p.e.g.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b$a.class */
    public class C18876a extends AbstractC25663k<PredefinedCallReasonEntity> {
        public C18876a(C18875b c18875b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, PredefinedCallReasonEntity predefinedCallReasonEntity) {
            PredefinedCallReasonEntity predefinedCallReasonEntity2 = predefinedCallReasonEntity;
            abstractC26154f.mo2650l0(1, predefinedCallReasonEntity2.getId());
            abstractC26154f.mo2650l0(2, predefinedCallReasonEntity2.getIndex());
            if (predefinedCallReasonEntity2.getMessage() == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, predefinedCallReasonEntity2.getMessage());
            }
            abstractC26154f.mo2650l0(4, predefinedCallReasonEntity2.getType());
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `predefined_call_reason` (`_id`,`index`,`message`,`type`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.o.p.e.g.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b$b.class */
    public class C18877b extends AbstractC25646c0 {
        public C18877b(C18875b c18875b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM predefined_call_reason";
        }
    }

    /* renamed from: e.a.o.p.e.g.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b$c.class */
    public class CallableC18878c implements Callable<s> {

        /* renamed from: a */
        public final /* synthetic */ List f52972a;

        public CallableC18878c(List list) {
            C18875b.this = r4;
            this.f52972a = list;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            C18875b.this.f52969a.beginTransaction();
            try {
                C18875b.this.f52970b.insert(this.f52972a);
                C18875b.this.f52969a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18875b.this.f52969a.endTransaction();
            }
        }
    }

    /* renamed from: e.a.o.p.e.g.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b$d.class */
    public class C18879d implements l<d<? super s>, Object> {

        /* renamed from: a */
        public final /* synthetic */ List f52974a;

        public C18879d(List list) {
            C18875b.this = r4;
            this.f52974a = list;
        }

        /* renamed from: d */
        public Object m14362d(Object obj) {
            C18875b c18875b = C18875b.this;
            List list = this.f52974a;
            Objects.requireNonNull(c18875b);
            return AbstractC18873a.m14368e(c18875b, list, (d) obj);
        }
    }

    /* renamed from: e.a.o.p.e.g.b$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b$e.class */
    public class CallableC18880e implements Callable<s> {
        public CallableC18880e() {
            C18875b.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C18875b.this.f52971c.acquire();
            C18875b.this.f52969a.beginTransaction();
            try {
                acquire.m2673A();
                C18875b.this.f52969a.setTransactionSuccessful();
                return s.a;
            } finally {
                C18875b.this.f52969a.endTransaction();
                C18875b.this.f52971c.release(acquire);
            }
        }
    }

    /* renamed from: e.a.o.p.e.g.b$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/b$f.class */
    public class CallableC18881f implements Callable<List<PredefinedCallReasonEntity>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f52977a;

        public CallableC18881f(C25686y c25686y) {
            C18875b.this = r4;
            this.f52977a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<PredefinedCallReasonEntity> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C18875b.this.f52969a, this.f52977a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "_id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "index");
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "message");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "type");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new PredefinedCallReasonEntity(m3090b.getInt(m43237g0), m3090b.getInt(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.getInt(m43237g04)));
                }
                return arrayList;
            } finally {
                m3090b.close();
                this.f52977a.m3057l();
            }
        }
    }

    public C18875b(AbstractC25677q abstractC25677q) {
        this.f52969a = abstractC25677q;
        this.f52970b = new C18876a(this, abstractC25677q);
        this.f52971c = new C18877b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18873a
    /* renamed from: a */
    public Object mo14366a(d<? super s> dVar) {
        return C25650g.m3094c(this.f52969a, true, new CallableC18880e(), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18873a
    /* renamed from: b */
    public Object mo14365b(d<? super List<PredefinedCallReasonEntity>> dVar) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM predefined_call_reason ORDER BY `index` ASC", 0);
        return C25650g.m3095b(this.f52969a, false, new CancellationSignal(), new CallableC18881f(m3059j), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18873a
    /* renamed from: c */
    public Object mo14364c(List<PredefinedCallReasonEntity> list, d<? super s> dVar) {
        return C25650g.m3094c(this.f52969a, true, new CallableC18878c(list), dVar);
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18873a
    /* renamed from: d */
    public Object mo14363d(List<PredefinedCallReasonEntity> list, d<? super s> dVar) {
        return MediaSessionCompat.m43284M1(this.f52969a, new C18879d(list), dVar);
    }
}
