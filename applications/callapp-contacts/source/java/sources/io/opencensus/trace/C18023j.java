package io.opencensus.trace;

import io.opencensus.p507b.C17993b;
import java.util.Map;
/* renamed from: io.opencensus.trace.j */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/j.class */
public final class C18023j extends AbstractC18035o {

    /* renamed from: a */
    public static final C18023j f62933a = new C18023j();

    private C18023j() {
        super(C18043q.f62943b, null);
    }

    @Override // io.opencensus.trace.AbstractC18035o
    /* renamed from: a */
    public final void mo4524a(AbstractC18027l abstractC18027l) {
        C17993b.m4562a(abstractC18027l, "options");
    }

    @Override // io.opencensus.trace.AbstractC18035o
    /* renamed from: a */
    public final void mo4523a(AbstractC18029m abstractC18029m) {
        C17993b.m4562a(abstractC18029m, "messageEvent");
    }

    @Override // io.opencensus.trace.AbstractC18035o
    @Deprecated
    /* renamed from: a */
    public final void mo4522a(AbstractC18032n abstractC18032n) {
    }

    @Override // io.opencensus.trace.AbstractC18035o
    /* renamed from: a */
    public final void mo4521a(String str, AbstractC17997a abstractC17997a) {
        C17993b.m4562a(str, "key");
        C17993b.m4562a(abstractC17997a, "value");
    }

    @Override // io.opencensus.trace.AbstractC18035o
    /* renamed from: a */
    public final void mo4520a(String str, Map<String, AbstractC17997a> map) {
        C17993b.m4562a(str, "description");
        C17993b.m4562a(map, "attributes");
    }

    @Override // io.opencensus.trace.AbstractC18035o
    /* renamed from: a */
    public final void mo4519a(Map<String, AbstractC17997a> map) {
        C17993b.m4562a(map, "attributes");
    }

    public final String toString() {
        return "BlankSpan";
    }
}
