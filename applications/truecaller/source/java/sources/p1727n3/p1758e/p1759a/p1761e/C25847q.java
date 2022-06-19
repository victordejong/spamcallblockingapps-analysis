package p1727n3.p1758e.p1759a.p1761e;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.q */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/q.class */
public final /* synthetic */ class C25847q implements AbstractC26249d {

    /* renamed from: a */
    public final /* synthetic */ b1 f72294a;

    @Override // p1727n3.p1790h.p1791a.AbstractC26249d
    /* renamed from: a */
    public final Object mo2255a(final C26247b c26247b) {
        final b1 b1Var = this.f72294a;
        b1Var.c.execute(new Runnable() { // from class: n3.e.a.e.l
            @Override // java.lang.Runnable
            public final void run() {
                final b1 b1Var2 = b1Var;
                C26247b c26247b2 = c26247b;
                b1$e b1_e = b1$e.RELEASING;
                if (b1Var2.n == null) {
                    if (b1Var2.d != b1$e.RELEASED) {
                        b1Var2.n = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.a.e.p
                            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                            /* renamed from: a */
                            public final Object mo2255a(C26247b c26247b3) {
                                b1 b1Var3 = b1Var2;
                                MediaSessionCompat.m43187x(b1Var3.o == null, "Camera can only be released once, so release completer should be null on creation.");
                                b1Var3.o = c26247b3;
                                return "Release[camera=" + b1Var3 + "]";
                            }
                        });
                    } else {
                        b1Var2.n = C26034g.m2781c(null);
                    }
                }
                ListenableFuture listenableFuture = b1Var2.n;
                boolean z = false;
                switch (b1Var2.d.ordinal()) {
                    case 0:
                    case 1:
                        if (b1Var2.i == null) {
                            z = true;
                        }
                        MediaSessionCompat.m43187x(z, null);
                        b1Var2.x(b1_e);
                        MediaSessionCompat.m43187x(b1Var2.r(), null);
                        b1Var2.p();
                        break;
                    case 2:
                    case 4:
                    case 5:
                    case 6:
                        boolean m3025a = b1Var2.g.m3025a();
                        b1Var2.x(b1_e);
                        if (m3025a) {
                            MediaSessionCompat.m43187x(b1Var2.r(), null);
                            b1Var2.p();
                            break;
                        }
                        break;
                    case 3:
                        b1Var2.x(b1_e);
                        b1Var2.m(false);
                        break;
                    default:
                        StringBuilder m8728C = C22128a.m8728C("release() ignored due to being in state: ");
                        m8728C.append(b1Var2.d);
                        b1Var2.o(m8728C.toString(), (Throwable) null);
                        break;
                }
                C26034g.m2779e(listenableFuture, c26247b2);
            }
        });
        return "Release[request=" + b1Var.m.getAndIncrement() + "]";
    }
}
