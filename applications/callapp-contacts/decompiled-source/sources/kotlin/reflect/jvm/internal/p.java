package kotlin.reflect.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.a.a.d;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.g;
import kotlin.reflect.jvm.internal.impl.b.c.a.h;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.f;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.kotlin.a.a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.b;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.k;
import kotlin.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018��2\u00020\u0001:\u0001,B\u001d\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\b2\u0006\u0010#\u001a\u00020$H\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020&0\b2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020\u0005H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0018\u0012\u0014\u0012\u0012 \u000f*\b\u0018\u00010\u000eR\u00020��0\u000eR\u00020��0\rX\u0082\u0004¢\u0006\u0002\n��R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0018\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00038TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "jClass", "Ljava/lang/Class;", "usageModuleName", "", "(Ljava/lang/Class;Ljava/lang/String;)V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "kotlin.jvm.PlatformType", "getJClass", "()Ljava/lang/Class;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "methodOwner", "getMethodOwner", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "getUsageModuleName", "()Ljava/lang/String;", "equals", "", "other", "", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "name", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "toString", "Data", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p.class */
public final class p extends k {

    /* renamed from: a  reason: collision with root package name */
    final Class<?> f38561a;

    /* renamed from: b  reason: collision with root package name */
    private final ad.b<a> f38562b;
    private final String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R%\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\t\u001a\u0004\b\r\u0010\u000eR/\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R!\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\t\u001a\u0004\b \u0010!¨\u0006#"}, d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V", "kotlinClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;", "getKotlinClass", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;", "kotlinClass$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "members", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getMembers", "()Ljava/util/Collection;", "members$delegate", "metadata", "Lkotlin/Triple;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;", "getMetadata", "()Lkotlin/Triple;", "metadata$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "multifileFacade", "Ljava/lang/Class;", "getMultifileFacade", "()Ljava/lang/Class;", "multifileFacade$delegate", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "scope$delegate", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a.class */
    public final class a extends k.b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty[] f38563a = {ac.a(new aa(ac.b(a.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), ac.a(new aa(ac.b(a.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), ac.a(new aa(ac.b(a.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), ac.a(new aa(ac.b(a.class), "metadata", "getMetadata()Lkotlin/Triple;")), ac.a(new aa(ac.b(a.class), "members", "getMembers()Ljava/util/Collection;"))};
        private final ad.a e = ad.b(new C0723a());
        private final ad.a f = ad.b(new e());

        /* renamed from: b  reason: collision with root package name */
        final ad.b f38564b = ad.a(new d());

        /* renamed from: c  reason: collision with root package name */
        final ad.b f38565c = ad.a(new c());
        private final ad.a g = ad.b(new b());

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$a.class */
        static final class C0723a extends r implements Function0<f> {
            C0723a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ f invoke() {
                f.a aVar = f.f37436a;
                return f.a.a(p.this.f38561a);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$b.class */
        static final class b extends r implements Function0<Collection<? extends f<?>>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends f<?>> invoke() {
                return p.this.a(a.this.a(), k.c.DECLARED);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/Triple;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$c.class */
        static final class c extends r implements Function0<s<? extends g, ? extends a.k, ? extends kotlin.reflect.jvm.internal.impl.b.c.a.f>> {
            c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ s<? extends g, ? extends a.k, ? extends kotlin.reflect.jvm.internal.impl.b.c.a.f> invoke() {
                kotlin.reflect.jvm.internal.impl.load.kotlin.a.a aVar;
                f a2 = a.a(a.this);
                if (a2 == null || (aVar = a2.f37438c) == null) {
                    return null;
                }
                String[] strArr = aVar.f38022c;
                String[] strArr2 = aVar.e;
                if (strArr == null || strArr2 == null) {
                    return null;
                }
                n<g, a.k> b2 = h.b(strArr, strArr2);
                return new s<>(b2.f36810a, b2.f36811b, aVar.f38021b);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/lang/Class;", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$d.class */
        static final class d extends r implements Function0<Class<?>> {
            d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Class<?> invoke() {
                kotlin.reflect.jvm.internal.impl.load.kotlin.a.a aVar;
                f a2 = a.a(a.this);
                String a3 = (a2 == null || (aVar = a2.f37438c) == null) ? null : aVar.a();
                if (a3 == null) {
                    return null;
                }
                if (a3.length() > 0) {
                    return p.this.f38561a.getClassLoader().loadClass(kotlin.h.p.a(a3, '/', '.', false));
                }
                return null;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$e.class */
        static final class e extends r implements Function0<kotlin.reflect.jvm.internal.impl.resolve.e.h> {
            e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.e.h invoke() {
                List<o> list;
                f fileClass = a.a(a.this);
                if (fileClass == null) {
                    return h.c.f38297a;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d.a.a aVar = a.this.d().f37445c;
                kotlin.jvm.internal.p.d(fileClass, "fileClass");
                ConcurrentHashMap<kotlin.reflect.jvm.internal.impl.c.a, kotlin.reflect.jvm.internal.impl.resolve.e.h> concurrentHashMap = aVar.f37432c;
                kotlin.reflect.jvm.internal.impl.c.a e = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.e(fileClass.f37437b);
                kotlin.reflect.jvm.internal.impl.resolve.e.h hVar = concurrentHashMap.get(e);
                kotlin.reflect.jvm.internal.impl.resolve.e.h hVar2 = hVar;
                if (hVar == null) {
                    kotlin.reflect.jvm.internal.impl.c.b a2 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.e(fileClass.f37437b).a();
                    kotlin.jvm.internal.p.b(a2, "fileClass.classId.packageFqName");
                    if (fileClass.f37438c.f38020a == a.EnumC0694a.MULTIFILE_CLASS) {
                        kotlin.reflect.jvm.internal.impl.load.kotlin.a.a aVar2 = fileClass.f37438c;
                        String[] strArr = aVar2.f38022c;
                        List list2 = null;
                        if (!(aVar2.f38020a == a.EnumC0694a.MULTIFILE_CLASS)) {
                            strArr = null;
                        }
                        if (strArr != null) {
                            list2 = i.a(strArr);
                        }
                        List<String> list3 = list2;
                        if (list2 == null) {
                            list3 = z.f36608a;
                        }
                        ArrayList arrayList = new ArrayList();
                        for (String str : list3) {
                            kotlin.reflect.jvm.internal.impl.c.a a3 = kotlin.reflect.jvm.internal.impl.c.a.a(kotlin.reflect.jvm.internal.impl.resolve.c.c.a(str).a());
                            kotlin.jvm.internal.p.b(a3, "topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)");
                            o a4 = kotlin.reflect.jvm.internal.impl.load.kotlin.n.a(aVar.f37431b, a3);
                            if (a4 != null) {
                                arrayList.add(a4);
                            }
                        }
                        list = arrayList;
                    } else {
                        list = kotlin.a.n.a(fileClass);
                    }
                    kotlin.reflect.jvm.internal.impl.descriptors.impl.k kVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.k(aVar.f37430a.a().f38442b, a2);
                    ArrayList arrayList2 = new ArrayList();
                    for (o oVar : list) {
                        kotlin.reflect.jvm.internal.impl.resolve.e.h a5 = aVar.f37430a.a(kVar, oVar);
                        if (a5 != null) {
                            arrayList2.add(a5);
                        }
                    }
                    List h = kotlin.a.n.h((Iterable) arrayList2);
                    b.a aVar3 = kotlin.reflect.jvm.internal.impl.resolve.e.b.f38273a;
                    hVar2 = b.a.a("package " + a2 + " (" + fileClass + ')', (Iterable<? extends kotlin.reflect.jvm.internal.impl.resolve.e.h>) h);
                    kotlin.reflect.jvm.internal.impl.resolve.e.h putIfAbsent = concurrentHashMap.putIfAbsent(e, hVar2);
                    if (putIfAbsent != null) {
                        hVar2 = putIfAbsent;
                    }
                }
                kotlin.jvm.internal.p.b(hVar2, "cache.getOrPut(fileClass.classId) {\n        val fqName = fileClass.classId.packageFqName\n\n        val parts =\n            if (fileClass.classHeader.kind == KotlinClassHeader.Kind.MULTIFILE_CLASS)\n                fileClass.classHeader.multifilePartNames.mapNotNull { partName ->\n                    val classId = ClassId.topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)\n                    kotlinClassFinder.findKotlinClass(classId)\n                }\n            else listOf(fileClass)\n\n        val packageFragment = EmptyPackageFragmentDescriptor(resolver.components.moduleDescriptor, fqName)\n\n        val scopes = parts.mapNotNull { part ->\n            resolver.createKotlinPackagePartScope(packageFragment, part)\n        }.toList()\n\n        ChainedMemberScope.create(\"package $fqName ($fileClass)\", scopes)\n    }");
                return hVar2;
            }
        }

        public a() {
            super();
        }

        public static final /* synthetic */ f a(a aVar) {
            return (f) aVar.e.invoke();
        }

        public final kotlin.reflect.jvm.internal.impl.resolve.e.h a() {
            return (kotlin.reflect.jvm.internal.impl.resolve.e.h) this.f.invoke();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0012 \u0003*\b\u0018\u00010\u0001R\u00020\u00020\u0001R\u00020\u0002H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KPackageImpl;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$b.class */
    static final class b extends r implements Function0<a> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ a invoke() {
            return new a();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "p1", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "p2", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$c.class */
    static final /* synthetic */ class c extends m implements Function2<t, a.m, an> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38573a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadProperty";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(t.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ an invoke(t tVar, a.m mVar) {
            t p1 = tVar;
            a.m p2 = mVar;
            kotlin.jvm.internal.p.d(p1, "p1");
            kotlin.jvm.internal.p.d(p2, "p2");
            return p1.a(p2);
        }
    }

    public p(Class<?> jClass, String str) {
        kotlin.jvm.internal.p.d(jClass, "jClass");
        this.f38561a = jClass;
        this.e = str;
        ad.b<a> a2 = ad.a(new b());
        kotlin.jvm.internal.p.b(a2, "ReflectProperties.lazy { Data() }");
        this.f38562b = a2;
    }

    public /* synthetic */ p(Class cls, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, (i & 2) != 0 ? null : str);
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.e.h c() {
        return this.f38562b.invoke().a();
    }

    @Override // kotlin.jvm.internal.g
    public final Class<?> a() {
        return this.f38561a;
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final Collection<an> a(e name) {
        kotlin.jvm.internal.p.d(name, "name");
        return c().getContributedVariables(name, d.FROM_REFLECTION);
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final an a(int i) {
        s sVar = (s) this.f38562b.invoke().f38565c.invoke();
        if (sVar == null) {
            return null;
        }
        g gVar = (g) sVar.f38650a;
        a.k kVar = (a.k) sVar.f38651b;
        kotlin.reflect.jvm.internal.impl.b.c.a.f fVar = (kotlin.reflect.jvm.internal.impl.b.c.a.f) sVar.f38652c;
        a.k kVar2 = kVar;
        h.e<a.k, List<a.m>> eVar = kotlin.reflect.jvm.internal.impl.b.c.a.n;
        kotlin.jvm.internal.p.b(eVar, "JvmProtoBuf.packageLocalVariable");
        a.m mVar = (a.m) kotlin.reflect.jvm.internal.impl.b.b.e.a(kVar2, eVar, i);
        if (mVar == null) {
            return null;
        }
        Class<?> cls = this.f38561a;
        a.m mVar2 = mVar;
        g gVar2 = gVar;
        a.s sVar2 = kVar.e;
        kotlin.jvm.internal.p.b(sVar2, "packageProto.typeTable");
        return (an) aj.a(cls, mVar2, gVar2, new kotlin.reflect.jvm.internal.impl.b.b.g(sVar2), fVar, c.f38573a);
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final Collection<j> b() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.k
    public final Collection<w> b(e name) {
        kotlin.jvm.internal.p.d(name, "name");
        return c().getContributedFunctions(name, d.FROM_REFLECTION);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof p) && kotlin.jvm.internal.p.a(this.f38561a, ((p) obj).f38561a);
    }

    public final int hashCode() {
        return this.f38561a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.k
    protected final Class<?> i() {
        Class<?> cls = (Class) this.f38562b.invoke().f38564b.invoke();
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = this.f38561a;
        }
        return cls2;
    }

    public final String toString() {
        return "file class " + kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.e(this.f38561a).f();
    }
}
