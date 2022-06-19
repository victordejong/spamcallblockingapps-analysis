package p193e.p194a.p1270u2.p1271a;

import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.u2.a.a */
/* loaded from: classes5-dex2jar.jar:e/a/u2/a/a.class */
public abstract class AbstractC20574a<PV> extends AbstractC20576b<PV> implements i0 {

    /* renamed from: b */
    public final g f57680b = C25225a.m3978P1(C20575a.f57682b);

    /* renamed from: c */
    public final f f57681c;

    /* renamed from: e.a.u2.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/u2/a/a$a.class */
    public static final class C20575a extends m implements a<y> {

        /* renamed from: b */
        public static final C20575a f57682b = new C20575a();

        public C20575a() {
            super(0);
        }

        public Object invoke() {
            return d.j((p1) null, 1, (Object) null);
        }
    }

    public AbstractC20574a(f fVar) {
        l.e(fVar, "baseContext");
        this.f57681c = fVar;
    }

    /* renamed from: Hj */
    public final p1 m11016Hj() {
        return (p1) this.f57680b.getValue();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        d.T(m11016Hj(), (CancellationException) null, 1, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f57681c.plus(m11016Hj());
    }
}
