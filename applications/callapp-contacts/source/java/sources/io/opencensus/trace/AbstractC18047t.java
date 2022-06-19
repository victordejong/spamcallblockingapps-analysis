package io.opencensus.trace;

import io.opencensus.trace.p508a.AbstractC18001b;
/* renamed from: io.opencensus.trace.t */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/t.class */
public abstract class AbstractC18047t {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.opencensus.trace.t$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/t$a.class */
    public static final class C18049a extends AbstractC18047t {

        /* renamed from: a */
        private final AbstractC18001b f62972a;

        private C18049a() {
            this.f62972a = new AbstractC18001b.C18003a();
        }

        @Override // io.opencensus.trace.AbstractC18047t
        /* renamed from: a */
        public final AbstractC18054w mo4508a() {
            return AbstractC18054w.m4499a();
        }

        @Override // io.opencensus.trace.AbstractC18047t
        /* renamed from: b */
        public final AbstractC18001b mo4507b() {
            return this.f62972a;
        }
    }

    /* renamed from: c */
    public static AbstractC18047t m4509c() {
        return new C18049a();
    }

    /* renamed from: a */
    public abstract AbstractC18054w mo4508a();

    /* renamed from: b */
    public abstract AbstractC18001b mo4507b();
}
