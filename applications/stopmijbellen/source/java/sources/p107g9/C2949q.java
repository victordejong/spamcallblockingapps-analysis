package p107g9;

import android.net.NetworkInfo;
import android.os.Handler;
import java.io.IOException;
import java.util.Objects;
import p007a6.C0033h;
import p107g9.AbstractC2968x;
import p107g9.C2953s;
import p204p9.AbstractC4096d0;
import p204p9.C4084b0;
import p204p9.C4094d;
import p204p9.C4119p;
import p204p9.C4128v;
import p204p9.C4132x;
import p204p9.C4135y;
/* renamed from: g9.q */
/* loaded from: classes2-dex2jar.jar:g9/q.class */
public class C2949q extends AbstractC2968x {

    /* renamed from: a */
    public final AbstractC2941j f9915a;

    /* renamed from: b */
    public final C2971z f9916b;

    /* renamed from: g9.q$a */
    /* loaded from: classes2-dex2jar.jar:g9/q$a.class */
    public static class C2950a extends IOException {
        public C2950a(String str) {
            super(str);
        }
    }

    /* renamed from: g9.q$b */
    /* loaded from: classes2-dex2jar.jar:g9/q$b.class */
    public static final class C2951b extends IOException {

        /* renamed from: a */
        public final int f9917a;

        /* renamed from: b */
        public final int f9918b;

        public C2951b(int i, int i2) {
            super(C0033h.m8886k("HTTP ", i));
            this.f9917a = i;
            this.f9918b = i2;
        }
    }

    public C2949q(AbstractC2941j abstractC2941j, C2971z c2971z) {
        this.f9915a = abstractC2941j;
        this.f9916b = c2971z;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        String scheme = c2964v.f9956c.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: e */
    public int mo2802e() {
        return 2;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: f */
    public AbstractC2968x.C2969a mo2799f(C2964v c2964v, int i) throws IOException {
        C4094d c4094d;
        C2953s.EnumC2958d enumC2958d = C2953s.EnumC2958d.NETWORK;
        C2953s.EnumC2958d enumC2958d2 = C2953s.EnumC2958d.DISK;
        if (i != 0) {
            if ((i & 4) != 0) {
                c4094d = C4094d.f12857n;
            } else {
                C4094d.C4095a c4095a = new C4094d.C4095a();
                if (!((i & 1) == 0)) {
                    c4095a.f12871a = true;
                }
                if (!((i & 2) == 0)) {
                    c4095a.f12872b = true;
                }
                c4094d = new C4094d(c4095a);
            }
        } else {
            c4094d = null;
        }
        C4135y.C4136a c4136a = new C4135y.C4136a();
        c4136a.m1358d(c2964v.f9956c.toString());
        if (c4094d != null) {
            String c4094d2 = c4094d.toString();
            if (c4094d2.isEmpty()) {
                c4136a.f13049c.m1392d("Cache-Control");
            } else {
                c4136a.m1360b("Cache-Control", c4094d2);
            }
        }
        C4135y m1361a = c4136a.m1361a();
        C4128v c4128v = (C4128v) ((C2952r) this.f9915a).f9919a;
        Objects.requireNonNull(c4128v);
        C4132x c4132x = new C4132x(c4128v, m1361a, false);
        c4132x.f13034d = ((C4119p) c4128v.f12982f).f12947a;
        C4084b0 m1367a = c4132x.m1367a();
        AbstractC4096d0 abstractC4096d0 = m1367a.f12803g;
        int i2 = m1367a.f12799c;
        if (!(i2 >= 200 && i2 < 300)) {
            abstractC4096d0.close();
            throw new C2951b(m1367a.f12799c, 0);
        }
        C2953s.EnumC2958d enumC2958d3 = m1367a.f12805i == null ? enumC2958d : enumC2958d2;
        if (enumC2958d3 == enumC2958d2 && abstractC4096d0.mo925d() == 0) {
            abstractC4096d0.close();
            throw new C2950a("Received response with 0 content-length header.");
        }
        if (enumC2958d3 == enumC2958d && abstractC4096d0.mo925d() > 0) {
            C2971z c2971z = this.f9916b;
            long mo925d = abstractC4096d0.mo925d();
            Handler handler = c2971z.f9989b;
            handler.sendMessage(handler.obtainMessage(4, Long.valueOf(mo925d)));
        }
        return new AbstractC2968x.C2969a(abstractC4096d0.mo923l(), enumC2958d3);
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: g */
    public boolean mo2801g(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }
}
