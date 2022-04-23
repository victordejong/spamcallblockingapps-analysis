package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/d.class */
public final class d implements c<c, g<?>> {

    /* renamed from: a  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.a f38345a;

    /* renamed from: b  reason: collision with root package name */
    private final e f38346b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38347a;

        static {
            int[] iArr = new int[b.values().length];
            iArr[b.PROPERTY.ordinal()] = 1;
            iArr[b.PROPERTY_GETTER.ordinal()] = 2;
            iArr[b.PROPERTY_SETTER.ordinal()] = 3;
            f38347a = iArr;
        }
    }

    public d(ab module, ad notFoundClasses, kotlin.reflect.jvm.internal.impl.serialization.a protocol) {
        p.d(module, "module");
        p.d(notFoundClasses, "notFoundClasses");
        p.d(protocol, "protocol");
        this.f38345a = protocol;
        this.f38346b = new e(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final /* synthetic */ g<?> a(w container, a.m proto, KotlinType expectedType) {
        p.d(container, "container");
        p.d(proto, "proto");
        p.d(expectedType, "expectedType");
        a.C0625a.C0627a.b bVar = (a.C0625a.C0627a.b) e.a(proto, this.f38345a.i);
        if (bVar == null) {
            return null;
        }
        return this.f38346b.a(expectedType, bVar, container.f38486a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(a.p proto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        List list = (List) proto.c(this.f38345a.k);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        List<a.C0625a> list2 = zVar;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a aVar : list2) {
            arrayList.add(this.f38346b.a(aVar, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(a.r proto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        List list = (List) proto.c(this.f38345a.l);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        List<a.C0625a> list2 = zVar;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a aVar : list2) {
            arrayList.add(this.f38346b.a(aVar, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(w.a container) {
        p.d(container, "container");
        List list = (List) container.f38489d.c(this.f38345a.f38324c);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        List<a.C0625a> list2 = zVar;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a aVar : list2) {
            arrayList.add(this.f38346b.a(aVar, container.f38486a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(w container, a.f proto) {
        p.d(container, "container");
        p.d(proto, "proto");
        List list = (List) proto.c(this.f38345a.h);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        List<a.C0625a> list2 = zVar;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a aVar : list2) {
            arrayList.add(this.f38346b.a(aVar, container.f38486a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(w container, a.m proto) {
        p.d(container, "container");
        p.d(proto, "proto");
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(w container, kotlin.reflect.jvm.internal.impl.protobuf.p proto, b kind) {
        List list;
        p.d(container, "container");
        p.d(proto, "proto");
        p.d(kind, "kind");
        if (proto instanceof a.c) {
            list = (List) ((a.c) proto).c(this.f38345a.f38323b);
        } else if (proto instanceof a.h) {
            list = (List) ((a.h) proto).c(this.f38345a.f38325d);
        } else if (proto instanceof a.m) {
            int i = a.f38347a[kind.ordinal()];
            if (i == 1) {
                list = (List) ((a.m) proto).c(this.f38345a.e);
            } else if (i == 2) {
                list = (List) ((a.m) proto).c(this.f38345a.f);
            } else if (i == 3) {
                list = (List) ((a.m) proto).c(this.f38345a.g);
            } else {
                throw new IllegalStateException("Unsupported callable kind with property proto".toString());
            }
        } else {
            throw new IllegalStateException(p.a("Unknown message: ", (Object) proto).toString());
        }
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        List<a.C0625a> list2 = zVar;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a aVar : list2) {
            arrayList.add(this.f38346b.a(aVar, container.f38486a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> a(w container, kotlin.reflect.jvm.internal.impl.protobuf.p callableProto, b kind, int i, a.t proto) {
        p.d(container, "container");
        p.d(callableProto, "callableProto");
        p.d(kind, "kind");
        p.d(proto, "proto");
        List list = (List) proto.c(this.f38345a.j);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        List<a.C0625a> list2 = zVar;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a aVar : list2) {
            arrayList.add(this.f38346b.a(aVar, container.f38486a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> b(w container, a.m proto) {
        p.d(container, "container");
        p.d(proto, "proto");
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<c> b(w container, kotlin.reflect.jvm.internal.impl.protobuf.p proto, b kind) {
        p.d(container, "container");
        p.d(proto, "proto");
        p.d(kind, "kind");
        return z.f36608a;
    }
}
