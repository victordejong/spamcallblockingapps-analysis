package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p115h6.C3013b;
import p136j6.C3283g;
import p136j6.C3284h;
import p169m6.C3652e;
import p180n6.C3729e;
import p204p9.AbstractC4081a0;
import p204p9.AbstractC4096d0;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4100f;
import p204p9.C4084b0;
import p204p9.C4113m;
import p204p9.C4123s;
import p204p9.C4127u;
import p204p9.C4132x;
import p204p9.C4135y;
import p204p9.C4137z;
import p290x9.C4945f;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfOkHttpClient.class */
public class FirebasePerfOkHttpClient {
    /* renamed from: a */
    public static void m4463a(C4084b0 c4084b0, C3013b c3013b, long j, long j2) throws IOException {
        C4135y c4135y = c4084b0.f12797a;
        if (c4135y == null) {
            return;
        }
        c3013b.m2738m(c4135y.f13041a.m1375q().toString());
        c3013b.m2746c(c4135y.f13042b);
        AbstractC4081a0 abstractC4081a0 = c4135y.f13044d;
        if (abstractC4081a0 != null) {
            long j3 = ((C4137z) abstractC4081a0).f13053b;
            if (j3 != -1) {
                c3013b.m2744f(j3);
            }
        }
        AbstractC4096d0 abstractC4096d0 = c4084b0.f12803g;
        if (abstractC4096d0 != null) {
            long mo925d = abstractC4096d0.mo925d();
            if (mo925d != -1) {
                c3013b.m2741i(mo925d);
            }
            C4127u mo924k = abstractC4096d0.mo924k();
            if (mo924k != null) {
                c3013b.m2742h(mo924k.f12974a);
            }
        }
        c3013b.m2745e(c4084b0.f12799c);
        c3013b.m2743g(j);
        c3013b.m2740j(j2);
        c3013b.m2747b();
    }

    @Keep
    public static void enqueue(AbstractC4097e abstractC4097e, AbstractC4100f abstractC4100f) {
        C3729e c3729e = new C3729e();
        C3283g c3283g = new C3283g(abstractC4100f, C3652e.f11967s, c3729e, c3729e.f12119a);
        C4132x c4132x = (C4132x) abstractC4097e;
        synchronized (c4132x) {
            if (c4132x.f13037g) {
                throw new IllegalStateException("Already Executed");
            }
            c4132x.f13037g = true;
        }
        c4132x.f13032b.f13805c = C4945f.f15078a.mo212j("response.body().close()");
        Objects.requireNonNull(c4132x.f13034d);
        C4113m c4113m = c4132x.f13031a.f12977a;
        C4132x.C4134b c4134b = new C4132x.C4134b(c3283g);
        synchronized (c4113m) {
            c4113m.f12942b.add(c4134b);
        }
        c4113m.m1406b();
    }

    @Keep
    public static C4084b0 execute(AbstractC4097e abstractC4097e) throws IOException {
        C3013b c3013b = new C3013b(C3652e.f11967s);
        long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        long nanoTime = System.nanoTime();
        try {
            C4084b0 m1367a = ((C4132x) abstractC4097e).m1367a();
            m4463a(m1367a, c3013b, micros, TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime));
            return m1367a;
        } catch (IOException e) {
            C4135y c4135y = ((C4132x) abstractC4097e).f13035e;
            if (c4135y != null) {
                C4123s c4123s = c4135y.f13041a;
                if (c4123s != null) {
                    c3013b.m2738m(c4123s.m1375q().toString());
                }
                String str = c4135y.f13042b;
                if (str != null) {
                    c3013b.m2746c(str);
                }
            }
            c3013b.m2743g(micros);
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime));
            C3284h.m2427c(c3013b);
            throw e;
        }
    }
}
