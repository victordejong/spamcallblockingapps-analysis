package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KCallable;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ak;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.k;
import kotlin.reflect.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0094\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\b \u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J%\u00106\u001a\u00028��2\u0016\u00107\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0016¢\u0006\u0002\u0010:J#\u0010;\u001a\u00028��2\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0002¢\u0006\u0002\u0010=J#\u0010>\u001a\u00028��2\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0016¢\u0006\u0002\u0010=J3\u0010?\u001a\u00028��2\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<2\f\u0010@\u001a\b\u0012\u0002\b\u0003\u0018\u00010AH��¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020,H\u0002J\n\u0010F\u001a\u0004\u0018\u00010GH\u0002R(\u0010\u0005\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\b \t*\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R(\u0010\n\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\f \t*\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b0\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\r\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\u000e0\u000e0\u0006X\u0082\u0004¢\u0006\u0002\n��R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010 \t*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00070\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0017R\u0012\u0010\u001e\u001a\u00020\u001fX¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010$R\u0014\u0010%\u001a\u00020#8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b%\u0010$R\u0012\u0010&\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010$R\u0014\u0010'\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010$R\u0014\u0010(\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\f0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0013R\u0014\u0010+\u001a\u00020,8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0013R\u0016\u00102\u001a\u0004\u0018\u0001038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00105¨\u0006H"}, d2 = {"Lkotlin/reflect/jvm/internal/KCallableImpl;", "R", "Lkotlin/reflect/KCallable;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "()V", "_annotations", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "", "", "kotlin.jvm.PlatformType", "_parameters", "Ljava/util/ArrayList;", "Lkotlin/reflect/KParameter;", "_returnType", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "_typeParameters", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "annotations", "getAnnotations", "()Ljava/util/List;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;", "isAbstract", "", "()Z", "isAnnotationConstructor", "isBound", "isFinal", "isOpen", "parameters", "getParameters", "returnType", "Lkotlin/reflect/KType;", "getReturnType", "()Lkotlin/reflect/KType;", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "call", "args", "", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "callAnnotationConstructor", "", "(Ljava/util/Map;)Ljava/lang/Object;", "callBy", "callDefaultMethod", "continuationArgument", "Lkotlin/coroutines/Continuation;", "callDefaultMethod$kotlin_reflection", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "defaultEmptyArray", "type", "extractContinuationArgument", "Ljava/lang/reflect/Type;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f.class */
public abstract class f<R> implements KCallable<R>, aa {

    /* renamed from: a  reason: collision with root package name */
    private final ad.a<List<Annotation>> f36922a;

    /* renamed from: b  reason: collision with root package name */
    private final ad.a<ArrayList<k>> f36923b;

    /* renamed from: c  reason: collision with root package name */
    private final ad.a<w> f36924c;

    /* renamed from: d  reason: collision with root package name */
    private final ad.a<List<y>> f36925d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "R", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$a.class */
    static final class a extends r implements Function0<List<? extends Annotation>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends Annotation> invoke() {
            return aj.a((kotlin.reflect.jvm.internal.impl.descriptors.a.a) f.this.b());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/util/ArrayList;", "Lkotlin/reflect/KParameter;", "kotlin.jvm.PlatformType", "R", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b.class */
    static final class b extends r implements Function0<ArrayList<k>> {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$1.class */
        static final class AnonymousClass1 extends r implements Function0<ak> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ aq f36928a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(aq aqVar) {
                super(0);
                this.f36928a = aqVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ ak invoke() {
                return this.f36928a;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$2  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$2.class */
        static final class AnonymousClass2 extends r implements Function0<ak> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ aq f36929a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(aq aqVar) {
                super(0);
                this.f36929a = aqVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ ak invoke() {
                return this.f36929a;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$3  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$3.class */
        static final class AnonymousClass3 extends r implements Function0<ak> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.b f36930a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f36931b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, int i) {
                super(0);
                this.f36930a = bVar;
                this.f36931b = i;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ ak invoke() {
                ba baVar = this.f36930a.getValueParameters().get(this.f36931b);
                p.b(baVar, "descriptor.valueParameters[i]");
                return baVar;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", com.google.api.client.googleapis.notifications.b.f31754a, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$a.class */
        public static final class a<T> implements Comparator<T> {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.b.a.a(((k) t).a(), ((k) t2).a());
            }
        }

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ ArrayList<k> invoke() {
            int i;
            int i2;
            kotlin.reflect.jvm.internal.impl.descriptors.b b2 = f.this.b();
            ArrayList<k> arrayList = new ArrayList<>();
            int i3 = 0;
            if (!f.this.f()) {
                aq a2 = aj.a((kotlin.reflect.jvm.internal.impl.descriptors.a) b2);
                if (a2 != null) {
                    arrayList.add(new q(f.this, 0, k.a.INSTANCE, new AnonymousClass1(a2)));
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                aq extensionReceiverParameter = b2.getExtensionReceiverParameter();
                i = i2;
                if (extensionReceiverParameter != null) {
                    arrayList.add(new q(f.this, i2, k.a.EXTENSION_RECEIVER, new AnonymousClass2(extensionReceiverParameter)));
                    i = i2 + 1;
                }
            } else {
                i = 0;
            }
            List<ba> valueParameters = b2.getValueParameters();
            p.b(valueParameters, "descriptor.valueParameters");
            int size = valueParameters.size();
            while (i3 < size) {
                arrayList.add(new q(f.this, i, k.a.VALUE, new AnonymousClass3(b2, i3)));
                i3++;
                i++;
            }
            if (f.this.g() && (b2 instanceof kotlin.reflect.jvm.internal.impl.load.java.b.b)) {
                ArrayList<k> arrayList2 = arrayList;
                if (arrayList2.size() > 1) {
                    n.a((List) arrayList2, (Comparator) new a());
                }
            }
            arrayList.trimToSize();
            return arrayList;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "R", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$c.class */
    static final class c extends r implements Function0<w> {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "R", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$c$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$c$1.class */
        static final class AnonymousClass1 extends r implements Function0<Type> {
            AnonymousClass1() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Type invoke() {
                Type a2 = f.a(f.this);
                Type type = a2;
                if (a2 == null) {
                    type = f.this.c().b();
                }
                return type;
            }
        }

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ w invoke() {
            KotlinType returnType = f.this.b().getReturnType();
            p.a(returnType);
            p.b(returnType, "descriptor.returnType!!");
            return new w(returnType, new AnonymousClass1());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "kotlin.jvm.PlatformType", "R", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$d.class */
    static final class d extends r implements Function0<List<? extends y>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends y> invoke() {
            List<TypeParameterDescriptor> typeParameters = f.this.b().getTypeParameters();
            p.b(typeParameters, "descriptor.typeParameters");
            List<TypeParameterDescriptor> list = typeParameters;
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            for (TypeParameterDescriptor descriptor : list) {
                p.b(descriptor, "descriptor");
                arrayList.add(new y(f.this, descriptor));
            }
            return arrayList;
        }
    }

    public f() {
        ad.a<List<Annotation>> b2 = ad.b(new a());
        p.b(b2, "ReflectProperties.lazySo…or.computeAnnotations() }");
        this.f36922a = b2;
        ad.a<ArrayList<k>> b3 = ad.b(new b());
        p.b(b3, "ReflectProperties.lazySo…ze()\n        result\n    }");
        this.f36923b = b3;
        ad.a<w> b4 = ad.b(new c());
        p.b(b4, "ReflectProperties.lazySo…eturnType\n        }\n    }");
        this.f36924c = b4;
        ad.a<List<y>> b5 = ad.b(new d());
        p.b(b5, "ReflectProperties.lazySo…this, descriptor) }\n    }");
        this.f36925d = b5;
    }

    private R a(Map<k, ? extends Object> args) {
        boolean z;
        p.d(args, "args");
        List<k> parameters = getParameters();
        ArrayList arrayList = new ArrayList(parameters.size());
        ArrayList arrayList2 = new ArrayList(1);
        Iterator<k> it2 = parameters.iterator();
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        while (true) {
            Object obj = null;
            if (it2.hasNext()) {
                k next = it2.next();
                int i3 = i2;
                if (i != 0) {
                    i3 = i2;
                    if (i % 32 == 0) {
                        arrayList2.add(Integer.valueOf(i2));
                        i3 = 0;
                    }
                }
                if (args.containsKey(next)) {
                    arrayList.add(args.get(next));
                    z = z2;
                } else if (next.d()) {
                    if (!aj.a(next.b())) {
                        KType javaType = next.b();
                        p.d(javaType, "$this$javaType");
                        Type am_ = ((w) javaType).am_();
                        Type type = am_;
                        if (am_ == null) {
                            type = w.a(javaType);
                        }
                        obj = aj.a(type);
                    }
                    arrayList.add(obj);
                    i3 = (1 << (i % 32)) | i3;
                    z = true;
                } else if (next.e()) {
                    arrayList.add(a(next.b()));
                    z = z2;
                } else {
                    throw new IllegalArgumentException("No argument provided for a required parameter: ".concat(String.valueOf(next)));
                }
                z2 = z;
                i2 = i3;
                if (next.c() == k.a.VALUE) {
                    i++;
                    z2 = z;
                    i2 = i3;
                }
            } else if (!z2) {
                Object[] array = arrayList.toArray(new Object[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                return call(Arrays.copyOf(array, array.length));
            } else {
                arrayList2.add(Integer.valueOf(i2));
                kotlin.reflect.jvm.internal.a.d<?> d2 = d();
                if (d2 != null) {
                    arrayList.addAll(arrayList2);
                    arrayList.add(null);
                    try {
                        Object[] array2 = arrayList.toArray(new Object[0]);
                        if (array2 != null) {
                            return (R) d2.a(array2);
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    } catch (IllegalAccessException e) {
                        throw new IllegalCallableAccessException(e);
                    }
                } else {
                    throw new ab("This callable does not support a default call: " + b());
                }
            }
        }
    }

    private static Object a(KType kType) {
        Class a2 = kotlin.jvm.a.a(kotlin.reflect.jvm.a.a(kType));
        if (a2.isArray()) {
            Object newInstance = Array.newInstance(a2.getComponentType(), 0);
            p.b(newInstance, "type.jvmErasure.java.run…\"\n            )\n        }");
            return newInstance;
        }
        throw new ab("Cannot instantiate the default empty array of type " + a2.getSimpleName() + ", because it is not an array type");
    }

    public static final /* synthetic */ Type a(f fVar) {
        Type[] lowerBounds;
        kotlin.reflect.jvm.internal.impl.descriptors.b b2 = fVar.b();
        kotlin.reflect.jvm.internal.impl.descriptors.b bVar = b2;
        if (!(b2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.w)) {
            bVar = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.w wVar = (kotlin.reflect.jvm.internal.impl.descriptors.w) bVar;
        if (wVar == null || !wVar.isSuspend()) {
            return null;
        }
        Object h = n.h((List<? extends Object>) fVar.c().c());
        Object obj = h;
        if (!(h instanceof ParameterizedType)) {
            obj = null;
        }
        ParameterizedType parameterizedType = (ParameterizedType) obj;
        if (!p.a(parameterizedType != null ? parameterizedType.getRawType() : null, kotlin.c.d.class)) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        p.b(actualTypeArguments, "continuationType.actualTypeArguments");
        Object f = i.f(actualTypeArguments);
        Object obj2 = f;
        if (!(f instanceof WildcardType)) {
            obj2 = null;
        }
        WildcardType wildcardType = (WildcardType) obj2;
        if (wildcardType == null || (lowerBounds = wildcardType.getLowerBounds()) == null) {
            return null;
        }
        return (Type) i.c(lowerBounds);
    }

    private final R b(Map<k, ? extends Object> map) {
        Object obj;
        List<k> parameters = getParameters();
        ArrayList arrayList = new ArrayList(n.a((Iterable) parameters, 10));
        for (k kVar : parameters) {
            if (map.containsKey(kVar)) {
                obj = map.get(kVar);
                if (obj == null) {
                    throw new IllegalArgumentException("Annotation argument value cannot be null (" + kVar + ')');
                }
            } else if (kVar.d()) {
                obj = null;
            } else if (kVar.e()) {
                obj = a(kVar.b());
            } else {
                throw new IllegalArgumentException("No argument provided for a required parameter: ".concat(String.valueOf(kVar)));
            }
            arrayList.add(obj);
        }
        ArrayList arrayList2 = arrayList;
        kotlin.reflect.jvm.internal.a.d<?> d2 = d();
        if (d2 != null) {
            try {
                Object[] array = arrayList2.toArray(new Object[0]);
                if (array != null) {
                    return (R) d2.a(array);
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            } catch (IllegalAccessException e) {
                throw new IllegalCallableAccessException(e);
            }
        } else {
            throw new ab("This callable does not support a default call: " + b());
        }
    }

    public abstract kotlin.reflect.jvm.internal.impl.descriptors.b b();

    public abstract kotlin.reflect.jvm.internal.a.d<?> c();

    @Override // kotlin.reflect.KCallable
    public R call(Object... args) {
        p.d(args, "args");
        try {
            return (R) c().a(args);
        } catch (IllegalAccessException e) {
            throw new IllegalCallableAccessException(e);
        }
    }

    @Override // kotlin.reflect.KCallable
    public R callBy(Map<k, ? extends Object> args) {
        p.d(args, "args");
        return g() ? b(args) : a(args);
    }

    public abstract kotlin.reflect.jvm.internal.a.d<?> d();

    public abstract k e();

    public abstract boolean f();

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean g() {
        return p.a((Object) getName(), (Object) "<init>") && e().a().isAnnotation();
    }

    @Override // kotlin.reflect.b
    public List<Annotation> getAnnotations() {
        List<Annotation> invoke = this.f36922a.invoke();
        p.b(invoke, "_annotations()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public List<k> getParameters() {
        ArrayList<k> invoke = this.f36923b.invoke();
        p.b(invoke, "_parameters()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        w invoke = this.f36924c.invoke();
        p.b(invoke, "_returnType()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public List<kotlin.reflect.p> getTypeParameters() {
        List<y> invoke = this.f36925d.invoke();
        p.b(invoke, "_typeParameters()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public KVisibility getVisibility() {
        s visibility = b().getVisibility();
        p.b(visibility, "descriptor.visibility");
        return aj.a(visibility);
    }

    @Override // kotlin.reflect.KCallable
    public boolean isAbstract() {
        return b().getModality() == y.ABSTRACT;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isFinal() {
        return b().getModality() == y.FINAL;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isOpen() {
        return b().getModality() == y.OPEN;
    }
}
