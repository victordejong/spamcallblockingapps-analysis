package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18814d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19932i;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/n.class */
public abstract class AbstractC19952n extends AbstractC19951m {

    /* renamed from: b */
    final C19971v f66280b;

    /* renamed from: c */
    private final AbstractC18806a f66281c;

    /* renamed from: d */
    private final AbstractC19906f f66282d;

    /* renamed from: e */
    private final C18814d f66283e;

    /* renamed from: f */
    private C18702a.C18751l f66284f;

    /* renamed from: g */
    private AbstractC19834h f66285g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a.class */
    public static final class C19953a extends AbstractC18526r implements Function1<C18960a, AbstractC19026at> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19953a() {
            super(1);
            AbstractC19952n.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19026at invoke(C18960a c18960a) {
            C18960a it2 = c18960a;
            C18524p.m3840d(it2, "it");
            AbstractC19906f abstractC19906f = AbstractC19952n.this.f66282d;
            if (abstractC19906f == null) {
                AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
                C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
                return NO_SOURCE;
            }
            return abstractC19906f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.n$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b.class */
    public static final class C19954b extends AbstractC18526r implements Function0<Collection<? extends C18966e>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19954b() {
            super(0);
            AbstractC19952n.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0028 A[SYNTHETIC] */
        @Override // kotlin.jvm.functions.Function0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.p545c.C18966e> invoke() {
            /*
                r5 = this;
                r0 = r5
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.n r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19952n.this
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.v r0 = r0.f66280b
                java.util.Map<kotlin.reflect.jvm.internal.impl.c.a, kotlin.reflect.jvm.internal.impl.b.a$b> r0 = r0.f66316a
                java.util.Set r0 = r0.keySet()
                java.util.Collection r0 = (java.util.Collection) r0
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                r6 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r1.<init>()
                java.util.Collection r0 = (java.util.Collection) r0
                r7 = r0
                r0 = r6
                java.util.Iterator r0 = r0.iterator()
                r6 = r0
            L28:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L71
                r0 = r6
                java.lang.Object r0 = r0.next()
                r8 = r0
                r0 = r8
                kotlin.reflect.jvm.internal.impl.c.a r0 = (kotlin.reflect.jvm.internal.impl.p545c.C18960a) r0
                r9 = r0
                r0 = r9
                boolean r0 = r0.m2749e()
                if (r0 != 0) goto L5e
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$b r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19941h.f66239a
                r10 = r0
                java.util.Set r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19941h.m1267a()
                r1 = r9
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L5e
                r0 = 1
                r11 = r0
                goto L61
            L5e:
                r0 = 0
                r11 = r0
            L61:
                r0 = r11
                if (r0 == 0) goto L28
                r0 = r7
                r1 = r8
                boolean r0 = r0.add(r1)
                goto L28
            L71:
                r0 = r7
                java.util.List r0 = (java.util.List) r0
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                r6 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r6
                r3 = 10
                int r2 = kotlin.p518a.C18282n.m4163a(r2, r3)
                r1.<init>(r2)
                java.util.Collection r0 = (java.util.Collection) r0
                r7 = r0
                r0 = r6
                java.util.Iterator r0 = r0.iterator()
                r6 = r0
            L91:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto Lb0
                r0 = r7
                r1 = r6
                java.lang.Object r1 = r1.next()
                kotlin.reflect.jvm.internal.impl.c.a r1 = (kotlin.reflect.jvm.internal.impl.p545c.C18960a) r1
                kotlin.reflect.jvm.internal.impl.c.e r1 = r1.m2751c()
                boolean r0 = r0.add(r1)
                goto L91
            Lb0:
                r0 = r7
                java.util.List r0 = (java.util.List) r0
                java.util.Collection r0 = (java.util.Collection) r0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19952n.C19954b.invoke():java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19952n(C18961b fqName, AbstractC19302n storageManager, AbstractC18999ab module, C18702a.C18751l proto, AbstractC18806a metadataVersion, AbstractC19906f abstractC19906f) {
        super(fqName, storageManager, module);
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(module, "module");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        this.f66281c = metadataVersion;
        this.f66282d = abstractC19906f;
        C18702a.C18765o c18765o = proto.f64020b;
        C18524p.m3843b(c18765o, "proto.strings");
        C18702a.C18757n c18757n = proto.f64021c;
        C18524p.m3843b(c18757n, "proto.qualifiedNames");
        C18814d c18814d = new C18814d(c18765o, c18757n);
        this.f66283e = c18814d;
        this.f66280b = new C19971v(proto, c18814d, metadataVersion, new C19953a());
        this.f66284f = proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae
    /* renamed from: a */
    public final AbstractC19834h mo1257a() {
        AbstractC19834h abstractC19834h = this.f66285g;
        if (abstractC19834h != null) {
            return abstractC19834h;
        }
        C18524p.m3848a("_memberScope");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19951m
    /* renamed from: a */
    public final void mo1256a(C19948j components) {
        C18524p.m3840d(components, "components");
        C18702a.C18751l c18751l = this.f66284f;
        if (c18751l != null) {
            this.f66284f = null;
            C18702a.C18748k c18748k = c18751l.f64022d;
            C18524p.m3843b(c18748k, "proto.`package`");
            this.f66285g = new C19932i(this, c18748k, this.f66283e, this.f66281c, this.f66282d, components, new C19954b());
            return;
        }
        throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19951m
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ AbstractC19940g mo1254d() {
        return this.f66280b;
    }
}
