package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.n.u1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/u1.class */
public final class C18437u1 extends AbstractC18338h0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18437u1(C6713w.AbstractC6717c abstractC6717c) {
        super(abstractC6717c);
        l.e(abstractC6717c, "transactionExecutor");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 7;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        l.e(bVar, "time");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        return bVar;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        l.e(abstractC6691j, "threadInfoCache");
        l.e(abstractC6694m, "participantCache");
        l.e(abstractC6139g0, "localCursor");
        l.e(bVar, "timeTo");
        l.e(bVar2, "timeFrom");
        l.e(list, "operations");
        l.e(abstractC19244l0, "trace");
        l.e(c10545d, "messagesToClassify");
        return Long.MIN_VALUE;
    }
}
