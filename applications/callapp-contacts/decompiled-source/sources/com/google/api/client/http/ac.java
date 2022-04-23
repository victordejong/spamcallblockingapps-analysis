package com.google.api.client.http;

import com.google.common.collect.v;
import io.opencensus.trace.j;
import io.opencensus.trace.l;
import io.opencensus.trace.m;
import io.opencensus.trace.o;
import io.opencensus.trace.propagation.a;
import io.opencensus.trace.s;
import io.opencensus.trace.w;
import io.opencensus.trace.y;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ac.class */
public class ac {

    /* renamed from: b  reason: collision with root package name */
    static volatile a f31791b;

    /* renamed from: c  reason: collision with root package name */
    static volatile a.b f31792c;

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f31793d = Logger.getLogger(ac.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public static final String f31790a = "Sent." + q.class.getName() + ".execute";
    private static final w e = y.a();
    private static final AtomicLong f = new AtomicLong();
    private static volatile boolean g = true;

    static {
        f31791b = null;
        f31792c = null;
        try {
            f31791b = new io.opencensus.a.a.a.a();
            f31792c = new a.b<n>() { // from class: com.google.api.client.http.ac.1
                @Override // io.opencensus.trace.propagation.a.b
                public final /* bridge */ /* synthetic */ void a(n nVar, String str, String str2) {
                    nVar.set(str, str2);
                }
            };
        } catch (Exception e2) {
            f31793d.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e2);
        }
        try {
            y.b().a().a(v.a(f31790a));
        } catch (Exception e3) {
            f31793d.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e3);
        }
    }

    private ac() {
    }

    public static l a(Integer num) {
        l.a c2 = l.c();
        if (num == null) {
            c2.a(s.f36332c);
        } else if (!v.a(num.intValue())) {
            int intValue = num.intValue();
            if (intValue == 400) {
                c2.a(s.f36333d);
            } else if (intValue == 401) {
                c2.a(s.i);
            } else if (intValue == 403) {
                c2.a(s.h);
            } else if (intValue == 404) {
                c2.a(s.f);
            } else if (intValue == 412) {
                c2.a(s.k);
            } else if (intValue != 500) {
                c2.a(s.f36332c);
            } else {
                c2.a(s.p);
            }
        } else {
            c2.a(s.f36330a);
        }
        return c2.a();
    }

    public static w a() {
        return e;
    }

    public static void a(o oVar, long j) {
        a(oVar, j, m.b.SENT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2 */
    private static void a(o oVar, long j, m.b bVar) {
        com.google.common.base.m.a(oVar != null, "span should not be null.");
        long j2 = j;
        if (j < 0) {
            j2 = 0;
        }
        oVar.a(m.a(bVar, f.getAndIncrement()).b(j2).a());
    }

    public static void a(o oVar, n nVar) {
        boolean z = true;
        com.google.common.base.m.a(oVar != null, "span should not be null.");
        if (nVar == null) {
            z = false;
        }
        com.google.common.base.m.a(z, "headers should not be null.");
        if (f31791b != null && f31792c != null && !oVar.equals(j.f36314a)) {
            f31791b.a(oVar.f36322c, nVar, f31792c);
        }
    }

    public static void b(o oVar, long j) {
        a(oVar, j, m.b.RECEIVED);
    }

    public static boolean b() {
        return g;
    }
}
