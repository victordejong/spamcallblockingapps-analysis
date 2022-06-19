package kotlin.reflect.jvm.internal;

import com.google.api.client.googleapis.notifications.C15291b;
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
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
import kotlin.p521c.AbstractC18332d;
import kotlin.reflect.AbstractC20103k;
import kotlin.reflect.AbstractC20111p;
import kotlin.reflect.C20120w;
import kotlin.reflect.KCallable;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.C18568a;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19014ak;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19368b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.p535a.AbstractC18584d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0094\u0001\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\b \u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J%\u00106\u001a\u00028��2\u0016\u00107\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0016¢\u0006\u0002\u0010:J#\u0010;\u001a\u00028��2\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0002¢\u0006\u0002\u0010=J#\u0010>\u001a\u00028��2\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<H\u0016¢\u0006\u0002\u0010=J3\u0010?\u001a\u00028��2\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u0001090<2\f\u0010@\u001a\b\u0012\u0002\b\u0003\u0018\u00010AH��¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020,H\u0002J\n\u0010F\u001a\u0004\u0018\u00010GH\u0002R(\u0010\u0005\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\b \t*\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R(\u0010\n\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\f \t*\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b0\u000b0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\r\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\u000e0\u000e0\u0006X\u0082\u0004¢\u0006\u0002\n��R(\u0010\u000f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010 \t*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00070\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u0019X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0017R\u0012\u0010\u001e\u001a\u00020\u001fX¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010$R\u0014\u0010%\u001a\u00020#8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b%\u0010$R\u0012\u0010&\u001a\u00020#X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010$R\u0014\u0010'\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010$R\u0014\u0010(\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\f0\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0013R\u0014\u0010+\u001a\u00020,8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u0002000\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0013R\u0016\u00102\u001a\u0004\u0018\u0001038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00105¨\u0006H"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KCallableImpl;", "R", "Lkotlin/reflect/KCallable;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "()V", "_annotations", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "", "", "kotlin.jvm.PlatformType", "_parameters", "Ljava/util/ArrayList;", "Lkotlin/reflect/KParameter;", "_returnType", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "_typeParameters", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "annotations", "getAnnotations", "()Ljava/util/List;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;", "isAbstract", "", "()Z", "isAnnotationConstructor", "isBound", "isFinal", "isOpen", "parameters", "getParameters", "returnType", "Lkotlin/reflect/KType;", "getReturnType", "()Lkotlin/reflect/KType;", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "call", "args", "", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "callAnnotationConstructor", "", "(Ljava/util/Map;)Ljava/lang/Object;", "callBy", "callDefaultMethod", "continuationArgument", "Lkotlin/coroutines/Continuation;", "callDefaultMethod$kotlin_reflection", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "defaultEmptyArray", "type", "extractContinuationArgument", "Ljava/lang/reflect/Type;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f.class */
public abstract class AbstractC18659f<R> implements KCallable<R>, AbstractC18619aa {

    /* renamed from: a */
    private final C18622ad.C18623a<List<Annotation>> f63748a;

    /* renamed from: b */
    private final C18622ad.C18623a<ArrayList<AbstractC20103k>> f63749b;

    /* renamed from: c */
    private final C18622ad.C18623a<C20094w> f63750c;

    /* renamed from: d */
    private final C18622ad.C18623a<List<C20100y>> f63751d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "", "kotlin.jvm.PlatformType", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$a.class */
    public static final class C18660a extends AbstractC18526r implements Function0<List<? extends Annotation>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18660a() {
            super(0);
            AbstractC18659f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends Annotation> invoke() {
            return C18635aj.m3761a((AbstractC18975a) AbstractC18659f.this.mo1137b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "Ljava/util/ArrayList;", "Lkotlin/reflect/KParameter;", "kotlin.jvm.PlatformType", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.f$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b.class */
    public static final class C18661b extends AbstractC18526r implements Function0<ArrayList<AbstractC20103k>> {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$1.class */
        static final class C186621 extends AbstractC18526r implements Function0<AbstractC19014ak> {

            /* renamed from: a */
            final /* synthetic */ AbstractC19020aq f63754a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C186621(AbstractC19020aq abstractC19020aq) {
                super(0);
                this.f63754a = abstractC19020aq;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ AbstractC19014ak invoke() {
                return this.f63754a;
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$2 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$2.class */
        static final class C186632 extends AbstractC18526r implements Function0<AbstractC19014ak> {

            /* renamed from: a */
            final /* synthetic */ AbstractC19020aq f63755a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C186632(AbstractC19020aq abstractC19020aq) {
                super(0);
                this.f63755a = abstractC19020aq;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ AbstractC19014ak invoke() {
                return this.f63755a;
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$3 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$3.class */
        static final class C186643 extends AbstractC18526r implements Function0<AbstractC19014ak> {

            /* renamed from: a */
            final /* synthetic */ AbstractC19039b f63756a;

            /* renamed from: b */
            final /* synthetic */ int f63757b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C186643(AbstractC19039b abstractC19039b, int i) {
                super(0);
                this.f63756a = abstractC19039b;
                this.f63757b = i;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19014ak invoke() {
                AbstractC19050ba abstractC19050ba = this.f63756a.getValueParameters().get(this.f63757b);
                C18524p.m3843b(abstractC19050ba, "descriptor.valueParameters[i]");
                return abstractC19050ba;
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m4298d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", C15291b.f55271a, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$b$a.class */
        public static final class C18665a<T> implements Comparator<T> {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C18299a.m4103a(((AbstractC20103k) t).mo1120a(), ((AbstractC20103k) t2).mo1120a());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18661b() {
            super(0);
            AbstractC18659f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ ArrayList<AbstractC20103k> invoke() {
            int i;
            int i2;
            AbstractC19039b mo1137b = AbstractC18659f.this.mo1137b();
            ArrayList<AbstractC20103k> arrayList = new ArrayList<>();
            if (!AbstractC18659f.this.mo1139f()) {
                AbstractC19020aq m3759a = C18635aj.m3759a((AbstractC18973a) mo1137b);
                if (m3759a != null) {
                    arrayList.add(new C20064q(AbstractC18659f.this, 0, AbstractC20103k.EnumC20104a.INSTANCE, new C186621(m3759a)));
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                AbstractC19020aq extensionReceiverParameter = mo1137b.getExtensionReceiverParameter();
                i = i2;
                if (extensionReceiverParameter != null) {
                    arrayList.add(new C20064q(AbstractC18659f.this, i2, AbstractC20103k.EnumC20104a.EXTENSION_RECEIVER, new C186632(extensionReceiverParameter)));
                    i = i2 + 1;
                }
            } else {
                i = 0;
            }
            List<AbstractC19050ba> valueParameters = mo1137b.getValueParameters();
            C18524p.m3843b(valueParameters, "descriptor.valueParameters");
            int size = valueParameters.size();
            int i3 = 0;
            while (i3 < size) {
                arrayList.add(new C20064q(AbstractC18659f.this, i, AbstractC20103k.EnumC20104a.VALUE, new C186643(mo1137b, i3)));
                i3++;
                i++;
            }
            if (AbstractC18659f.this.m3726g() && (mo1137b instanceof AbstractC19368b)) {
                ArrayList<AbstractC20103k> arrayList2 = arrayList;
                if (arrayList2.size() > 1) {
                    C18282n.m4161a((List) arrayList2, (Comparator) new C18665a());
                }
            }
            arrayList.trimToSize();
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0003 \u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.f$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$c.class */
    public static final class C18666c extends AbstractC18526r implements Function0<C20094w> {

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.f$c$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$c$1.class */
        static final class C186671 extends AbstractC18526r implements Function0<Type> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C186671() {
                super(0);
                C18666c.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Type invoke() {
                Type m3728a = AbstractC18659f.m3728a(AbstractC18659f.this);
                Type type = m3728a;
                if (m3728a == null) {
                    type = AbstractC18659f.this.mo1136c().mo3801b();
                }
                return type;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18666c() {
            super(0);
            AbstractC18659f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C20094w invoke() {
            KotlinType returnType = AbstractC18659f.this.mo1137b().getReturnType();
            C18524p.m3851a(returnType);
            C18524p.m3843b(returnType, "descriptor.returnType!!");
            return new C20094w(returnType, new C186671());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\b��\u0010\u0004 \u0001H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "kotlin.jvm.PlatformType", "R", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.f$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/f$d.class */
    public static final class C18668d extends AbstractC18526r implements Function0<List<? extends C20100y>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18668d() {
            super(0);
            AbstractC18659f.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends C20100y> invoke() {
            List<TypeParameterDescriptor> typeParameters = AbstractC18659f.this.mo1137b().getTypeParameters();
            C18524p.m3843b(typeParameters, "descriptor.typeParameters");
            List<TypeParameterDescriptor> list = typeParameters;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (TypeParameterDescriptor descriptor : list) {
                C18524p.m3843b(descriptor, "descriptor");
                arrayList.add(new C20100y(AbstractC18659f.this, descriptor));
            }
            return arrayList;
        }
    }

    public AbstractC18659f() {
        C18622ad.C18623a<List<Annotation>> m3795b = C18622ad.m3795b(new C18660a());
        C18524p.m3843b(m3795b, "ReflectProperties.lazySo…or.computeAnnotations() }");
        this.f63748a = m3795b;
        C18622ad.C18623a<ArrayList<AbstractC20103k>> m3795b2 = C18622ad.m3795b(new C18661b());
        C18524p.m3843b(m3795b2, "ReflectProperties.lazySo…ze()\n        result\n    }");
        this.f63749b = m3795b2;
        C18622ad.C18623a<C20094w> m3795b3 = C18622ad.m3795b(new C18666c());
        C18524p.m3843b(m3795b3, "ReflectProperties.lazySo…eturnType\n        }\n    }");
        this.f63750c = m3795b3;
        C18622ad.C18623a<List<C20100y>> m3795b4 = C18622ad.m3795b(new C18668d());
        C18524p.m3843b(m3795b4, "ReflectProperties.lazySo…this, descriptor) }\n    }");
        this.f63751d = m3795b4;
    }

    /* renamed from: a */
    private R m3730a(Map<AbstractC20103k, ? extends Object> args) {
        boolean z;
        C18524p.m3840d(args, "args");
        List<AbstractC20103k> parameters = getParameters();
        ArrayList arrayList = new ArrayList(parameters.size());
        ArrayList arrayList2 = new ArrayList(1);
        Iterator<AbstractC20103k> it2 = parameters.iterator();
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        while (true) {
            Object obj = null;
            if (!it2.hasNext()) {
                if (!z2) {
                    Object[] array = arrayList.toArray(new Object[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    return call(Arrays.copyOf(array, array.length));
                }
                arrayList2.add(Integer.valueOf(i2));
                AbstractC18584d<?> mo1141d = mo1141d();
                if (mo1141d == null) {
                    throw new C18620ab("This callable does not support a default call: " + mo1137b());
                }
                arrayList.addAll(arrayList2);
                arrayList.add(null);
                try {
                    Object[] array2 = arrayList.toArray(new Object[0]);
                    if (array2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    return (R) mo1141d.mo3802a(array2);
                } catch (IllegalAccessException e) {
                    throw new IllegalCallableAccessException(e);
                }
            }
            AbstractC20103k next = it2.next();
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
            } else if (next.mo1117d()) {
                if (!C18635aj.m3762a(next.mo1119b())) {
                    KType javaType = next.mo1119b();
                    C18524p.m3840d(javaType, "$this$javaType");
                    Type am_ = ((C20094w) javaType).am_();
                    Type type = am_;
                    if (am_ == null) {
                        type = C20120w.m1108a(javaType);
                    }
                    obj = C18635aj.m3763a(type);
                }
                arrayList.add(obj);
                i3 = (1 << (i % 32)) | i3;
                z = true;
            } else if (!next.mo1116e()) {
                throw new IllegalArgumentException("No argument provided for a required parameter: ".concat(String.valueOf(next)));
            } else {
                arrayList.add(m3729a(next.mo1119b()));
                z = z2;
            }
            z2 = z;
            i2 = i3;
            if (next.mo1118c() == AbstractC20103k.EnumC20104a.VALUE) {
                i++;
                z2 = z;
                i2 = i3;
            }
        }
    }

    /* renamed from: a */
    private static Object m3729a(KType kType) {
        Class m3893a = C18458a.m3893a(C18568a.m3827a(kType));
        if (m3893a.isArray()) {
            Object newInstance = Array.newInstance(m3893a.getComponentType(), 0);
            C18524p.m3843b(newInstance, "type.jvmErasure.java.run…\"\n            )\n        }");
            return newInstance;
        }
        throw new C18620ab("Cannot instantiate the default empty array of type " + m3893a.getSimpleName() + ", because it is not an array type");
    }

    /* renamed from: a */
    public static final /* synthetic */ Type m3728a(AbstractC18659f abstractC18659f) {
        Type[] lowerBounds;
        AbstractC19039b mo1137b = abstractC18659f.mo1137b();
        AbstractC19039b abstractC19039b = mo1137b;
        if (!(mo1137b instanceof AbstractC19219w)) {
            abstractC19039b = null;
        }
        AbstractC19219w abstractC19219w = (AbstractC19219w) abstractC19039b;
        if (abstractC19219w == null || !abstractC19219w.isSuspend()) {
            return null;
        }
        Object h = C18282n.m4117h((List<? extends Object>) abstractC18659f.mo1136c().mo3800c());
        Object obj = h;
        if (!(h instanceof ParameterizedType)) {
            obj = null;
        }
        ParameterizedType parameterizedType = (ParameterizedType) obj;
        if (!C18524p.m3850a(parameterizedType != null ? parameterizedType.getRawType() : null, AbstractC18332d.class)) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        C18524p.m3843b(actualTypeArguments, "continuationType.actualTypeArguments");
        Object f = C18273i.m4186f(actualTypeArguments);
        Object obj2 = f;
        if (!(f instanceof WildcardType)) {
            obj2 = null;
        }
        WildcardType wildcardType = (WildcardType) obj2;
        if (wildcardType != null && (lowerBounds = wildcardType.getLowerBounds()) != null) {
            return (Type) C18273i.m4189c(lowerBounds);
        }
        return null;
    }

    /* renamed from: b */
    private final R m3727b(Map<AbstractC20103k, ? extends Object> map) {
        Object obj;
        List<AbstractC20103k> parameters = getParameters();
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) parameters, 10));
        for (AbstractC20103k abstractC20103k : parameters) {
            if (map.containsKey(abstractC20103k)) {
                obj = map.get(abstractC20103k);
                if (obj == null) {
                    throw new IllegalArgumentException("Annotation argument value cannot be null (" + abstractC20103k + ')');
                }
            } else if (abstractC20103k.mo1117d()) {
                obj = null;
            } else if (!abstractC20103k.mo1116e()) {
                throw new IllegalArgumentException("No argument provided for a required parameter: ".concat(String.valueOf(abstractC20103k)));
            } else {
                obj = m3729a(abstractC20103k.mo1119b());
            }
            arrayList.add(obj);
        }
        ArrayList arrayList2 = arrayList;
        AbstractC18584d<?> mo1141d = mo1141d();
        if (mo1141d == null) {
            throw new C18620ab("This callable does not support a default call: " + mo1137b());
        }
        try {
            Object[] array = arrayList2.toArray(new Object[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            return (R) mo1141d.mo3802a(array);
        } catch (IllegalAccessException e) {
            throw new IllegalCallableAccessException(e);
        }
    }

    /* renamed from: b */
    public abstract AbstractC19039b mo1137b();

    /* renamed from: c */
    public abstract AbstractC18584d<?> mo1136c();

    @Override // kotlin.reflect.KCallable
    public R call(Object... args) {
        C18524p.m3840d(args, "args");
        try {
            return (R) mo1136c().mo3802a(args);
        } catch (IllegalAccessException e) {
            throw new IllegalCallableAccessException(e);
        }
    }

    @Override // kotlin.reflect.KCallable
    public R callBy(Map<AbstractC20103k, ? extends Object> args) {
        C18524p.m3840d(args, "args");
        return m3726g() ? m3727b(args) : m3730a(args);
    }

    /* renamed from: d */
    public abstract AbstractC18584d<?> mo1141d();

    /* renamed from: e */
    public abstract AbstractC20033k mo1140e();

    /* renamed from: f */
    public abstract boolean mo1139f();

    /* renamed from: g */
    public final boolean m3726g() {
        return C18524p.m3850a((Object) getName(), (Object) "<init>") && mo1140e().mo1163a().isAnnotation();
    }

    @Override // kotlin.reflect.AbstractC18550b
    public List<Annotation> getAnnotations() {
        List<Annotation> invoke = this.f63748a.invoke();
        C18524p.m3843b(invoke, "_annotations()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public List<AbstractC20103k> getParameters() {
        ArrayList<AbstractC20103k> invoke = this.f63749b.invoke();
        C18524p.m3843b(invoke, "_parameters()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        C20094w invoke = this.f63750c.invoke();
        C18524p.m3843b(invoke, "_returnType()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public List<AbstractC20111p> getTypeParameters() {
        List<C20100y> invoke = this.f63751d.invoke();
        C18524p.m3843b(invoke, "_typeParameters()");
        return invoke;
    }

    @Override // kotlin.reflect.KCallable
    public KVisibility getVisibility() {
        AbstractC19213s visibility = mo1137b().getVisibility();
        C18524p.m3843b(visibility, "descriptor.visibility");
        return C18635aj.m3757a(visibility);
    }

    @Override // kotlin.reflect.KCallable
    public boolean isAbstract() {
        return mo1137b().getModality() == EnumC19222y.ABSTRACT;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isFinal() {
        return mo1137b().getModality() == EnumC19222y.FINAL;
    }

    @Override // kotlin.reflect.KCallable
    public boolean isOpen() {
        return mo1137b().getModality() == EnumC19222y.OPEN;
    }
}
