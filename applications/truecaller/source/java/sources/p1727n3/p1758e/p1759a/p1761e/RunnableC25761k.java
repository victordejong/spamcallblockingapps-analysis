package p1727n3.p1758e.p1759a.p1761e;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.C25898c1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.k */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k.class */
public final /* synthetic */ class RunnableC25761k implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72151a;

    /* renamed from: b */
    public final /* synthetic */ Collection f72152b;

    public /* synthetic */ RunnableC25761k(b1 b1Var, Collection collection) {
        this.f72151a = b1Var;
        this.f72152b = collection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72151a;
        Collection<AbstractC25921g1> collection = this.f72152b;
        Objects.requireNonNull(b1Var);
        ArrayList arrayList = new ArrayList();
        for (AbstractC25921g1 abstractC25921g1 : collection) {
            if (b1Var.a.m2803d(abstractC25921g1.m2902d() + abstractC25921g1.hashCode())) {
                b1Var.a.f72653b.remove(abstractC25921g1.m2902d() + abstractC25921g1.hashCode());
                arrayList.add(abstractC25921g1);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("Use cases [");
        m8728C.append(TextUtils.join(", ", arrayList));
        m8728C.append("] now DETACHED for camera");
        b1Var.o(m8728C.toString(), (Throwable) null);
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (((AbstractC25921g1) it.next()) instanceof C25898c1) {
                b1Var.f.g = null;
                break;
            }
        }
        b1Var.l();
        boolean z = false;
        if (!b1Var.a.m2805b().isEmpty()) {
            b1Var.z();
            b1Var.w(false);
            if (b1Var.d != b1$e.OPENED) {
                return;
            }
            b1Var.t();
            return;
        }
        b1Var.f.i();
        b1Var.w(false);
        b1Var.f.p(false);
        b1Var.k = new C25852r1();
        b1$e b1_e = b1$e.CLOSING;
        b1Var.o("Closing camera.", (Throwable) null);
        int ordinal = b1Var.d.ordinal();
        if (ordinal == 1) {
            if (b1Var.i == null) {
                z = true;
            }
            MediaSessionCompat.m43187x(z, null);
            b1Var.x(b1$e.INITIALIZED);
            return;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                b1Var.x(b1_e);
                b1Var.m(false);
                return;
            } else if (ordinal != 5) {
                StringBuilder m8728C2 = C22128a.m8728C("close() ignored due to being in state: ");
                m8728C2.append(b1Var.d);
                b1Var.o(m8728C2.toString(), (Throwable) null);
                return;
            }
        }
        boolean m3025a = b1Var.g.m3025a();
        b1Var.x(b1_e);
        if (!m3025a) {
            return;
        }
        MediaSessionCompat.m43187x(b1Var.r(), null);
        b1Var.p();
    }
}
