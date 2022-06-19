package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import com.google.common.collect.ImmutableList;
import io.opencensus.trace.AbstractC9512k;
import io.opencensus.trace.AbstractC9529r;
import io.opencensus.trace.C9508i;
import io.opencensus.trace.C9535t;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.Span;
import io.opencensus.trace.Status;
import io.opencensus.trace.propagation.AbstractC9522a;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import p321d.p323b.p324a.p325a.p326a.C9473b;
/* renamed from: com.google.api.client.http.c0 */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/c0.class */
public class C8620c0 {

    /* renamed from: a */
    private static final Logger f38307a = Logger.getLogger(C8620c0.class.getName());

    /* renamed from: b */
    public static final String f38308b = "Sent." + C8655q.class.getName() + ".execute";

    /* renamed from: c */
    private static final AbstractC9529r f38309c = C9535t.m392b();

    /* renamed from: d */
    private static final AtomicLong f38310d = new AtomicLong();

    /* renamed from: e */
    private static volatile boolean f38311e = true;

    /* renamed from: f */
    static volatile AbstractC9522a f38312f;

    /* renamed from: g */
    static volatile AbstractC9522a.AbstractC9525c f38313g;

    /* renamed from: com.google.api.client.http.c0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/c0$a.class */
    static final class C8621a extends AbstractC9522a.AbstractC9525c<C8650n> {
        C8621a() {
        }

        /* renamed from: b */
        public void mo410a(C8650n c8650n, String str, String str2) {
            c8650n.set(str, str2);
        }
    }

    static {
        f38312f = null;
        f38313g = null;
        try {
            f38312f = C9473b.m515a();
            f38313g = new C8621a();
        } catch (Exception e) {
            f38307a.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e);
        }
        try {
            C9535t.m393a().mo389a().mo387b(ImmutableList.m2749of(f38308b));
        } catch (Exception e2) {
            f38307a.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e2);
        }
    }

    private C8620c0() {
    }

    /* renamed from: a */
    public static AbstractC9512k m3218a(Integer num) {
        AbstractC9512k.AbstractC9513a m432a = AbstractC9512k.m432a();
        if (num == null) {
            m432a.mo428b(Status.f40385d);
        } else if (!C8660v.m3055b(num.intValue())) {
            int intValue = num.intValue();
            if (intValue == 400) {
                m432a.mo428b(Status.f40386e);
            } else if (intValue == 401) {
                m432a.mo428b(Status.f40391j);
            } else if (intValue == 403) {
                m432a.mo428b(Status.f40390i);
            } else if (intValue == 404) {
                m432a.mo428b(Status.f40388g);
            } else if (intValue == 412) {
                m432a.mo428b(Status.f40393l);
            } else if (intValue != 500) {
                m432a.mo428b(Status.f40385d);
            } else {
                m432a.mo428b(Status.f40398q);
            }
        } else {
            m432a.mo428b(Status.f40383b);
        }
        return m432a.mo429a();
    }

    /* renamed from: b */
    public static AbstractC9529r m3217b() {
        return f38309c;
    }

    /* renamed from: c */
    public static boolean m3216c() {
        return f38311e;
    }

    /* renamed from: d */
    public static void m3215d(Span span, C8650n c8650n) {
        C8731w.m2838b(span != null, "span should not be null.");
        C8731w.m2838b(c8650n != null, "headers should not be null.");
        if (f38312f == null || f38313g == null || span.equals(C9508i.f40446e)) {
            return;
        }
        f38312f.mo411a(span.m472h(), c8650n, f38313g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    static void m3214e(Span span, long j, MessageEvent.Type type) {
        C8731w.m2838b(span != null, "span should not be null.");
        char c = j;
        if (j < 0) {
            c = 0;
        }
        span.mo439d(MessageEvent.m477a(type, f38310d.getAndIncrement()).mo457d(c).mo460a());
    }

    /* renamed from: f */
    public static void m3213f(Span span, long j) {
        m3214e(span, j, MessageEvent.Type.RECEIVED);
    }

    /* renamed from: g */
    public static void m3212g(Span span, long j) {
        m3214e(span, j, MessageEvent.Type.SENT);
    }
}
