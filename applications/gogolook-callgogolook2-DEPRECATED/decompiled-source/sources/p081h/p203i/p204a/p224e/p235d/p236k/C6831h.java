package p081h.p203i.p204a.p224e.p235d.p236k;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6901n;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/h.class */
public final class C6831h {

    /* renamed from: h.i.a.e.d.k.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/h$a.class */
    public static final class C6832a<R extends AbstractC6835k> extends BasePendingResult<R> {

        /* renamed from: q */
        public final R f16739q;

        public C6832a(AbstractC6825f fVar, R r) {
            super(fVar);
            this.f16739q = r;
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        /* renamed from: a */
        public final R mo17894a(Status status) {
            return this.f16739q;
        }
    }

    /* renamed from: a */
    public static AbstractC6829g<Status> m21816a(Status status, AbstractC6825f fVar) {
        C7021t.m21289a(status, "Result must not be null");
        C6901n nVar = new C6901n(fVar);
        nVar.m31984a((C6901n) status);
        return nVar;
    }

    /* renamed from: a */
    public static <R extends AbstractC6835k> AbstractC6829g<R> m21815a(R r, AbstractC6825f fVar) {
        C7021t.m21289a(r, "Result must not be null");
        C7021t.m21285a(!r.mo21814b().m31991J(), "Status code must not be SUCCESS");
        C6832a aVar = new C6832a(fVar, r);
        aVar.m31984a((C6832a) r);
        return aVar;
    }
}
