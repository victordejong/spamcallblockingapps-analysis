package p193e.p194a.p195a.p227e;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p195a.AbstractC6392i0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.e.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/l.class */
public final class C6003l extends AbstractC21765k {

    /* renamed from: b */
    public final String f19982b = "InboxAutoCleanerWorkAction";

    /* renamed from: c */
    public final AbstractC6005m f19983c;

    /* renamed from: d */
    public final AbstractC6392i0 f19984d;

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxAutoCleanerWorkAction$execute$1", f = "InboxAutoCleanerWorkAction.kt", l = {24}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.l$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/l$a.class */
    public static final class C6004a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19985e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6004a(d dVar) {
            super(2, dVar);
            C6003l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32059i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6004a(dVar);
        }

        /* renamed from: k */
        public final Object m32058k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6004a(dVar).m32057s(s.a);
        }

        /* renamed from: s */
        public final Object m32057s(Object obj) {
            a aVar = a.a;
            int i = this.f19985e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6005m abstractC6005m = C6003l.this.f19983c;
                this.f19985e = 1;
                if (abstractC6005m.mo32046k(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C6003l(AbstractC6005m abstractC6005m, AbstractC6392i0 abstractC6392i0) {
        l.e(abstractC6005m, "inboxCleaner");
        l.e(abstractC6392i0, "messageSettings");
        this.f19983c = abstractC6005m;
        this.f19984d = abstractC6392i0;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C6004a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f19982b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f19983c.mo32047j() && this.f19984d.mo31011q0();
    }
}
