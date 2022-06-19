package p193e.p194a.p1011l.p1023n2;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.premium.billing.GooglePlayBilling$execute$2", f = "GooglePlayBilling.kt", l = {266, 267, 268, 274}, m = "invokeSuspend")
/* renamed from: e.a.l.n2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/d.class */
public final class C16985d extends i implements p<i0, d<? super T>, Object> {

    /* renamed from: e */
    public int f47650e;

    /* renamed from: f */
    public int f47651f;

    /* renamed from: g */
    public int f47652g;

    /* renamed from: h */
    public int f47653h;

    /* renamed from: i */
    public final /* synthetic */ C16967a f47654i;

    /* renamed from: j */
    public final /* synthetic */ l f47655j;

    @e(c = "com.truecaller.premium.billing.GooglePlayBilling$execute$2$1$1", f = "GooglePlayBilling.kt", l = {270}, m = "invokeSuspend")
    /* renamed from: e.a.l.n2.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/d$a.class */
    public static final class C16986a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f47656e;

        /* renamed from: f */
        public final /* synthetic */ int f47657f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16986a(int i, d dVar) {
            super(2, dVar);
            this.f47657f = i;
        }

        /* renamed from: i */
        public final d<s> m16674i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16986a(this.f47657f, dVar);
        }

        /* renamed from: k */
        public final Object m16673k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C16986a(this.f47657f, dVar).m16672s(s.a);
        }

        /* renamed from: s */
        public final Object m16672s(Object obj) {
            a aVar = a.a;
            int i = this.f47656e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f47656e = 1;
                if (s1.a.a.a.v0.f.d.D0(400L, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16985d(C16967a c16967a, l lVar, d dVar) {
        super(2, dVar);
        this.f47654i = c16967a;
        this.f47655j = lVar;
    }

    /* renamed from: i */
    public final d<s> m16677i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16985d(this.f47654i, this.f47655j, dVar);
    }

    /* renamed from: k */
    public final Object m16676k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C16985d(this.f47654i, this.f47655j, dVar).m16675s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x017f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x014f -> B:42:0x0154). Please submit an issue!!! */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16675s(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1023n2.C16985d.m16675s(java.lang.Object):java.lang.Object");
    }
}
