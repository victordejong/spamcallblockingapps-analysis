package p193e.p194a.p195a.p271o;

import java.util.LinkedHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter$onClearCacheClicked$1", f = "StorageManagerPresenter.kt", l = {76}, m = "invokeSuspend")
/* renamed from: e.a.a.o.n */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/n.class */
public final class C7102n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f22864e;

    /* renamed from: f */
    public final /* synthetic */ C7104o f22865f;

    @e(c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter$onClearCacheClicked$1$isSuccess$1", f = "StorageManagerPresenter.kt", l = {76}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.n$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/n$a.class */
    public static final class C7103a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f22866e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7103a(d dVar) {
            super(2, dVar);
            C7102n.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30122i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7103a(dVar);
        }

        /* renamed from: k */
        public final Object m30121k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7103a(dVar).m30120s(s.a);
        }

        /* renamed from: s */
        public final Object m30120s(Object obj) {
            a aVar = a.a;
            int i = this.f22866e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7084f abstractC7084f = C7102n.this.f22865f.f22869e;
                this.f22866e = 1;
                Object mo30157b = abstractC7084f.mo30157b(this);
                obj = mo30157b;
                if (mo30157b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7102n(C7104o c7104o, d dVar) {
        super(2, dVar);
        this.f22865f = c7104o;
    }

    /* renamed from: i */
    public final d<s> m30125i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7102n(this.f22865f, dVar);
    }

    /* renamed from: k */
    public final Object m30124k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7102n(this.f22865f, dVar).m30123s(s.a);
    }

    /* renamed from: s */
    public final Object m30123s(Object obj) {
        a aVar = a.a;
        int i = this.f22864e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f22865f.f22868d;
            C7103a c7103a = new C7103a(null);
            this.f22864e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c7103a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            C10480a.m26065H1(this.f22865f, false, false, 2, null);
        }
        AbstractC19462a abstractC19462a = this.f22865f.f22871g;
        C22128a.m8684N0("StorageClearCache", new LinkedHashMap(), C22128a.m8655X("StorageClearCache", "type"), "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
        return s.a;
    }
}
