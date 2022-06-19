package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraAccessException;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.b1$b */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/b1$b.class */
public class b1$b implements AbstractC26030d<Void> {

    /* renamed from: a */
    public final /* synthetic */ b1 f72039a;

    public b1$b(b1 b1Var) {
        this.f72039a = b1Var;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    /* renamed from: a */
    public void mo2689a(Throwable th) {
        C25972j1 c25972j1;
        if (th instanceof CameraAccessException) {
            b1 b1Var = this.f72039a;
            StringBuilder m8728C = C22128a.m8728C("Unable to configure camera due to ");
            m8728C.append(th.getMessage());
            b1Var.o(m8728C.toString(), (Throwable) null);
        } else if (th instanceof CancellationException) {
            this.f72039a.o("Unable to configure camera cancelled", (Throwable) null);
        } else if (!(th instanceof AbstractC25980k0.C25981a)) {
            if (!(th instanceof TimeoutException)) {
                throw new RuntimeException(th);
            }
            StringBuilder m8728C2 = C22128a.m8728C("Unable to configure camera ");
            m8728C2.append(this.f72039a.h.a);
            m8728C2.append(", timeout!");
            C26103y0.m2723b("Camera2CameraImpl", m8728C2.toString(), null);
        } else {
            b1 b1Var2 = this.f72039a;
            AbstractC25980k0 abstractC25980k0 = ((AbstractC25980k0.C25981a) th).f72621a;
            Iterator<C25972j1> it = b1Var2.a.m2805b().iterator();
            do {
                c25972j1 = null;
                if (!it.hasNext()) {
                    break;
                }
                c25972j1 = it.next();
            } while (!c25972j1.m2842b().contains(abstractC25980k0));
            if (c25972j1 == null) {
                return;
            }
            b1 b1Var3 = this.f72039a;
            Objects.requireNonNull(b1Var3);
            ScheduledExecutorService m43279O0 = MediaSessionCompat.m43279O0();
            List<C25972j1.AbstractC25975c> list = c25972j1.f72599e;
            if (list.isEmpty()) {
                return;
            }
            final C25972j1.AbstractC25975c abstractC25975c = list.get(0);
            b1Var3.o("Posting surface closed", new Throwable());
            final C25972j1 c25972j12 = c25972j1;
            m43279O0.execute(new Runnable() { // from class: n3.e.a.e.m
                @Override // java.lang.Runnable
                public final void run() {
                    C25972j1.AbstractC25975c.this.mo2736a(c25972j12, C25972j1.EnumC25977e.SESSION_ERROR_SURFACE_NEEDS_RESET);
                }
            });
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
    public void onSuccess(Void r3) {
    }
}
