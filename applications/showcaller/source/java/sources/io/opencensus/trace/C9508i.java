package io.opencensus.trace;

import java.util.Map;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.i */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/i.class */
public final class C9508i extends Span {

    /* renamed from: e */
    public static final C9508i f40446e = new C9508i();

    private C9508i() {
        super(C9516m.f40452b, null);
    }

    @Override // io.opencensus.trace.Span
    /* renamed from: b */
    public void mo440b(String str, Map<String, AbstractC9493a> map) {
        C9475b.m512b(str, "description");
        C9475b.m512b(map, "attributes");
    }

    @Override // io.opencensus.trace.Span
    /* renamed from: d */
    public void mo439d(MessageEvent messageEvent) {
        C9475b.m512b(messageEvent, "messageEvent");
    }

    @Override // io.opencensus.trace.Span
    @Deprecated
    /* renamed from: e */
    public void mo438e(NetworkEvent networkEvent) {
    }

    @Override // io.opencensus.trace.Span
    /* renamed from: g */
    public void mo437g(AbstractC9512k abstractC9512k) {
        C9475b.m512b(abstractC9512k, "options");
    }

    @Override // io.opencensus.trace.Span
    /* renamed from: i */
    public void mo436i(String str, AbstractC9493a abstractC9493a) {
        C9475b.m512b(str, "key");
        C9475b.m512b(abstractC9493a, "value");
    }

    @Override // io.opencensus.trace.Span
    /* renamed from: j */
    public void mo435j(Map<String, AbstractC9493a> map) {
        C9475b.m512b(map, "attributes");
    }

    public String toString() {
        return "BlankSpan";
    }
}
