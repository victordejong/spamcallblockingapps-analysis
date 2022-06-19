package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import e.m.d.z.j.b;
import e.m.d.z.k.h;
import e.m.d.z.m.k;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import u3.a0;
import u3.c0;
import u3.f;
import u3.g;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.l0;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfOkHttpClient.class */
public class FirebasePerfOkHttpClient {
    /* renamed from: a */
    public static void m38303a(k0 k0Var, b bVar, long j, long j2) throws IOException {
        g0 g0Var = k0Var.b;
        if (g0Var == null) {
            return;
        }
        bVar.l(g0Var.b.k().toString());
        bVar.c(g0Var.c);
        j0 j0Var = g0Var.e;
        if (j0Var != null) {
            long a = j0Var.a();
            if (a != -1) {
                bVar.e(a);
            }
        }
        l0 l0Var = k0Var.h;
        if (l0Var != null) {
            long k = l0Var.k();
            if (k != -1) {
                bVar.h(k);
            }
            c0 l = l0Var.l();
            if (l != null) {
                bVar.g(l.a);
            }
        }
        bVar.d(k0Var.e);
        bVar.f(j);
        bVar.i(j2);
        bVar.b();
    }

    @Keep
    public static void enqueue(f fVar, g gVar) {
        Timer timer = new Timer();
        fVar.M1(new e.m.d.z.k.g(gVar, k.s, timer, timer.f7077a));
    }

    @Keep
    public static k0 execute(f fVar) throws IOException {
        b bVar = new b(k.s);
        long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        long nanoTime = System.nanoTime();
        try {
            k0 execute = fVar.execute();
            m38303a(execute, bVar, micros, TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime));
            return execute;
        } catch (IOException e) {
            g0 request = fVar.request();
            if (request != null) {
                a0 a0Var = request.b;
                if (a0Var != null) {
                    bVar.l(a0Var.k().toString());
                }
                String str = request.c;
                if (str != null) {
                    bVar.c(str);
                }
            }
            bVar.f(micros);
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime));
            h.c(bVar);
            throw e;
        }
    }
}
