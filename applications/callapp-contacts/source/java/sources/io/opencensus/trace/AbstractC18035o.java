package io.opencensus.trace;

import io.opencensus.p507b.C17993b;
import io.opencensus.trace.AbstractC18029m;
import io.opencensus.trace.AbstractC18032n;
import io.opencensus.trace.C18017f;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* renamed from: io.opencensus.trace.o */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/o.class */
public abstract class AbstractC18035o {

    /* renamed from: b */
    public static final Map<String, AbstractC17997a> f62938b = Collections.emptyMap();

    /* renamed from: d */
    private static final Set<EnumC18036a> f62939d = Collections.unmodifiableSet(EnumSet.noneOf(EnumC18036a.class));

    /* renamed from: a */
    private final Set<EnumC18036a> f62940a;

    /* renamed from: c */
    public final C18043q f62941c;

    /* renamed from: io.opencensus.trace.o$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/o$a.class */
    public enum EnumC18036a {
        RECORD_EVENTS
    }

    public AbstractC18035o(C18043q c18043q, EnumSet<EnumC18036a> enumSet) {
        this.f62941c = (C18043q) C17993b.m4562a(c18043q, "context");
        Set<EnumC18036a> unmodifiableSet = enumSet == null ? f62939d : Collections.unmodifiableSet(EnumSet.copyOf((EnumSet) enumSet));
        this.f62940a = unmodifiableSet;
        C17993b.m4561a(!c18043q.f62945a.m4502c() || unmodifiableSet.contains(EnumC18036a.RECORD_EVENTS), "Span is sampled, but does not have RECORD_EVENTS set.");
    }

    /* renamed from: a */
    public abstract void mo4524a(AbstractC18027l abstractC18027l);

    /* renamed from: a */
    public void mo4523a(AbstractC18029m abstractC18029m) {
        C17993b.m4562a(abstractC18029m, "messageEvent");
        C17993b.m4562a(abstractC18029m, "event");
        AbstractC18029m abstractC18029m2 = abstractC18029m;
        AbstractC18032n.EnumC18034b enumC18034b = abstractC18029m2.mo4543a() == AbstractC18029m.EnumC18031b.RECEIVED ? AbstractC18032n.EnumC18034b.RECV : AbstractC18032n.EnumC18034b.SENT;
        long mo4541b = abstractC18029m2.mo4541b();
        C18017f.C18019a c18019a = new C18017f.C18019a();
        AbstractC18032n.EnumC18034b enumC18034b2 = (AbstractC18032n.EnumC18034b) C17993b.m4562a(enumC18034b, "type");
        Objects.requireNonNull(enumC18034b2, "Null type");
        c18019a.f62925a = enumC18034b2;
        mo4522a(c18019a.mo4527a(mo4541b).mo4526b(0L).mo4525c(0L).mo4526b(abstractC18029m2.mo4540c()).mo4525c(abstractC18029m2.mo4539d()).mo4528a());
    }

    @Deprecated
    /* renamed from: a */
    public void mo4522a(AbstractC18032n abstractC18032n) {
        C17993b.m4562a(abstractC18032n, "event");
        AbstractC18032n abstractC18032n2 = abstractC18032n;
        mo4523a(AbstractC18029m.m4542a(abstractC18032n2.mo4532b() == AbstractC18032n.EnumC18034b.RECV ? AbstractC18029m.EnumC18031b.RECEIVED : AbstractC18029m.EnumC18031b.SENT, abstractC18032n2.mo4531c()).mo4535b(abstractC18032n2.mo4530d()).mo4534c(abstractC18032n2.mo4529e()).mo4538a());
    }

    /* renamed from: a */
    public void mo4521a(String str, AbstractC17997a abstractC17997a) {
        C17993b.m4562a(str, "key");
        C17993b.m4562a(abstractC17997a, "value");
        mo4519a(Collections.singletonMap(str, abstractC17997a));
    }

    /* renamed from: a */
    public abstract void mo4520a(String str, Map<String, AbstractC17997a> map);

    /* renamed from: a */
    public void mo4519a(Map<String, AbstractC17997a> map) {
        C17993b.m4562a(map, "attributes");
        mo4519a(map);
    }
}
