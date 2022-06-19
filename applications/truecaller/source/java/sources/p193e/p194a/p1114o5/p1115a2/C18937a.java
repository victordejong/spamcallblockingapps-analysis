package p193e.p194a.p1114o5.p1115a2;

import androidx.work.ListenableWorker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.o5.a2.a */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a2/a.class */
public final class C18937a extends AbstractC21765k {

    /* renamed from: b */
    public final String f53081b = "ASRWorkAction12";

    /* renamed from: c */
    public final AbstractC8432l f53082c;

    /* renamed from: d */
    public final AbstractC19230g f53083d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC19463a0> f53084e;

    @Inject
    public C18937a(AbstractC8432l abstractC8432l, AbstractC19230g abstractC19230g, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19854f, "eventTracker");
        this.f53082c = abstractC8432l;
        this.f53083d = abstractC19230g;
        this.f53084e = abstractC19854f;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        List<String> mo13774w = this.f53083d.mo13774w();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(mo13774w, 10));
        Iterator<T> it = mo13774w.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                if (!arrayList.isEmpty()) {
                    C17697p3.C17699b m15852a = C17697p3.m15852a();
                    m15852a.m15850b("AppIdentity");
                    m15852a.m15848d(i.V0(arrayList));
                    this.f53084e.mo11854a().mo13111a(m15852a.build());
                }
                ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c, "ListenableWorker.Result.success()");
                return c0417c;
            }
            Object next = it.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                i.N0();
                throw null;
            }
            arrayList.add(new k(C22128a.m8611i2("Id", i3), (String) next));
            i = i3;
        }
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f53081b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f53082c.mo28580d();
    }
}
