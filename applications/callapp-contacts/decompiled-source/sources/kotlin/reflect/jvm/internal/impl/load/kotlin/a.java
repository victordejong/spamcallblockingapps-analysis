package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.c.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.e;
import kotlin.reflect.jvm.internal.impl.b.c.a.h;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.f.g;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.r;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a.class */
public abstract class a<A, C> implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.c<A, C> {

    /* renamed from: a  reason: collision with root package name */
    private final m f38018a;

    /* renamed from: b  reason: collision with root package name */
    private final g<o, b<A, C>> f38019b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$a.class */
    public enum EnumC0693a {
        PROPERTY,
        BACKING_FIELD,
        DELEGATE_FIELD
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$b.class */
    public static final class b<A, C> {

        /* renamed from: a  reason: collision with root package name */
        final Map<r, List<A>> f38024a;

        /* renamed from: b  reason: collision with root package name */
        final Map<r, C> f38025b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(Map<r, ? extends List<? extends A>> memberAnnotations, Map<r, ? extends C> propertyConstants) {
            p.d(memberAnnotations, "memberAnnotations");
            p.d(propertyConstants, "propertyConstants");
            this.f38024a = memberAnnotations;
            this.f38025b = propertyConstants;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$c.class */
    public final /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38037a;

        static {
            int[] iArr = new int[kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.values().length];
            iArr[kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY_GETTER.ordinal()] = 1;
            iArr[kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY_SETTER.ordinal()] = 2;
            iArr[kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY.ordinal()] = 3;
            f38037a = iArr;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$d.class */
    public static final class d implements o.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a<A, C> f38038a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ HashMap<r, List<A>> f38039b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ HashMap<r, C> f38040c;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a.class */
        public final class C0697a extends b implements o.e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f38041a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0697a(d this$0, r signature) {
                super(this$0, signature);
                p.d(this$0, "this$0");
                p.d(signature, "signature");
                this.f38041a = this$0;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.e
            public final o.a a(int i, kotlin.reflect.jvm.internal.impl.c.a classId, at source) {
                p.d(classId, "classId");
                p.d(source, "source");
                r.a aVar = r.f38094a;
                r a2 = r.a.a(a(), i);
                List<A> list = this.f38041a.f38039b.get(a2);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f38041a.f38039b.put(a2, arrayList);
                }
                return a.a(this.f38041a.f38038a, classId, source, arrayList);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b.class */
        public class b implements o.c {

            /* renamed from: a  reason: collision with root package name */
            private final r f38042a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ d f38043b;

            /* renamed from: c  reason: collision with root package name */
            private final ArrayList<A> f38044c = new ArrayList<>();

            public b(d this$0, r signature) {
                p.d(this$0, "this$0");
                p.d(signature, "signature");
                this.f38043b = this$0;
                this.f38042a = signature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.c
            public final o.a a(kotlin.reflect.jvm.internal.impl.c.a classId, at source) {
                p.d(classId, "classId");
                p.d(source, "source");
                return a.a(this.f38043b.f38038a, classId, source, this.f38044c);
            }

            protected final r a() {
                return this.f38042a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.c
            public final void b() {
                if (!this.f38044c.isEmpty()) {
                    this.f38043b.f38039b.put(this.f38042a, this.f38044c);
                }
            }
        }

        d(a<A, C> aVar, HashMap<r, List<A>> hashMap, HashMap<r, C> hashMap2) {
            this.f38038a = aVar;
            this.f38039b = hashMap;
            this.f38040c = hashMap2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.d
        public final o.e a(kotlin.reflect.jvm.internal.impl.c.e name, String desc) {
            p.d(name, "name");
            p.d(desc, "desc");
            r.a aVar = r.f38094a;
            String a2 = name.a();
            p.b(a2, "name.asString()");
            return new C0697a(this, r.a.a(a2, desc));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.d
        public final o.c b(kotlin.reflect.jvm.internal.impl.c.e name, String desc) {
            p.d(name, "name");
            p.d(desc, "desc");
            r.a aVar = r.f38094a;
            String a2 = name.a();
            p.b(a2, "name.asString()");
            return new b(this, r.a.b(a2, desc));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$e.class */
    public static final class e implements o.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a<A, C> f38045a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList<A> f38046b;

        e(a<A, C> aVar, ArrayList<A> arrayList) {
            this.f38045a = aVar;
            this.f38046b = arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.c
        public final o.a a(kotlin.reflect.jvm.internal.impl.c.a classId, at source) {
            p.d(classId, "classId");
            p.d(source, "source");
            return a.a(this.f38045a, classId, source, this.f38046b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.c
        public final void b() {
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$f.class */
    static final class f extends kotlin.jvm.internal.r implements Function1<o, b<? extends A, ? extends C>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a<A, C> f38047a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(a<A, C> aVar) {
            super(1);
            this.f38047a = aVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Object invoke(o oVar) {
            o kotlinClass = oVar;
            p.d(kotlinClass, "kotlinClass");
            a<A, C> aVar = this.f38047a;
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            p.d(kotlinClass, "kotlinClass");
            kotlinClass.a(new d(aVar, hashMap, hashMap2));
            return new b(hashMap, hashMap2);
        }
    }

    public a(n storageManager, m kotlinClassFinder) {
        p.d(storageManager, "storageManager");
        p.d(kotlinClassFinder, "kotlinClassFinder");
        this.f38018a = kotlinClassFinder;
        this.f38019b = storageManager.a(new f(this));
    }

    private static /* synthetic */ List a(a aVar, w wVar, r rVar, boolean z, Boolean bool, boolean z2, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            bool = null;
        }
        if ((i & 32) != 0) {
            z2 = false;
        }
        return aVar.a(wVar, rVar, z, false, bool, z2);
    }

    private final List<A> a(w wVar, a.m mVar, EnumC0693a aVar) {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.z.b(mVar.f37059b);
        p.b(a2, "IS_CONST.get(proto.flags)");
        boolean booleanValue = a2.booleanValue();
        h hVar = h.f37228a;
        boolean a3 = h.a(mVar);
        if (aVar == EnumC0693a.PROPERTY) {
            r a4 = a(mVar, wVar.f38486a, wVar.f38487b, false, true, false, 40);
            return a4 == null ? z.f36608a : a((a) this, wVar, a4, true, Boolean.valueOf(booleanValue), a3, 8);
        }
        r a5 = a(mVar, wVar.f38486a, wVar.f38487b, true, false, false, 48);
        if (a5 == null) {
            return z.f36608a;
        }
        boolean z = false;
        boolean c2 = kotlin.h.p.c((CharSequence) a5.f38095b, (CharSequence) "$delegate", false);
        if (aVar == EnumC0693a.DELEGATE_FIELD) {
            z = true;
        }
        return c2 != z ? z.f36608a : a(wVar, a5, true, true, Boolean.valueOf(booleanValue), a3);
    }

    private final List<A> a(w wVar, r rVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        o a2 = a(wVar, a(wVar, z, z2, bool, z3));
        if (a2 == null) {
            return z.f36608a;
        }
        List<A> list = this.f38019b.invoke(a2).f38024a.get(rVar);
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        return zVar;
    }

    public static final /* synthetic */ o.a a(a aVar, kotlin.reflect.jvm.internal.impl.c.a aVar2, at atVar, List list) {
        kotlin.reflect.jvm.internal.impl.a aVar3 = kotlin.reflect.jvm.internal.impl.a.f36962a;
        if (kotlin.reflect.jvm.internal.impl.a.a().contains(aVar2)) {
            return null;
        }
        return aVar.a(aVar2, atVar, list);
    }

    private static o a(w wVar, o oVar) {
        if (oVar != null) {
            return oVar;
        }
        if (wVar instanceof w.a) {
            return b((w.a) wVar);
        }
        return null;
    }

    private final o a(w wVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        w.a aVar;
        if (z) {
            if (bool != null) {
                if (wVar instanceof w.a) {
                    w.a aVar2 = (w.a) wVar;
                    if (aVar2.g == a.b.EnumC0632b.INTERFACE) {
                        m mVar = this.f38018a;
                        kotlin.reflect.jvm.internal.impl.c.a a2 = aVar2.f.a(kotlin.reflect.jvm.internal.impl.c.e.a("DefaultImpls"));
                        p.b(a2, "container.classId.createNestedClassId(Name.identifier(JvmAbi.DEFAULT_IMPLS_CLASS_NAME))");
                        return n.a(mVar, a2);
                    }
                }
                if (bool.booleanValue() && (wVar instanceof w.b)) {
                    at atVar = wVar.f38488c;
                    i iVar = atVar instanceof i ? (i) atVar : null;
                    kotlin.reflect.jvm.internal.impl.resolve.c.c cVar = iVar == null ? null : iVar.f38075b;
                    if (cVar != null) {
                        m mVar2 = this.f38018a;
                        String c2 = cVar.c();
                        p.b(c2, "facadeClassName.internalName");
                        kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.c.a.a(new kotlin.reflect.jvm.internal.impl.c.b(kotlin.h.p.a(c2, '/', '.', false)));
                        p.b(a3, "topLevel(FqName(facadeClassName.internalName.replace('/', '.')))");
                        return n.a(mVar2, a3);
                    }
                }
            } else {
                throw new IllegalStateException(("isConst should not be null for property (container=" + wVar + ')').toString());
            }
        }
        if (z2 && (wVar instanceof w.a)) {
            w.a aVar3 = (w.a) wVar;
            if (aVar3.g == a.b.EnumC0632b.COMPANION_OBJECT && (aVar = aVar3.e) != null && (aVar.g == a.b.EnumC0632b.CLASS || aVar.g == a.b.EnumC0632b.ENUM_CLASS || (z3 && (aVar.g == a.b.EnumC0632b.INTERFACE || aVar.g == a.b.EnumC0632b.ANNOTATION_CLASS)))) {
                return b(aVar);
            }
        }
        if (!(wVar instanceof w.b) || !(wVar.f38488c instanceof i)) {
            return null;
        }
        at atVar2 = wVar.f38488c;
        Objects.requireNonNull(atVar2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
        i iVar2 = (i) atVar2;
        o oVar = iVar2.f38076c;
        return oVar == null ? n.a(this.f38018a, iVar2.d()) : oVar;
    }

    private static r a(a.m mVar, kotlin.reflect.jvm.internal.impl.b.b.c cVar, kotlin.reflect.jvm.internal.impl.b.b.g gVar, boolean z, boolean z2, boolean z3) {
        h.e<a.m, a.c> propertySignature = kotlin.reflect.jvm.internal.impl.b.c.a.f37168d;
        p.b(propertySignature, "propertySignature");
        a.c cVar2 = (a.c) kotlin.reflect.jvm.internal.impl.b.b.e.a(mVar, propertySignature);
        if (cVar2 == null) {
            return null;
        }
        if (z) {
            kotlin.reflect.jvm.internal.impl.b.c.a.h hVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
            e.a a2 = kotlin.reflect.jvm.internal.impl.b.c.a.h.a(mVar, cVar, gVar, z3);
            if (a2 == null) {
                return null;
            }
            r.a aVar = r.f38094a;
            return r.a.a(a2);
        } else if (!z2 || !cVar2.d()) {
            return null;
        } else {
            r.a aVar2 = r.f38094a;
            a.b bVar = cVar2.f37190c;
            p.b(bVar, "signature.syntheticMethod");
            return r.a.a(cVar, bVar);
        }
    }

    private static /* synthetic */ r a(a.m mVar, kotlin.reflect.jvm.internal.impl.b.b.c cVar, kotlin.reflect.jvm.internal.impl.b.b.g gVar, boolean z, boolean z2, boolean z3, int i) {
        if ((i & 8) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            z2 = false;
        }
        if ((i & 32) != 0) {
            z3 = true;
        }
        return a(mVar, cVar, gVar, z, z2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r a(kotlin.reflect.jvm.internal.impl.protobuf.p pVar, kotlin.reflect.jvm.internal.impl.b.b.c cVar, kotlin.reflect.jvm.internal.impl.b.b.g gVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar, boolean z) {
        if (pVar instanceof a.c) {
            r.a aVar = r.f38094a;
            kotlin.reflect.jvm.internal.impl.b.c.a.h hVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
            e.b a2 = kotlin.reflect.jvm.internal.impl.b.c.a.h.a((a.c) pVar, cVar, gVar);
            if (a2 == null) {
                return null;
            }
            return r.a.a(a2);
        } else if (pVar instanceof a.h) {
            r.a aVar2 = r.f38094a;
            kotlin.reflect.jvm.internal.impl.b.c.a.h hVar2 = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
            e.b a3 = kotlin.reflect.jvm.internal.impl.b.c.a.h.a((a.h) pVar, cVar, gVar);
            if (a3 == null) {
                return null;
            }
            return r.a.a(a3);
        } else if (!(pVar instanceof a.m)) {
            return null;
        } else {
            h.e<a.m, a.c> propertySignature = kotlin.reflect.jvm.internal.impl.b.c.a.f37168d;
            p.b(propertySignature, "propertySignature");
            a.c cVar2 = (a.c) kotlin.reflect.jvm.internal.impl.b.b.e.a((h.c) pVar, propertySignature);
            if (cVar2 == null) {
                return null;
            }
            int i = c.f38037a[bVar.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return a((a.m) pVar, cVar, gVar, true, true, z);
                } else if (!cVar2.k()) {
                    return null;
                } else {
                    r.a aVar3 = r.f38094a;
                    a.b bVar2 = cVar2.e;
                    p.b(bVar2, "signature.setter");
                    return r.a.a(cVar, bVar2);
                }
            } else if (!cVar2.g()) {
                return null;
            } else {
                r.a aVar4 = r.f38094a;
                a.b bVar3 = cVar2.f37191d;
                p.b(bVar3, "signature.getter");
                return r.a.a(cVar, bVar3);
            }
        }
    }

    private static o b(w.a aVar) {
        at atVar = aVar.f38488c;
        q qVar = atVar instanceof q ? (q) atVar : null;
        if (qVar == null) {
            return null;
        }
        return qVar.f38091b;
    }

    protected abstract C a(C c2);

    protected abstract A a(a.C0625a aVar, kotlin.reflect.jvm.internal.impl.b.b.c cVar);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final C a(w container, a.m proto, KotlinType expectedType) {
        kotlin.reflect.jvm.internal.impl.b.c.a.f fVar;
        C c2;
        p.d(container, "container");
        p.d(proto, "proto");
        p.d(expectedType, "expectedType");
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.z.b(proto.f37059b);
        kotlin.reflect.jvm.internal.impl.b.c.a.h hVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
        o a3 = a(container, a(container, true, true, a2, kotlin.reflect.jvm.internal.impl.b.c.a.h.a(proto)));
        if (a3 == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.b.c.a.f fVar2 = a3.a().f38021b;
        e.a aVar = kotlin.reflect.jvm.internal.impl.load.kotlin.e.f38064a;
        fVar = kotlin.reflect.jvm.internal.impl.load.kotlin.e.g;
        kotlin.reflect.jvm.internal.impl.b.c.a.f version = fVar;
        p.d(version, "version");
        r a4 = a(proto, container.f38486a, container.f38487b, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY, fVar2.a(version.e, version.f, version.g));
        if (a4 == null || (c2 = this.f38019b.invoke(a3).f38025b.get(a4)) == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.builtins.n nVar = kotlin.reflect.jvm.internal.impl.builtins.n.f37326a;
        C c3 = c2;
        if (kotlin.reflect.jvm.internal.impl.builtins.n.a(expectedType)) {
            c3 = a((a<A, C>) c2);
        }
        return c3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> a(a.p proto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        Object c2 = proto.c(kotlin.reflect.jvm.internal.impl.b.c.a.f);
        p.b(c2, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<a.C0625a> iterable = (Iterable) c2;
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(iterable, 10));
        for (a.C0625a it2 : iterable) {
            p.b(it2, "it");
            arrayList.add(a(it2, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> a(a.r proto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        Object c2 = proto.c(kotlin.reflect.jvm.internal.impl.b.c.a.h);
        p.b(c2, "proto.getExtension(JvmProtoBuf.typeParameterAnnotation)");
        Iterable<a.C0625a> iterable = (Iterable) c2;
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(iterable, 10));
        for (a.C0625a it2 : iterable) {
            p.b(it2, "it");
            arrayList.add(a(it2, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> a(w.a container) {
        p.d(container, "container");
        o kotlinClass = b(container);
        if (kotlinClass != null) {
            ArrayList arrayList = new ArrayList(1);
            p.d(kotlinClass, "kotlinClass");
            kotlinClass.a(new e(this, arrayList));
            return arrayList;
        }
        throw new IllegalStateException(p.a("Class for loading annotations is not found: ", (Object) container.a()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> a(w container, a.f proto) {
        p.d(container, "container");
        p.d(proto, "proto");
        r.a aVar = r.f38094a;
        String a2 = container.f38486a.a(proto.f37026b);
        kotlin.reflect.jvm.internal.impl.b.c.a.b bVar = kotlin.reflect.jvm.internal.impl.b.c.a.b.f37182a;
        String g = ((w.a) container).f.g();
        p.b(g, "container as ProtoContainer.Class).classId.asString()");
        return a((a) this, container, r.a.b(a2, kotlin.reflect.jvm.internal.impl.b.c.a.b.a(g)), false, (Boolean) null, false, 60);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> a(w container, a.m proto) {
        p.d(container, "container");
        p.d(proto, "proto");
        return a(container, proto, EnumC0693a.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> a(w container, kotlin.reflect.jvm.internal.impl.protobuf.p proto, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b kind) {
        p.d(container, "container");
        p.d(proto, "proto");
        p.d(kind, "kind");
        if (kind == kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY) {
            return a(container, (a.m) proto, EnumC0693a.PROPERTY);
        }
        r a2 = a(proto, container.f38486a, container.f38487b, kind, false);
        return a2 == null ? z.f36608a : a((a) this, container, a2, false, (Boolean) null, false, 60);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005f, code lost:
        if (kotlin.reflect.jvm.internal.impl.b.b.f.a((kotlin.reflect.jvm.internal.impl.b.a.m) r10) != false) goto L_0x0088;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0085, code lost:
        if (r0.h != false) goto L_0x0088;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0045, code lost:
        if (kotlin.reflect.jvm.internal.impl.b.b.f.a((kotlin.reflect.jvm.internal.impl.b.a.h) r10) != false) goto L_0x0088;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004b, code lost:
        r15 = 0;
     */
    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<A> a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.w r9, kotlin.reflect.jvm.internal.impl.protobuf.p r10, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b r11, int r12, kotlin.reflect.jvm.internal.impl.b.a.t r13) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "container"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r10
            java.lang.String r1 = "callableProto"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            java.lang.String r1 = "kind"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r13
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r8
            r1 = r10
            r2 = r9
            kotlin.reflect.jvm.internal.impl.b.b.c r2 = r2.f38486a
            r3 = r9
            kotlin.reflect.jvm.internal.impl.b.b.g r3 = r3.f38487b
            r4 = r11
            kotlin.reflect.jvm.internal.impl.load.kotlin.r r0 = a(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x00b2
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.b.a.h
            r14 = r0
            r0 = 1
            r15 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0051
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$h r0 = (kotlin.reflect.jvm.internal.impl.b.a.h) r0
            boolean r0 = kotlin.reflect.jvm.internal.impl.b.b.f.a(r0)
            if (r0 == 0) goto L_0x004b
            goto L_0x0088
        L_0x004b:
            r0 = 0
            r15 = r0
            goto L_0x0088
        L_0x0051:
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.b.a.m
            if (r0 == 0) goto L_0x0065
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$m r0 = (kotlin.reflect.jvm.internal.impl.b.a.m) r0
            boolean r0 = kotlin.reflect.jvm.internal.impl.b.b.f.a(r0)
            if (r0 == 0) goto L_0x004b
            goto L_0x0088
        L_0x0065:
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.b.a.c
            if (r0 == 0) goto L_0x00a0
            r0 = r9
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.w$a r0 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.w.a) r0
            r10 = r0
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$b$b r0 = r0.g
            kotlin.reflect.jvm.internal.impl.b.a$b$b r1 = kotlin.reflect.jvm.internal.impl.b.a.b.EnumC0632b.ENUM_CLASS
            if (r0 != r1) goto L_0x0081
            r0 = 2
            r15 = r0
            goto L_0x0088
        L_0x0081:
            r0 = r10
            boolean r0 = r0.h
            if (r0 == 0) goto L_0x004b
        L_0x0088:
            kotlin.reflect.jvm.internal.impl.load.kotlin.r$a r0 = kotlin.reflect.jvm.internal.impl.load.kotlin.r.f38094a
            r10 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            r3 = r12
            r4 = r15
            int r3 = r3 + r4
            kotlin.reflect.jvm.internal.impl.load.kotlin.r r2 = kotlin.reflect.jvm.internal.impl.load.kotlin.r.a.a(r2, r3)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 60
            java.util.List r0 = a(r0, r1, r2, r3, r4, r5, r6)
            return r0
        L_0x00a0:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            java.lang.String r2 = "Unsupported message: "
            r3 = r10
            java.lang.Class r3 = r3.getClass()
            java.lang.String r2 = kotlin.jvm.internal.p.a(r2, r3)
            r1.<init>(r2)
            throw r0
        L_0x00b2:
            kotlin.a.z r0 = kotlin.a.z.f36608a
            java.util.List r0 = (java.util.List) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.a.a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.w, kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b, int, kotlin.reflect.jvm.internal.impl.b.a$t):java.util.List");
    }

    protected abstract o.a a(kotlin.reflect.jvm.internal.impl.c.a aVar, at atVar, List<A> list);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> b(w container, a.m proto) {
        p.d(container, "container");
        p.d(proto, "proto");
        return a(container, proto, EnumC0693a.DELEGATE_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.c
    public final List<A> b(w container, kotlin.reflect.jvm.internal.impl.protobuf.p proto, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b kind) {
        p.d(container, "container");
        p.d(proto, "proto");
        p.d(kind, "kind");
        r a2 = a(proto, container.f38486a, container.f38487b, kind, false);
        if (a2 == null) {
            return z.f36608a;
        }
        r.a aVar = r.f38094a;
        return a((a) this, container, r.a.a(a2, 0), false, (Boolean) null, false, 60);
    }
}
