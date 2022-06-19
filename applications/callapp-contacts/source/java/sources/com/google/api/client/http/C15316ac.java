package com.google.api.client.http;

import com.google.common.base.C15391m;
import com.google.common.collect.AbstractC15549v;
import io.opencensus.p504a.p505a.p506a.C17991a;
import io.opencensus.trace.AbstractC18027l;
import io.opencensus.trace.AbstractC18029m;
import io.opencensus.trace.AbstractC18035o;
import io.opencensus.trace.AbstractC18054w;
import io.opencensus.trace.C18023j;
import io.opencensus.trace.C18045s;
import io.opencensus.trace.C18060y;
import io.opencensus.trace.propagation.AbstractC18039a;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.http.ac */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/ac.class */
public class C15316ac {

    /* renamed from: b */
    static volatile AbstractC18039a f55314b;

    /* renamed from: c */
    static volatile AbstractC18039a.AbstractC18042b f55315c;

    /* renamed from: d */
    private static final Logger f55316d = Logger.getLogger(C15316ac.class.getName());

    /* renamed from: a */
    public static final String f55313a = "Sent." + C15340q.class.getName() + ".execute";

    /* renamed from: e */
    private static final AbstractC18054w f55317e = C18060y.m4491a();

    /* renamed from: f */
    private static final AtomicLong f55318f = new AtomicLong();

    /* renamed from: g */
    private static volatile boolean f55319g = true;

    static {
        f55314b = null;
        f55315c = null;
        try {
            f55314b = new C17991a();
            f55315c = new AbstractC18039a.AbstractC18042b<C15335n>() { // from class: com.google.api.client.http.ac.1
                @Override // io.opencensus.trace.propagation.AbstractC18039a.AbstractC18042b
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ void mo4515a(C15335n c15335n, String str, String str2) {
                    c15335n.set(str, str2);
                }
            };
        } catch (Exception e) {
            f55316d.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e);
        }
        try {
            C18060y.m4489b().mo4559a().mo4558a(AbstractC15549v.m8728a(f55313a));
        } catch (Exception e2) {
            f55316d.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e2);
        }
    }

    private C15316ac() {
    }

    /* renamed from: a */
    public static AbstractC18027l m9132a(Integer num) {
        AbstractC18027l.AbstractC18028a m4546c = AbstractC18027l.m4546c();
        if (num == null) {
            m4546c.mo4544a(C18045s.f62953c);
        } else if (!C15345v.m9005a(num.intValue())) {
            int intValue = num.intValue();
            if (intValue == 400) {
                m4546c.mo4544a(C18045s.f62954d);
            } else if (intValue == 401) {
                m4546c.mo4544a(C18045s.f62959i);
            } else if (intValue == 403) {
                m4546c.mo4544a(C18045s.f62958h);
            } else if (intValue == 404) {
                m4546c.mo4544a(C18045s.f62956f);
            } else if (intValue == 412) {
                m4546c.mo4544a(C18045s.f62961k);
            } else if (intValue != 500) {
                m4546c.mo4544a(C18045s.f62953c);
            } else {
                m4546c.mo4544a(C18045s.f62966p);
            }
        } else {
            m4546c.mo4544a(C18045s.f62951a);
        }
        return m4546c.mo4545a();
    }

    /* renamed from: a */
    public static AbstractC18054w m9136a() {
        return f55317e;
    }

    /* renamed from: a */
    public static void m9135a(AbstractC18035o abstractC18035o, long j) {
        m9134a(abstractC18035o, j, AbstractC18029m.EnumC18031b.SENT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m9134a(AbstractC18035o abstractC18035o, long j, AbstractC18029m.EnumC18031b enumC18031b) {
        C15391m.m8942a(abstractC18035o != null, "span should not be null.");
        char c = j;
        if (j < 0) {
            c = 0;
        }
        abstractC18035o.mo4523a(AbstractC18029m.m4542a(enumC18031b, f55318f.getAndIncrement()).mo4535b(c).mo4538a());
    }

    /* renamed from: a */
    public static void m9133a(AbstractC18035o abstractC18035o, C15335n c15335n) {
        C15391m.m8942a(abstractC18035o != null, "span should not be null.");
        C15391m.m8942a(c15335n != null, "headers should not be null.");
        if (f55314b == null || f55315c == null || abstractC18035o.equals(C18023j.f62933a)) {
            return;
        }
        f55314b.mo4516a(abstractC18035o.f62941c, c15335n, f55315c);
    }

    /* renamed from: b */
    public static void m9130b(AbstractC18035o abstractC18035o, long j) {
        m9134a(abstractC18035o, j, AbstractC18029m.EnumC18031b.RECEIVED);
    }

    /* renamed from: b */
    public static boolean m9131b() {
        return f55319g;
    }
}
