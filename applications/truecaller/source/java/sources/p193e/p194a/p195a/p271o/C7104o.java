package p193e.p194a.p195a.p271o;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.o.o */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/o.class */
public final class C7104o extends AbstractC20574a<AbstractC7099l> implements AbstractC7098k {

    /* renamed from: d */
    public final f f22868d;

    /* renamed from: e */
    public final AbstractC7084f f22869e;

    /* renamed from: f */
    public final AbstractC7107p f22870f;

    /* renamed from: g */
    public final AbstractC19462a f22871g;

    @e(c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter", f = "StorageManagerPresenter.kt", l = {109}, m = "showTruecallerMedia")
    /* renamed from: e.a.a.o.o$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/o$a.class */
    public static final class C7105a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f22872d;

        /* renamed from: e */
        public int f22873e;

        /* renamed from: g */
        public Object f22875g;

        /* renamed from: h */
        public long f22876h;

        /* renamed from: i */
        public boolean f22877i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7105a(d dVar) {
            super(dVar);
            C7104o.this = r4;
        }

        /* renamed from: s */
        public final Object m30118s(Object obj) {
            this.f22872d = obj;
            this.f22873e |= Integer.MIN_VALUE;
            return C7104o.this.m30119Ij(0L, 0L, false, this);
        }
    }

    @e(c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter$showTruecallerMedia$mediaSizeByType$1", f = "StorageManagerPresenter.kt", l = {109}, m = "invokeSuspend")
    /* renamed from: e.a.a.o.o$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/o$b.class */
    public static final class C7106b extends i implements p<i0, d<? super List<? extends k<? extends Long, ? extends Integer>>>, Object> {

        /* renamed from: e */
        public int f22878e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7106b(d dVar) {
            super(2, dVar);
            C7104o.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30117i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7106b(dVar);
        }

        /* renamed from: k */
        public final Object m30116k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7106b(dVar).m30115s(s.a);
        }

        /* renamed from: s */
        public final Object m30115s(Object obj) {
            a aVar = a.a;
            int i = this.f22878e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7084f abstractC7084f = C7104o.this.f22869e;
                this.f22878e = 1;
                Object mo30155d = abstractC7084f.mo30155d(this);
                obj = mo30155d;
                if (mo30155d == aVar) {
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
    @Inject
    public C7104o(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC7084f abstractC7084f, AbstractC7107p abstractC7107p, AbstractC19462a abstractC19462a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC7084f, "storageManager");
        l.e(abstractC7107p, "utils");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f22868d = fVar2;
        this.f22869e = abstractC7084f;
        this.f22870f = abstractC7107p;
        this.f22871g = abstractC19462a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x015e  */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m30119Ij(long r8, long r10, boolean r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p271o.C7104o.m30119Ij(long, long, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.o.l, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC7099l abstractC7099l) {
        AbstractC7099l abstractC7099l2 = abstractC7099l;
        l.e(abstractC7099l2, "presenterView");
        this.f57683a = abstractC7099l2;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C7100m(this, true, true, null), 3, (Object) null);
    }
}
