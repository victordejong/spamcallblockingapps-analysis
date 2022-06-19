package p193e.p194a.p195a.p271o.p272a;

import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$loadCallRecordings$1", f = "CallRecStorageManagerPresenter.kt", l = {Constants.ERR_ALREADY_IN_RECORDING}, m = "invokeSuspend")
/* renamed from: e.a.a.o.a.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/l.class */
public final class C7075l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f22798e;

    /* renamed from: f */
    public int f22799f;

    /* renamed from: g */
    public final /* synthetic */ C7071k f22800g;

    @e(c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$loadCallRecordings$1$1", f = "CallRecStorageManagerPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.a.l$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/l$a.class */
    public static final class C7076a extends i implements p<i0, d<? super AbstractC17373b>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7076a(d dVar) {
            super(2, dVar);
            C7075l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30169i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7076a(dVar);
        }

        /* renamed from: k */
        public final Object m30168k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7075l c7075l = C7075l.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c7075l.f22800g.f22787h.mo16152N1().mo11831c();
        }

        /* renamed from: s */
        public final Object m30167s(Object obj) {
            C25225a.m3932a3(obj);
            return C7075l.this.f22800g.f22787h.mo16152N1().mo11831c();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7075l(C7071k c7071k, d dVar) {
        super(2, dVar);
        this.f22800g = c7071k;
    }

    /* renamed from: i */
    public final d<s> m30172i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7075l(this.f22800g, dVar);
    }

    /* renamed from: k */
    public final Object m30171k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7075l(this.f22800g, dVar).m30170s(s.a);
    }

    /* renamed from: s */
    public final Object m30170s(Object obj) {
        Object obj2;
        C7071k c7071k;
        a aVar = a.a;
        int i = this.f22799f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7071k c7071k2 = this.f22800g;
            f fVar = c7071k2.f22786g;
            C7076a c7076a = new C7076a(null);
            this.f22798e = c7071k2;
            this.f22799f = 1;
            obj2 = s1.a.a.a.v0.f.d.a4(fVar, c7076a, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c7071k = c7071k2;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c7071k = (C7071k) this.f22798e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c7071k.f22783d = (AbstractC17373b) obj2;
        AbstractC17373b abstractC17373b = this.f22800g.f22783d;
        if ((abstractC17373b != null ? new Integer(abstractC17373b.getCount()).intValue() : 0) > 0) {
            AbstractC7068i abstractC7068i = (AbstractC7068i) this.f22800g.f57683a;
            if (abstractC7068i != null) {
                abstractC7068i.mo30204Lc();
            }
            AbstractC7068i abstractC7068i2 = (AbstractC7068i) this.f22800g.f57683a;
            if (abstractC7068i2 != null) {
                abstractC7068i2.mo30202U2();
            }
        } else {
            AbstractC7068i abstractC7068i3 = (AbstractC7068i) this.f22800g.f57683a;
            if (abstractC7068i3 != null) {
                abstractC7068i3.mo30206C();
            }
        }
        return s.a;
    }
}
