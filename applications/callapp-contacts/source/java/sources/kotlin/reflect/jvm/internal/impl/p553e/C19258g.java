package kotlin.reflect.jvm.internal.impl.p553e;

import java.util.Set;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.C18531w;
import kotlin.p518a.C18240ab;
import kotlin.properties.AbstractC18544b;
import kotlin.properties.C18543a;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19226b;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g.class */
public final class C19258g implements AbstractC19257f {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f65059a = {C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "withDefinedIn", "getWithDefinedIn()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "modifiers", "getModifiers()Ljava/util/Set;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "startFromName", "getStartFromName()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "debugMode", "getDebugMode()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "verbose", "getVerbose()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "unitReturnType", "getUnitReturnType()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "withoutReturnType", "getWithoutReturnType()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "enhancedTypes", "getEnhancedTypes()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderDefaultModality", "getRenderDefaultModality()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "receiverAfterName", "getReceiverAfterName()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), C18496ac.m3884a(new C18531w(C18496ac.m3882b(C19258g.class), "informativeErrorType", "getInformativeErrorType()Z"))};

    /* renamed from: b */
    boolean f65084b;

    /* renamed from: c */
    final ReadWriteProperty f65085c = m2374a((C19258g) AbstractC19226b.C19229c.f65023a);

    /* renamed from: d */
    final ReadWriteProperty f65086d = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: e */
    final ReadWriteProperty f65087e = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: f */
    final ReadWriteProperty f65088f = m2374a((C19258g) EnumC19255e.ALL_EXCEPT_ANNOTATIONS);

    /* renamed from: g */
    final ReadWriteProperty f65089g = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: h */
    final ReadWriteProperty f65090h = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: S */
    private final ReadWriteProperty f65078S = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: i */
    final ReadWriteProperty f65091i = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: j */
    final ReadWriteProperty f65092j = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: k */
    final ReadWriteProperty f65093k = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: l */
    final ReadWriteProperty f65094l = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: T */
    private final ReadWriteProperty f65079T = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: m */
    final ReadWriteProperty f65095m = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: U */
    private final ReadWriteProperty f65080U = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: n */
    final ReadWriteProperty f65096n = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: o */
    final ReadWriteProperty f65097o = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: p */
    final ReadWriteProperty f65098p = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: q */
    final ReadWriteProperty f65099q = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: r */
    final ReadWriteProperty f65100r = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: s */
    final ReadWriteProperty f65101s = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: t */
    final ReadWriteProperty f65102t = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: u */
    final ReadWriteProperty f65103u = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: v */
    final ReadWriteProperty f65104v = m2374a((C19258g) C19261c.f65112a);

    /* renamed from: w */
    final ReadWriteProperty f65105w = m2374a((C19258g) C19259a.f65109a);

    /* renamed from: x */
    final ReadWriteProperty f65106x = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: y */
    final ReadWriteProperty f65107y = m2374a((C19258g) EnumC19264j.RENDER_OPEN);

    /* renamed from: z */
    final ReadWriteProperty f65108z = m2374a((C19258g) AbstractC19230c.AbstractC19243l.C19244a.f65046a);

    /* renamed from: A */
    final ReadWriteProperty f65060A = m2374a((C19258g) EnumC19267m.PLAIN);

    /* renamed from: B */
    final ReadWriteProperty f65061B = m2374a((C19258g) EnumC19265k.ALL);

    /* renamed from: C */
    final ReadWriteProperty f65062C = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: D */
    final ReadWriteProperty f65063D = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: E */
    final ReadWriteProperty f65064E = m2374a((C19258g) EnumC19266l.DEBUG);

    /* renamed from: F */
    final ReadWriteProperty f65065F = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: G */
    final ReadWriteProperty f65066G = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: H */
    final ReadWriteProperty f65067H = m2374a((C19258g) C18240ab.f63351a);

    /* renamed from: V */
    private final ReadWriteProperty f65081V = m2374a((C19258g) C19262h.m2354a());

    /* renamed from: I */
    final ReadWriteProperty f65068I = m2374a((C19258g) null);

    /* renamed from: W */
    private final ReadWriteProperty f65082W = m2374a((C19258g) EnumC19225a.NO_ARGUMENTS);

    /* renamed from: J */
    final ReadWriteProperty f65069J = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: K */
    final ReadWriteProperty f65070K = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: L */
    final ReadWriteProperty f65071L = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: M */
    final ReadWriteProperty f65072M = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: N */
    final ReadWriteProperty f65073N = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: O */
    final ReadWriteProperty f65074O = m2374a((C19258g) Boolean.TRUE);

    /* renamed from: X */
    private final ReadWriteProperty f65083X = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: P */
    final ReadWriteProperty f65075P = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: Q */
    final ReadWriteProperty f65076Q = m2374a((C19258g) Boolean.FALSE);

    /* renamed from: R */
    final ReadWriteProperty f65077R = m2374a((C19258g) Boolean.TRUE);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.e.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g$a.class */
    public static final class C19259a extends AbstractC18526r implements Function1<AbstractC19050ba, String> {

        /* renamed from: a */
        public static final C19259a f65109a = new C19259a();

        C19259a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(AbstractC19050ba abstractC19050ba) {
            AbstractC19050ba it2 = abstractC19050ba;
            C18524p.m3840d(it2, "it");
            return "...";
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g$b.class */
    public static final class C19260b extends AbstractC18544b<T> {

        /* renamed from: a */
        final /* synthetic */ Object f65110a;

        /* renamed from: b */
        final /* synthetic */ C19258g f65111b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19260b(Object obj, Object obj2, C19258g c19258g) {
            super(obj2);
            this.f65110a = obj;
            this.f65111b = c19258g;
        }

        @Override // kotlin.properties.AbstractC18544b
        public final boolean beforeChange(KProperty<?> property, T t, T t2) {
            C18524p.m3840d(property, "property");
            if (!this.f65111b.f65084b) {
                return true;
            }
            throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.e.g$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g$c.class */
    public static final class C19261c extends AbstractC18526r implements Function1<KotlinType, KotlinType> {

        /* renamed from: a */
        public static final C19261c f65112a = new C19261c();

        C19261c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(KotlinType kotlinType) {
            KotlinType it2 = kotlinType;
            C18524p.m3840d(it2, "it");
            return it2;
        }
    }

    public C19258g() {
        C19262h c19262h = C19262h.f65113a;
    }

    /* renamed from: a */
    public final <T> ReadWriteProperty<C19258g, T> m2374a(T t) {
        C18543a c18543a = C18543a.f63629a;
        return new C19260b(t, t, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final EnumC19225a mo2375a() {
        return (EnumC19225a) this.f65082W.getValue(this, f65059a[37]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2373a(Set<C18961b> set) {
        C18524p.m3840d(set, "<set-?>");
        this.f65081V.setValue(this, f65059a[35], set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2372a(EnumC19225a enumC19225a) {
        C18524p.m3840d(enumC19225a, "<set-?>");
        this.f65082W.setValue(this, f65059a[37], enumC19225a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2371a(AbstractC19226b abstractC19226b) {
        C18524p.m3840d(abstractC19226b, "<set-?>");
        this.f65085c.setValue(this, f65059a[0], abstractC19226b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2370a(EnumC19265k enumC19265k) {
        C18524p.m3840d(enumC19265k, "<set-?>");
        this.f65061B.setValue(this, f65059a[28], enumC19265k);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2369a(EnumC19267m enumC19267m) {
        C18524p.m3840d(enumC19267m, "<set-?>");
        this.f65060A.setValue(this, f65059a[27], enumC19267m);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2368a(boolean z) {
        this.f65078S.setValue(this, f65059a[6], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: b */
    public final void mo2366b(Set<? extends EnumC19255e> set) {
        C18524p.m3840d(set, "<set-?>");
        this.f65088f.setValue(this, f65059a[3], set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: b */
    public final void mo2365b(boolean z) {
        this.f65062C.setValue(this, f65059a[29], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: b */
    public final boolean mo2367b() {
        return ((Boolean) this.f65078S.getValue(this, f65059a[6])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: c */
    public final void mo2363c(boolean z) {
        this.f65063D.setValue(this, f65059a[30], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: c */
    public final boolean mo2364c() {
        return ((Boolean) this.f65079T.getValue(this, f65059a[11])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: d */
    public final Set<C18961b> mo2362d() {
        return (Set) this.f65081V.getValue(this, f65059a[35]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: d */
    public final void mo2361d(boolean z) {
        this.f65089g.setValue(this, f65059a[4], Boolean.valueOf(z));
    }

    /* renamed from: e */
    public final void m2360e() {
        boolean z = this.f65084b;
        if (!C20130x.f66532a || (!z)) {
            this.f65084b = true;
            return;
        }
        throw new AssertionError("Assertion failed");
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: e */
    public final void mo2359e(boolean z) {
        this.f65092j.setValue(this, f65059a[8], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: f */
    public final void mo2357f(boolean z) {
        this.f65086d.setValue(this, f65059a[1], Boolean.valueOf(z));
    }

    /* renamed from: f */
    public final boolean m2358f() {
        return ((Boolean) this.f65080U.getValue(this, f65059a[13])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: g */
    public final void mo2356g(boolean z) {
        this.f65103u.setValue(this, f65059a[21], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: h */
    public final void mo2355h(boolean z) {
        this.f65102t.setValue(this, f65059a[20], Boolean.valueOf(z));
    }
}
