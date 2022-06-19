package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.serialization.C19865a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/d.class */
public final class C19882d implements AbstractC19881c<AbstractC18977c, AbstractC19781g<?>> {

    /* renamed from: a */
    private final C19865a f66098a;

    /* renamed from: b */
    private final C19937e f66099b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/d$a.class */
    public final /* synthetic */ class C19883a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f66100a;

        static {
            int[] iArr = new int[EnumC19875b.values().length];
            iArr[EnumC19875b.PROPERTY.ordinal()] = 1;
            iArr[EnumC19875b.PROPERTY_GETTER.ordinal()] = 2;
            iArr[EnumC19875b.PROPERTY_SETTER.ordinal()] = 3;
            f66100a = iArr;
        }
    }

    public C19882d(AbstractC18999ab module, C19001ad notFoundClasses, C19865a protocol) {
        C18524p.m3840d(module, "module");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        C18524p.m3840d(protocol, "protocol");
        this.f66098a = protocol;
        this.f66099b = new C19937e(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final /* synthetic */ AbstractC19781g<?> mo1359a(AbstractC19972w container, C18702a.C18754m proto, KotlinType expectedType) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(expectedType, "expectedType");
        C18702a.C18704a.C18706a.C18709b c18709b = (C18702a.C18704a.C18706a.C18709b) C18816e.m3057a(proto, this.f66098a.f66068i);
        if (c18709b == null) {
            return null;
        }
        return this.f66099b.m1269a(expectedType, c18709b, container.f66320a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1364a(C18702a.C18768p proto, AbstractC18813c nameResolver) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        List list = (List) proto.m1690c(this.f66098a.f66070k);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        List<C18702a.C18704a> list2 = c18297z;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (C18702a.C18704a c18704a : list2) {
            arrayList.add(this.f66099b.m1272a(c18704a, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1363a(C18702a.C18779r proto, AbstractC18813c nameResolver) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        List list = (List) proto.m1690c(this.f66098a.f66071l);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        List<C18702a.C18704a> list2 = c18297z;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (C18702a.C18704a c18704a : list2) {
            arrayList.add(this.f66099b.m1272a(c18704a, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1362a(AbstractC19972w.C19973a container) {
        C18524p.m3840d(container, "container");
        List list = (List) container.f66323d.m1690c(this.f66098a.f66062c);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        List<C18702a.C18704a> list2 = c18297z;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (C18702a.C18704a c18704a : list2) {
            arrayList.add(this.f66099b.m1272a(c18704a, container.f66320a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1361a(AbstractC19972w container, C18702a.C18733f proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        List list = (List) proto.m1690c(this.f66098a.f66067h);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        List<C18702a.C18704a> list2 = c18297z;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (C18702a.C18704a c18704a : list2) {
            arrayList.add(this.f66099b.m1272a(c18704a, container.f66320a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1360a(AbstractC19972w container, C18702a.C18754m proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1358a(AbstractC19972w container, AbstractC19705p proto, EnumC19875b kind) {
        List list;
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(kind, "kind");
        if (proto instanceof C18702a.C18720c) {
            list = (List) ((C18702a.C18720c) proto).m1690c(this.f66098a.f66061b);
        } else if (proto instanceof C18702a.C18741h) {
            list = (List) ((C18702a.C18741h) proto).m1690c(this.f66098a.f66063d);
        } else if (!(proto instanceof C18702a.C18754m)) {
            throw new IllegalStateException(C18524p.m3847a("Unknown message: ", (Object) proto).toString());
        } else {
            int i = C19883a.f66100a[kind.ordinal()];
            if (i == 1) {
                list = (List) ((C18702a.C18754m) proto).m1690c(this.f66098a.f66064e);
            } else if (i == 2) {
                list = (List) ((C18702a.C18754m) proto).m1690c(this.f66098a.f66065f);
            } else if (i != 3) {
                throw new IllegalStateException("Unsupported callable kind with property proto".toString());
            } else {
                list = (List) ((C18702a.C18754m) proto).m1690c(this.f66098a.f66066g);
            }
        }
        List list2 = list;
        if (list == null) {
            list2 = C18297z.f63400a;
        }
        Iterable<C18702a.C18704a> iterable = list2;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(iterable, 10));
        for (C18702a.C18704a c18704a : iterable) {
            arrayList.add(this.f66099b.m1272a(c18704a, container.f66320a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<AbstractC18977c> mo1357a(AbstractC19972w container, AbstractC19705p callableProto, EnumC19875b kind, int i, C18702a.C18787t proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(callableProto, "callableProto");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(proto, "proto");
        List list = (List) proto.m1690c(this.f66098a.f66069j);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        List<C18702a.C18704a> list2 = c18297z;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (C18702a.C18704a c18704a : list2) {
            arrayList.add(this.f66099b.m1272a(c18704a, container.f66320a));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: b */
    public final List<AbstractC18977c> mo1356b(AbstractC19972w container, C18702a.C18754m proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: b */
    public final List<AbstractC18977c> mo1355b(AbstractC19972w container, AbstractC19705p proto, EnumC19875b kind) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(kind, "kind");
        return C18297z.f63400a;
    }
}
