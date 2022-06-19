package io.opencensus.trace.p508a;

import io.opencensus.p507b.C17993b;
import io.opencensus.trace.C18045s;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: io.opencensus.trace.a.c */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/c.class */
public abstract class AbstractC18004c {

    /* renamed from: io.opencensus.trace.a.c$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/c$a.class */
    static final class C18006a extends AbstractC18004c {

        /* renamed from: a */
        private static final AbstractC18007b f62903a = new C18000a(Collections.unmodifiableMap(new HashMap((Map) C17993b.m4562a(Collections.emptyMap(), "numbersOfLatencySampledSpans"))), Collections.unmodifiableMap(new HashMap((Map) C17993b.m4562a(Collections.emptyMap(), "numbersOfErrorSampledSpans"))));

        /* renamed from: b */
        private final Set<String> f62904b;

        /* JADX INFO: Access modifiers changed from: private */
        public C18006a() {
            this.f62904b = new HashSet();
        }

        @Override // io.opencensus.trace.p508a.AbstractC18004c
        /* renamed from: a */
        public final void mo4558a(Collection<String> collection) {
            C17993b.m4562a(collection, "spanNames");
            synchronized (this.f62904b) {
                this.f62904b.addAll(collection);
            }
        }
    }

    /* renamed from: io.opencensus.trace.a.c$b */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/c$b.class */
    public static abstract class AbstractC18007b {
        /* renamed from: a */
        public abstract Map<Object, Integer> mo4557a();

        /* renamed from: b */
        public abstract Map<C18045s.EnumC18046a, Integer> mo4556b();
    }

    protected AbstractC18004c() {
    }

    @Deprecated
    /* renamed from: a */
    public abstract void mo4558a(Collection<String> collection);
}
