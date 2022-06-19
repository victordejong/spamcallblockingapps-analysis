package p193e.p194a.p195a.p227e;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.e.q */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/q.class */
public final class C6014q extends AbstractC21765k {

    /* renamed from: b */
    public final String f20030b = "InboxCleanerNotificationWorkAction";

    /* renamed from: c */
    public final AbstractC6005m f20031c;

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanerNotificationWorkAction$execute$1", f = "InboxCleanerNotificationWorkAction.kt", l = {21}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.q$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/q$a.class */
    public static final class C6015a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f20032e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6015a(d dVar) {
            super(2, dVar);
            C6014q.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32025i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6015a(dVar);
        }

        /* renamed from: k */
        public final Object m32024k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6015a(dVar).m32023s(s.a);
        }

        /* renamed from: s */
        public final Object m32023s(Object obj) {
            a aVar = a.a;
            int i = this.f20032e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6005m abstractC6005m = C6014q.this.f20031c;
                this.f20032e = 1;
                if (abstractC6005m.mo32049h(this) == aVar) {
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
    public C6014q(AbstractC6005m abstractC6005m) {
        l.e(abstractC6005m, "inboxCleaner");
        this.f20031c = abstractC6005m;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C6015a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f20030b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f20031c.mo32047j();
    }
}
