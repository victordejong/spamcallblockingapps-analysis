package io.opencensus.trace.p335u;

import io.opencensus.trace.Status;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.u.c */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/u/c.class */
public abstract class AbstractC9540c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.opencensus.trace.u.c$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/u/c$b.class */
    public static final class C9542b extends AbstractC9540c {

        /* renamed from: a */
        private static final AbstractC9543c f40476a = AbstractC9543c.m386a(Collections.emptyMap(), Collections.emptyMap());

        /* renamed from: b */
        private final Set<String> f40477b;

        private C9542b() {
            this.f40477b = new HashSet();
        }

        @Override // io.opencensus.trace.p335u.AbstractC9540c
        /* renamed from: b */
        public void mo387b(Collection<String> collection) {
            C9475b.m512b(collection, "spanNames");
            synchronized (this.f40477b) {
                this.f40477b.addAll(collection);
            }
        }
    }

    /* renamed from: io.opencensus.trace.u.c$c */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/u/c$c.class */
    public static abstract class AbstractC9543c {
        /* renamed from: a */
        public static AbstractC9543c m386a(Map<?, Integer> map, Map<Status.CanonicalCode, Integer> map2) {
            return new C9536a(Collections.unmodifiableMap(new HashMap((Map) C9475b.m512b(map, "numbersOfLatencySampledSpans"))), Collections.unmodifiableMap(new HashMap((Map) C9475b.m512b(map2, "numbersOfErrorSampledSpans"))));
        }

        /* renamed from: b */
        public abstract Map<Status.CanonicalCode, Integer> mo385b();

        /* renamed from: c */
        public abstract Map<?, Integer> mo384c();
    }

    protected AbstractC9540c() {
    }

    /* renamed from: a */
    public static AbstractC9540c m388a() {
        return new C9542b();
    }

    @Deprecated
    /* renamed from: b */
    public abstract void mo387b(Collection<String> collection);
}
