package io.opencensus.trace;

import io.opencensus.common.AbstractC17995b;
import io.opencensus.p507b.C17993b;
import io.opencensus.trace.AbstractC18037p;
import io.opencensus.trace.C18024k;
/* renamed from: io.opencensus.trace.w */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/w.class */
public abstract class AbstractC18054w {

    /* renamed from: a */
    private static final C18056a f62979a = new C18056a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.w$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/w$a.class */
    public static final class C18056a extends AbstractC18054w {
        private C18056a() {
        }

        @Override // io.opencensus.trace.AbstractC18054w
        /* renamed from: a */
        public final AbstractC18037p mo4497a(String str) {
            return new AbstractC18037p.C18038a(str);
        }
    }

    protected AbstractC18054w() {
    }

    /* renamed from: a */
    public static AbstractC17995b m4498a(AbstractC18035o abstractC18035o) {
        return new C18024k.C18026a((AbstractC18035o) C17993b.m4562a(abstractC18035o, "span"), false);
    }

    /* renamed from: a */
    public static AbstractC18054w m4499a() {
        return f62979a;
    }

    /* renamed from: a */
    public abstract AbstractC18037p mo4497a(String str);
}
