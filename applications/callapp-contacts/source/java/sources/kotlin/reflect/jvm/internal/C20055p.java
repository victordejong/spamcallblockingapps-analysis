package kotlin.reflect.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.C18538n;
import kotlin.C20125s;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.AbstractC20033k;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19165k;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19071a;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19645n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18856g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19820b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018��2\u00020\u0001:\u0001,B\u001d\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0096\u0002J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\b2\u0006\u0010#\u001a\u00020$H\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020&0\b2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020\u0005H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u0018\u0012\u0014\u0012\u0012 \u000f*\b\u0018\u00010\u000eR\u00020��0\u000eR\u00020��0\rX\u0082\u0004¢\u0006\u0002\n��R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00130\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0018\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00038TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u001c¨\u0006-"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "jClass", "Ljava/lang/Class;", "usageModuleName", "", "(Ljava/lang/Class;Ljava/lang/String;)V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "data", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "kotlin.jvm.PlatformType", "getJClass", "()Ljava/lang/Class;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "methodOwner", "getMethodOwner", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "getUsageModuleName", "()Ljava/lang/String;", "equals", "", "other", "", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "name", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "index", "", "getProperties", "hashCode", "toString", "Data", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p.class */
public final class C20055p extends AbstractC20033k {

    /* renamed from: a */
    final Class<?> f66421a;

    /* renamed from: b */
    private final C18622ad.C18624b<C20056a> f66422b;

    /* renamed from: e */
    private final String f66423e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018��2\u00060\u0001R\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R%\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\t\u001a\u0004\b\r\u0010\u000eR/\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R!\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\t\u001a\u0004\b \u0010!¨\u0006#"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V", "kotlinClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;", "getKotlinClass", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;", "kotlinClass$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "members", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "getMembers", "()Ljava/util/Collection;", "members$delegate", "metadata", "Lkotlin/Triple;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;", "getMetadata", "()Lkotlin/Triple;", "metadata$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "multifileFacade", "Ljava/lang/Class;", "getMultifileFacade", "()Ljava/lang/Class;", "multifileFacade$delegate", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "getScope", "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;", "scope$delegate", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.p$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a.class */
    public final class C20056a extends AbstractC20033k.AbstractC20035b {

        /* renamed from: a */
        static final /* synthetic */ KProperty[] f66424a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20056a.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20056a.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20056a.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20056a.class), "metadata", "getMetadata()Lkotlin/Triple;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20056a.class), "members", "getMembers()Ljava/util/Collection;"))};

        /* renamed from: e */
        private final C18622ad.C18623a f66428e = C18622ad.m3795b(new C20057a());

        /* renamed from: f */
        private final C18622ad.C18623a f66429f = C18622ad.m3795b(new C20061e());

        /* renamed from: b */
        final C18622ad.C18624b f66425b = C18622ad.m3796a(new C20060d());

        /* renamed from: c */
        final C18622ad.C18624b f66426c = C18622ad.m3796a(new C20059c());

        /* renamed from: g */
        private final C18622ad.C18623a f66430g = C18622ad.m3795b(new C20058b());

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.p$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$a.class */
        public static final class C20057a extends AbstractC18526r implements Function0<C19076f> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20057a() {
                super(0);
                C20056a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ C19076f invoke() {
                C19076f.C19077a c19077a = C19076f.f64794a;
                return C19076f.C19077a.m2667a(C20055p.this.f66421a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u001e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002 \u0003*\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.p$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$b.class */
        public static final class C20058b extends AbstractC18526r implements Function0<Collection<? extends AbstractC18659f<?>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20058b() {
                super(0);
                C20056a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends AbstractC18659f<?>> invoke() {
                return C20055p.this.m1178a(C20056a.this.m1156a(), AbstractC20033k.EnumC20037c.DECLARED);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Lkotlin/Triple;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.p$a$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$c.class */
        public static final class C20059c extends AbstractC18526r implements Function0<C20125s<? extends C18856g, ? extends C18702a.C18748k, ? extends C18854f>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20059c() {
                super(0);
                C20056a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ C20125s<? extends C18856g, ? extends C18702a.C18748k, ? extends C18854f> invoke() {
                C19608a c19608a;
                C19076f m1155a = C20056a.m1155a(C20056a.this);
                if (m1155a == null || (c19608a = m1155a.f64796c) == null) {
                    return null;
                }
                String[] strArr = c19608a.f65677c;
                String[] strArr2 = c19608a.f65679e;
                if (strArr == null || strArr2 == null) {
                    return null;
                }
                C18538n<C18856g, C18702a.C18748k> m2915b = C18859h.m2915b(strArr, strArr2);
                return new C20125s<>(m2915b.f63624a, m2915b.f63625b, c19608a.f65676b);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Ljava/lang/Class;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.p$a$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$d.class */
        public static final class C20060d extends AbstractC18526r implements Function0<Class<?>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20060d() {
                super(0);
                C20056a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Class<?> invoke() {
                C19608a c19608a;
                C19076f m1155a = C20056a.m1155a(C20056a.this);
                String m1942a = (m1155a == null || (c19608a = m1155a.f64796c) == null) ? null : c19608a.m1942a();
                if (m1942a != null) {
                    if (!(m1942a.length() > 0)) {
                        return null;
                    }
                    return C20055p.this.f66421a.getClassLoader().loadClass(C18425p.m3964a(m1942a, '/', '.', false));
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.p$a$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$a$e.class */
        public static final class C20061e extends AbstractC18526r implements Function0<AbstractC19834h> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20061e() {
                super(0);
                C20056a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19834h invoke() {
                List<AbstractC19646o> list;
                C19076f fileClass = C20056a.m1155a(C20056a.this);
                if (fileClass != null) {
                    C19071a c19071a = C20056a.this.m1174d().f64803c;
                    C18524p.m3840d(fileClass, "fileClass");
                    ConcurrentHashMap<C18960a, AbstractC19834h> concurrentHashMap = c19071a.f64790c;
                    C18960a m2654e = C19088b.m2654e(fileClass.f64795b);
                    AbstractC19834h abstractC19834h = concurrentHashMap.get(m2654e);
                    AbstractC19834h abstractC19834h2 = abstractC19834h;
                    if (abstractC19834h == null) {
                        C18961b m2758a = C19088b.m2654e(fileClass.f64795b).m2758a();
                        C18524p.m3843b(m2758a, "fileClass.classId.packageFqName");
                        if (fileClass.f64796c.f65675a == C19608a.EnumC19609a.MULTIFILE_CLASS) {
                            C19608a c19608a = fileClass.f64796c;
                            String[] strArr = c19608a.f65677c;
                            if (!(c19608a.f65675a == C19608a.EnumC19609a.MULTIFILE_CLASS)) {
                                strArr = null;
                            }
                            List a = strArr == null ? null : C18273i.m4221a(strArr);
                            Iterable<String> iterable = a;
                            if (a == null) {
                                iterable = C18297z.f63400a;
                            }
                            ArrayList arrayList = new ArrayList();
                            for (String str : iterable) {
                                C18960a m2754a = C18960a.m2754a(C19766c.m1503a(str).m1505a());
                                C18524p.m3843b(m2754a, "topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)");
                                AbstractC19646o m1880a = C19645n.m1880a(c19071a.f64789b, m2754a);
                                if (m1880a != null) {
                                    arrayList.add(m1880a);
                                }
                            }
                            list = arrayList;
                        } else {
                            list = C18282n.m4176a(fileClass);
                        }
                        C19165k c19165k = new C19165k(c19071a.f64788a.m1915a().f66250b, m2758a);
                        ArrayList arrayList2 = new ArrayList();
                        for (AbstractC19646o abstractC19646o : list) {
                            AbstractC19834h m1914a = c19071a.f64788a.m1914a(c19165k, abstractC19646o);
                            if (m1914a != null) {
                                arrayList2.add(m1914a);
                            }
                        }
                        List h = C18282n.m4118h((Iterable) arrayList2);
                        C19820b.C19821a c19821a = C19820b.f65988a;
                        abstractC19834h2 = C19820b.C19821a.m1432a("package " + m2758a + " (" + fileClass + ')', (Iterable<? extends AbstractC19834h>) h);
                        AbstractC19834h putIfAbsent = concurrentHashMap.putIfAbsent(m2654e, abstractC19834h2);
                        if (putIfAbsent != null) {
                            abstractC19834h2 = putIfAbsent;
                        }
                    }
                    C18524p.m3843b(abstractC19834h2, "cache.getOrPut(fileClass.classId) {\n        val fqName = fileClass.classId.packageFqName\n\n        val parts =\n            if (fileClass.classHeader.kind == KotlinClassHeader.Kind.MULTIFILE_CLASS)\n                fileClass.classHeader.multifilePartNames.mapNotNull { partName ->\n                    val classId = ClassId.topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)\n                    kotlinClassFinder.findKotlinClass(classId)\n                }\n            else listOf(fileClass)\n\n        val packageFragment = EmptyPackageFragmentDescriptor(resolver.components.moduleDescriptor, fqName)\n\n        val scopes = parts.mapNotNull { part ->\n            resolver.createKotlinPackagePartScope(packageFragment, part)\n        }.toList()\n\n        ChainedMemberScope.create(\"package $fqName ($fileClass)\", scopes)\n    }");
                    return abstractC19834h2;
                }
                return AbstractC19834h.C19838c.f66035a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20056a() {
            super();
            C20055p.this = r6;
        }

        /* renamed from: a */
        public static final /* synthetic */ C19076f m1155a(C20056a c20056a) {
            return (C19076f) c20056a.f66428e.invoke();
        }

        /* renamed from: a */
        public final AbstractC19834h m1156a() {
            return (AbstractC19834h) this.f66429f.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0012 \u0003*\b\u0018\u00010\u0001R\u00020\u00020\u0001R\u00020\u0002H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;", "Lkotlin/reflect/jvm/internal/KPackageImpl;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.p$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$b.class */
    public static final class C20062b extends AbstractC18526r implements Function0<C20056a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20062b() {
            super(0);
            C20055p.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C20056a invoke() {
            return new C20056a();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "p1", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "p2", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.p$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/p$c.class */
    static final /* synthetic */ class C20063c extends C18521m implements Function2<C19963t, C18702a.C18754m, AbstractC19017an> {

        /* renamed from: a */
        public static final C20063c f66437a = new C20063c();

        C20063c() {
            super(2);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadProperty";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19963t.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ AbstractC19017an invoke(C19963t c19963t, C18702a.C18754m c18754m) {
            C19963t p1 = c19963t;
            C18702a.C18754m p2 = c18754m;
            C18524p.m3840d(p1, "p1");
            C18524p.m3840d(p2, "p2");
            return p1.m1243a(p2);
        }
    }

    public C20055p(Class<?> jClass, String str) {
        C18524p.m3840d(jClass, "jClass");
        this.f66421a = jClass;
        this.f66423e = str;
        C18622ad.C18624b<C20056a> m3796a = C18622ad.m3796a(new C20062b());
        C18524p.m3843b(m3796a, "ReflectProperties.lazy { Data() }");
        this.f66422b = m3796a;
    }

    public /* synthetic */ C20055p(Class cls, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cls, (i & 2) != 0 ? null : str);
    }

    /* renamed from: c */
    private final AbstractC19834h m1158c() {
        return this.f66422b.invoke().m1156a();
    }

    @Override // kotlin.jvm.internal.AbstractC18514g
    /* renamed from: a */
    public final Class<?> mo1163a() {
        return this.f66421a;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: a */
    public final Collection<AbstractC19017an> mo1161a(C18966e name) {
        C18524p.m3840d(name, "name");
        return m1158c().getContributedVariables(name, EnumC18698d.FROM_REFLECTION);
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: a */
    public final AbstractC19017an mo1162a(int i) {
        C20125s c20125s = (C20125s) this.f66422b.invoke().f66426c.invoke();
        if (c20125s != null) {
            C18856g c18856g = (C18856g) c20125s.f66525a;
            C18702a.C18748k c18748k = (C18702a.C18748k) c20125s.f66526b;
            C18854f c18854f = (C18854f) c20125s.f66527c;
            C18702a.C18748k c18748k2 = c18748k;
            AbstractC19683h.C19690e<C18702a.C18748k, List<C18702a.C18754m>> c19690e = C18827a.f64341n;
            C18524p.m3843b(c19690e, "JvmProtoBuf.packageLocalVariable");
            C18702a.C18754m c18754m = (C18702a.C18754m) C18816e.m3056a(c18748k2, c19690e, i);
            if (c18754m == null) {
                return null;
            }
            Class<?> cls = this.f66421a;
            C18702a.C18754m c18754m2 = c18754m;
            C18856g c18856g2 = c18856g;
            C18702a.C18784s c18784s = c18748k.f64006e;
            C18524p.m3843b(c18784s, "packageProto.typeTable");
            return (AbstractC19017an) C18635aj.m3767a(cls, c18754m2, c18856g2, new C18818g(c18784s), c18854f, C20063c.f66437a);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: b */
    public final Collection<AbstractC19192j> mo1160b() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: b */
    public final Collection<AbstractC19219w> mo1159b(C18966e name) {
        C18524p.m3840d(name, "name");
        return m1158c().getContributedFunctions(name, EnumC18698d.FROM_REFLECTION);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C20055p) && C18524p.m3850a(this.f66421a, ((C20055p) obj).f66421a);
    }

    public final int hashCode() {
        return this.f66421a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20033k
    /* renamed from: i */
    protected final Class<?> mo1157i() {
        Class<?> cls = (Class) this.f66422b.invoke().f66425b.invoke();
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = this.f66421a;
        }
        return cls2;
    }

    public final String toString() {
        return "file class " + C19088b.m2654e(this.f66421a).m2748f();
    }
}
