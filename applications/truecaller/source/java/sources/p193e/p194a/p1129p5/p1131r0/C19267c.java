package p193e.p194a.p1129p5.p1131r0;

import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.w2.q;
import q3.a.w2.v;
import q3.a.w2.x;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.utils.bluetooth.BluetoothHeadsetMonitor$getHeadsetStatuses$1", f = "BluetoothHeadsetMonitor.kt", l = {212}, m = "invokeSuspend")
/* renamed from: e.a.p5.r0.c */
/* loaded from: classes15-dex2jar.jar:e/a/p5/r0/c.class */
public final class C19267c extends i implements p<x<? super C19270d>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f53657e;

    /* renamed from: f */
    public int f53658f;

    /* renamed from: g */
    public final /* synthetic */ C19264b f53659g;

    /* renamed from: h */
    public final /* synthetic */ i1 f53660h;

    /* renamed from: e.a.p5.r0.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/r0/c$a.class */
    public static final class C19268a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ x f53662c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19268a(x xVar) {
            super(0);
            C19267c.this = r4;
            this.f53662c = xVar;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0022 -> B:4:0x001e). Please submit an issue!!! */
        public Object invoke() {
            x xVar = this.f53662c;
            C19270d m13724b = C19267c.this.f53659g.m13724b();
            l.e(xVar, "$this$offerSafe");
            try {
                xVar.offer(m13724b);
            } catch (q | CancellationException e) {
            }
            return s.a;
        }
    }

    /* renamed from: e.a.p5.r0.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/r0/c$b.class */
    public static final class C19269b extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19269b() {
            super(0);
            C19267c.this = r4;
        }

        public Object invoke() {
            C19267c.this.f53659g.m13717i();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19267c(C19264b c19264b, i1 i1Var, d dVar) {
        super(2, dVar);
        this.f53659g = c19264b;
        this.f53660h = i1Var;
    }

    /* renamed from: i */
    public final d<s> m13713i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C19267c c19267c = new C19267c(this.f53659g, this.f53660h, dVar);
        c19267c.f53657e = obj;
        return c19267c;
    }

    /* renamed from: k */
    public final Object m13712k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19267c c19267c = new C19267c(this.f53659g, this.f53660h, dVar);
        c19267c.f53657e = obj;
        return c19267c.m13711s(s.a);
    }

    /* renamed from: s */
    public final Object m13711s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f53658f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (x) this.f53657e;
            this.f53659g.f53650d = new C19268a(i0Var);
            this.f53659g.m13718h(i0Var, this.f53660h);
            C19269b c19269b = new C19269b();
            this.f53658f = 1;
            if (v.a(i0Var, c19269b, this) == aVar) {
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
