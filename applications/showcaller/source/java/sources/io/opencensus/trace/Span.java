package io.opencensus.trace;

import io.opencensus.trace.p336v.C9544a;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;
import p321d.p323b.p327b.C9475b;
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/Span.class */
public abstract class Span {

    /* renamed from: a */
    private static final Map<String, AbstractC9493a> f40376a = Collections.emptyMap();

    /* renamed from: b */
    private static final Set<Options> f40377b = Collections.unmodifiableSet(EnumSet.noneOf(Options.class));

    /* renamed from: c */
    private final C9516m f40378c;

    /* renamed from: d */
    private final Set<Options> f40379d;

    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/Span$Options.class */
    public enum Options {
        RECORD_EVENTS
    }

    public Span(C9516m c9516m, EnumSet<Options> enumSet) {
        this.f40378c = (C9516m) C9475b.m512b(c9516m, "context");
        Set<Options> unmodifiableSet = enumSet == null ? f40377b : Collections.unmodifiableSet(EnumSet.copyOf((EnumSet) enumSet));
        this.f40379d = unmodifiableSet;
        C9475b.m513a(!c9516m.m422c().m406d() || unmodifiableSet.contains(Options.RECORD_EVENTS), "Span is sampled, but does not have RECORD_EVENTS set.");
    }

    /* renamed from: a */
    public final void m475a(String str) {
        C9475b.m512b(str, "description");
        mo440b(str, f40376a);
    }

    /* renamed from: b */
    public abstract void mo440b(String str, Map<String, AbstractC9493a> map);

    @Deprecated
    /* renamed from: c */
    public void m474c(Map<String, AbstractC9493a> map) {
        mo435j(map);
    }

    /* renamed from: d */
    public void mo439d(MessageEvent messageEvent) {
        C9475b.m512b(messageEvent, "messageEvent");
        mo438e(C9544a.m382b(messageEvent));
    }

    @Deprecated
    /* renamed from: e */
    public void mo438e(NetworkEvent networkEvent) {
        mo439d(C9544a.m383a(networkEvent));
    }

    /* renamed from: f */
    public final void m473f() {
        mo437g(AbstractC9512k.f40450a);
    }

    /* renamed from: g */
    public abstract void mo437g(AbstractC9512k abstractC9512k);

    /* renamed from: h */
    public final C9516m m472h() {
        return this.f40378c;
    }

    /* renamed from: i */
    public void mo436i(String str, AbstractC9493a abstractC9493a) {
        C9475b.m512b(str, "key");
        C9475b.m512b(abstractC9493a, "value");
        mo435j(Collections.singletonMap(str, abstractC9493a));
    }

    /* renamed from: j */
    public void mo435j(Map<String, AbstractC9493a> map) {
        C9475b.m512b(map, "attributes");
        m474c(map);
    }
}
