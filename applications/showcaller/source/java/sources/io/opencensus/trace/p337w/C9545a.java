package io.opencensus.trace.p337w;

import io.opencensus.trace.C9508i;
import io.opencensus.trace.Span;
import p321d.p322a.C9458b;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.w.a */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/w/a.class */
public final class C9545a {

    /* renamed from: a */
    private static final C9458b.C9462d<Span> f40478a = C9458b.m541y("opencensus-trace-span-key");

    /* renamed from: a */
    public static Span m381a(C9458b c9458b) {
        Span m532a = f40478a.m532a((C9458b) C9475b.m512b(c9458b, "context"));
        C9508i c9508i = m532a;
        if (m532a == null) {
            c9508i = C9508i.f40446e;
        }
        return c9508i;
    }

    /* renamed from: b */
    public static C9458b m380b(C9458b c9458b, Span span) {
        return ((C9458b) C9475b.m512b(c9458b, "context")).m545I(f40478a, span);
    }
}
