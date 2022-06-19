package p1727n3.p1834m0.p1835c0.p1845t;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26834j;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.C26684d;
import p1727n3.p1834m0.p1835c0.p1843r.AbstractC26736a;
import p1727n3.p1834m0.p1835c0.p1843r.C26738c;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
import p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.t.s */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/s.class */
public class C26801s implements AbstractC26834j {

    /* renamed from: a */
    public final AbstractC26821a f74998a;

    /* renamed from: b */
    public final AbstractC26736a f74999b;

    /* renamed from: c */
    public final AbstractC26764q f75000c;

    /* renamed from: n3.m0.c0.t.s$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/s$a.class */
    public class RunnableC26802a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ c f75001a;

        /* renamed from: b */
        public final /* synthetic */ UUID f75002b;

        /* renamed from: c */
        public final /* synthetic */ C26833i f75003c;

        /* renamed from: d */
        public final /* synthetic */ Context f75004d;

        public RunnableC26802a(c cVar, UUID uuid, C26833i c26833i, Context context) {
            C26801s.this = r4;
            this.f75001a = cVar;
            this.f75002b = uuid;
            this.f75003c = c26833i;
            this.f75004d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!(this.f75001a.f75026a instanceof AbstractC26809a.C26812c)) {
                    String uuid = this.f75002b.toString();
                    C26855x.EnumC26856a m1349h = ((C26767t) C26801s.this.f75000c).m1349h(uuid);
                    if (m1349h == null || m1349h.m1288a()) {
                        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    ((C26684d) C26801s.this.f74999b).m1443f(uuid, this.f75003c);
                    this.f75004d.startService(C26738c.m1377a(this.f75004d, uuid, this.f75003c));
                }
                this.f75001a.i((Object) null);
            } catch (Throwable th) {
                this.f75001a.j(th);
            }
        }
    }

    static {
        AbstractC26839p.m1295e("WMFgUpdater");
    }

    public C26801s(WorkDatabase workDatabase, AbstractC26736a abstractC26736a, AbstractC26821a abstractC26821a) {
        this.f74999b = abstractC26736a;
        this.f74998a = abstractC26821a;
        this.f75000c = workDatabase.m42606f();
    }

    /* renamed from: a */
    public ListenableFuture<Void> m1325a(Context context, UUID uuid, C26833i c26833i) {
        c cVar = new c();
        AbstractC26821a abstractC26821a = this.f74998a;
        ((C26822b) abstractC26821a).f75051a.execute(new RunnableC26802a(cVar, uuid, c26833i, context));
        return cVar;
    }
}
