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
/* renamed from: e.a.u2.a.c */
/* loaded from: classes5-dex2jar.jar:e/a/u2/a/c.class */
public abstract class AbstractC20577c<Router, PV> extends AbstractC20579d<Router, PV> implements i0 {

    /* renamed from: c */
    public final g f57684c = C25225a.m3978P1(C20578a.f57686b);

    /* renamed from: d */
    public final f f57685d;

    /* renamed from: e.a.u2.a.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/u2/a/c$a.class */
    public static final class C20578a extends m implements a<y> {

        /* renamed from: b */
        public static final C20578a f57686b = new C20578a();

        public C20578a() {
            super(0);
        }

        public Object invoke() {
            return d.j((p1) null, 1, (Object) null);
        }
    }

    public AbstractC20577c(f fVar) {
        l.e(fVar, "baseContext");
        this.f57685d = fVar;
    }

    /* renamed from: Hj */
    public final p1 m11015Hj() {
        return (p1) this.f57684c.getValue();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        d.T(m11015Hj(), (CancellationException) null, 1, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f57685d.plus(m11015Hj());
    }
}
