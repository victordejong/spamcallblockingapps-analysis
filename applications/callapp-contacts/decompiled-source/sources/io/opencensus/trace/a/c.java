package io.opencensus.trace.a;

import io.opencensus.trace.s;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/c.class */
public abstract class c {

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/c$a.class */
    static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private static final b f36286a = new io.opencensus.trace.a.a(Collections.unmodifiableMap(new HashMap((Map) io.opencensus.b.b.a(Collections.emptyMap(), "numbersOfLatencySampledSpans"))), Collections.unmodifiableMap(new HashMap((Map) io.opencensus.b.b.a(Collections.emptyMap(), "numbersOfErrorSampledSpans"))));

        /* renamed from: b  reason: collision with root package name */
        private final Set<String> f36287b;

        private a() {
            this.f36287b = new HashSet();
        }

        @Override // io.opencensus.trace.a.c
        public final void a(Collection<String> collection) {
            io.opencensus.b.b.a(collection, "spanNames");
            synchronized (this.f36287b) {
                this.f36287b.addAll(collection);
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/c$b.class */
    public static abstract class b {
        public abstract Map<Object, Integer> a();

        public abstract Map<s.a, Integer> b();
    }

    protected c() {
    }

    @Deprecated
    public abstract void a(Collection<String> collection);
}
