package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.d;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/n.class */
public abstract class n extends m {

    /* renamed from: b  reason: collision with root package name */
    final v f38451b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.b.b.a f38452c;

    /* renamed from: d  reason: collision with root package name */
    private final f f38453d;
    private final d e;
    private a.l f;
    private h g;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a.class */
    static final class a extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.a, at> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ at invoke(kotlin.reflect.jvm.internal.impl.c.a aVar) {
            kotlin.reflect.jvm.internal.impl.c.a it2 = aVar;
            p.d(it2, "it");
            f fVar = n.this.f38453d;
            if (fVar != null) {
                return fVar;
            }
            at NO_SOURCE = at.f37401a;
            p.b(NO_SOURCE, "NO_SOURCE");
            return NO_SOURCE;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b.class */
    static final class b extends r implements Function0<Collection<? extends e>> {
        b() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0066 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0028 A[SYNTHETIC] */
        @Override // kotlin.jvm.functions.Function0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            /*
                r5 = this;
                r0 = r5
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.n r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.n.this
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.v r0 = r0.f38451b
                java.util.Map<kotlin.reflect.jvm.internal.impl.c.a, kotlin.reflect.jvm.internal.impl.b.a$b> r0 = r0.f38482a
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
            L_0x0028:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0071
                r0 = r6
                java.lang.Object r0 = r0.next()
                r8 = r0
                r0 = r8
                kotlin.reflect.jvm.internal.impl.c.a r0 = (kotlin.reflect.jvm.internal.impl.c.a) r0
                r9 = r0
                r0 = r9
                boolean r0 = r0.e()
                if (r0 != 0) goto L_0x005e
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.h$b r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.f38431a
                r10 = r0
                java.util.Set r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.h.a()
                r1 = r9
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L_0x005e
                r0 = 1
                r11 = r0
                goto L_0x0061
            L_0x005e:
                r0 = 0
                r11 = r0
            L_0x0061:
                r0 = r11
                if (r0 == 0) goto L_0x0028
                r0 = r7
                r1 = r8
                boolean r0 = r0.add(r1)
                goto L_0x0028
            L_0x0071:
                r0 = r7
                java.util.List r0 = (java.util.List) r0
                java.lang.Iterable r0 = (java.lang.Iterable) r0
                r6 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r6
                r3 = 10
                int r2 = kotlin.a.n.a(r2, r3)
                r1.<init>(r2)
                java.util.Collection r0 = (java.util.Collection) r0
                r7 = r0
                r0 = r6
                java.util.Iterator r0 = r0.iterator()
                r6 = r0
            L_0x0091:
                r0 = r6
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x00b0
                r0 = r7
                r1 = r6
                java.lang.Object r1 = r1.next()
                kotlin.reflect.jvm.internal.impl.c.a r1 = (kotlin.reflect.jvm.internal.impl.c.a) r1
                kotlin.reflect.jvm.internal.impl.c.e r1 = r1.c()
                boolean r0 = r0.add(r1)
                goto L_0x0091
            L_0x00b0:
                r0 = r7
                java.util.List r0 = (java.util.List) r0
                java.util.Collection r0 = (java.util.Collection) r0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.n.b.invoke():java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(kotlin.reflect.jvm.internal.impl.c.b fqName, kotlin.reflect.jvm.internal.impl.f.n storageManager, ab module, a.l proto, kotlin.reflect.jvm.internal.impl.b.b.a metadataVersion, f fVar) {
        super(fqName, storageManager, module);
        p.d(fqName, "fqName");
        p.d(storageManager, "storageManager");
        p.d(module, "module");
        p.d(proto, "proto");
        p.d(metadataVersion, "metadataVersion");
        this.f38452c = metadataVersion;
        this.f38453d = fVar;
        a.o oVar = proto.f37052b;
        p.b(oVar, "proto.strings");
        a.n nVar = proto.f37053c;
        p.b(nVar, "proto.qualifiedNames");
        d dVar = new d(oVar, nVar);
        this.e = dVar;
        this.f38451b = new v(proto, dVar, metadataVersion, new a());
        this.f = proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ae
    public final h a() {
        h hVar = this.g;
        if (hVar != null) {
            return hVar;
        }
        p.a("_memberScope");
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.m
    public final void a(j components) {
        p.d(components, "components");
        a.l lVar = this.f;
        if (lVar != null) {
            this.f = null;
            a.k kVar = lVar.f37054d;
            p.b(kVar, "proto.`package`");
            this.g = new i(this, kVar, this.e, this.f38452c, this.f38453d, components, new b());
            return;
        }
        throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.m
    public final /* bridge */ /* synthetic */ g d() {
        return this.f38451b;
    }
}
