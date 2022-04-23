package kotlin.reflect.jvm.internal.impl.e;

import java.util.Set;
import kotlin.a.ab;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.e.b;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g.class */
public final class g implements f {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37625a = {ac.a(new w(ac.b(g.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), ac.a(new w(ac.b(g.class), "withDefinedIn", "getWithDefinedIn()Z")), ac.a(new w(ac.b(g.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), ac.a(new w(ac.b(g.class), "modifiers", "getModifiers()Ljava/util/Set;")), ac.a(new w(ac.b(g.class), "startFromName", "getStartFromName()Z")), ac.a(new w(ac.b(g.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), ac.a(new w(ac.b(g.class), "debugMode", "getDebugMode()Z")), ac.a(new w(ac.b(g.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), ac.a(new w(ac.b(g.class), "verbose", "getVerbose()Z")), ac.a(new w(ac.b(g.class), "unitReturnType", "getUnitReturnType()Z")), ac.a(new w(ac.b(g.class), "withoutReturnType", "getWithoutReturnType()Z")), ac.a(new w(ac.b(g.class), "enhancedTypes", "getEnhancedTypes()Z")), ac.a(new w(ac.b(g.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), ac.a(new w(ac.b(g.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), ac.a(new w(ac.b(g.class), "renderDefaultModality", "getRenderDefaultModality()Z")), ac.a(new w(ac.b(g.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), ac.a(new w(ac.b(g.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), ac.a(new w(ac.b(g.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), ac.a(new w(ac.b(g.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), ac.a(new w(ac.b(g.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), ac.a(new w(ac.b(g.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), ac.a(new w(ac.b(g.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), ac.a(new w(ac.b(g.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), ac.a(new w(ac.b(g.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), ac.a(new w(ac.b(g.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), ac.a(new w(ac.b(g.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), ac.a(new w(ac.b(g.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), ac.a(new w(ac.b(g.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), ac.a(new w(ac.b(g.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), ac.a(new w(ac.b(g.class), "receiverAfterName", "getReceiverAfterName()Z")), ac.a(new w(ac.b(g.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), ac.a(new w(ac.b(g.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), ac.a(new w(ac.b(g.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), ac.a(new w(ac.b(g.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), ac.a(new w(ac.b(g.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), ac.a(new w(ac.b(g.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), ac.a(new w(ac.b(g.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), ac.a(new w(ac.b(g.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), ac.a(new w(ac.b(g.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), ac.a(new w(ac.b(g.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), ac.a(new w(ac.b(g.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), ac.a(new w(ac.b(g.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), ac.a(new w(ac.b(g.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), ac.a(new w(ac.b(g.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), ac.a(new w(ac.b(g.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), ac.a(new w(ac.b(g.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), ac.a(new w(ac.b(g.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), ac.a(new w(ac.b(g.class), "informativeErrorType", "getInformativeErrorType()Z"))};

    /* renamed from: b  reason: collision with root package name */
    boolean f37626b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteProperty f37627c = a((g) b.c.f37598a);

    /* renamed from: d  reason: collision with root package name */
    final ReadWriteProperty f37628d = a((g) Boolean.TRUE);
    final ReadWriteProperty e = a((g) Boolean.TRUE);
    final ReadWriteProperty f = a((g) e.ALL_EXCEPT_ANNOTATIONS);
    final ReadWriteProperty g = a((g) Boolean.FALSE);
    final ReadWriteProperty h = a((g) Boolean.FALSE);
    private final ReadWriteProperty S = a((g) Boolean.FALSE);
    final ReadWriteProperty i = a((g) Boolean.FALSE);
    final ReadWriteProperty j = a((g) Boolean.FALSE);
    final ReadWriteProperty k = a((g) Boolean.TRUE);
    final ReadWriteProperty l = a((g) Boolean.FALSE);
    private final ReadWriteProperty T = a((g) Boolean.FALSE);
    final ReadWriteProperty m = a((g) Boolean.FALSE);
    private final ReadWriteProperty U = a((g) Boolean.TRUE);
    final ReadWriteProperty n = a((g) Boolean.TRUE);
    final ReadWriteProperty o = a((g) Boolean.FALSE);
    final ReadWriteProperty p = a((g) Boolean.FALSE);
    final ReadWriteProperty q = a((g) Boolean.FALSE);
    final ReadWriteProperty r = a((g) Boolean.FALSE);
    final ReadWriteProperty s = a((g) Boolean.FALSE);
    final ReadWriteProperty t = a((g) Boolean.FALSE);
    final ReadWriteProperty u = a((g) Boolean.FALSE);
    final ReadWriteProperty v = a((g) c.f37632a);
    final ReadWriteProperty w = a((g) a.f37629a);
    final ReadWriteProperty x = a((g) Boolean.TRUE);
    final ReadWriteProperty y = a((g) j.RENDER_OPEN);
    final ReadWriteProperty z = a((g) c.l.a.f37614a);
    final ReadWriteProperty A = a((g) m.PLAIN);
    final ReadWriteProperty B = a((g) k.ALL);
    final ReadWriteProperty C = a((g) Boolean.FALSE);
    final ReadWriteProperty D = a((g) Boolean.FALSE);
    final ReadWriteProperty E = a((g) l.DEBUG);
    final ReadWriteProperty F = a((g) Boolean.FALSE);
    final ReadWriteProperty G = a((g) Boolean.FALSE);
    final ReadWriteProperty H = a((g) ab.f36567a);
    private final ReadWriteProperty V = a((g) h.a());
    final ReadWriteProperty I = a((g) null);
    private final ReadWriteProperty W = a((g) kotlin.reflect.jvm.internal.impl.e.a.NO_ARGUMENTS);
    final ReadWriteProperty J = a((g) Boolean.FALSE);
    final ReadWriteProperty K = a((g) Boolean.TRUE);
    final ReadWriteProperty L = a((g) Boolean.TRUE);
    final ReadWriteProperty M = a((g) Boolean.FALSE);
    final ReadWriteProperty N = a((g) Boolean.TRUE);
    final ReadWriteProperty O = a((g) Boolean.TRUE);
    private final ReadWriteProperty X = a((g) Boolean.FALSE);
    final ReadWriteProperty P = a((g) Boolean.FALSE);
    final ReadWriteProperty Q = a((g) Boolean.FALSE);
    final ReadWriteProperty R = a((g) Boolean.TRUE);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g$a.class */
    static final class a extends r implements Function1<ba, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37629a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(ba baVar) {
            ba it2 = baVar;
            p.d(it2, "it");
            return "...";
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g$b.class */
    public static final class b extends kotlin.properties.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f37630a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g f37631b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Object obj, Object obj2, g gVar) {
            super(obj2);
            this.f37630a = obj;
            this.f37631b = gVar;
        }

        @Override // kotlin.properties.b
        public final boolean beforeChange(KProperty<?> property, T t, T t2) {
            p.d(property, "property");
            if (!this.f37631b.f37626b) {
                return true;
            }
            throw new IllegalStateException("Cannot modify readonly DescriptorRendererOptions");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/g$c.class */
    static final class c extends r implements Function1<KotlinType, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37632a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(KotlinType kotlinType) {
            KotlinType it2 = kotlinType;
            p.d(it2, "it");
            return it2;
        }
    }

    public g() {
        h hVar = h.f37633a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> ReadWriteProperty<g, T> a(T t) {
        kotlin.properties.a aVar = kotlin.properties.a.f36815a;
        return new b(t, t, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final kotlin.reflect.jvm.internal.impl.e.a a() {
        return (kotlin.reflect.jvm.internal.impl.e.a) this.W.getValue(this, f37625a[37]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(Set<kotlin.reflect.jvm.internal.impl.c.b> set) {
        p.d(set, "<set-?>");
        this.V.setValue(this, f37625a[35], set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(kotlin.reflect.jvm.internal.impl.e.a aVar) {
        p.d(aVar, "<set-?>");
        this.W.setValue(this, f37625a[37], aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(kotlin.reflect.jvm.internal.impl.e.b bVar) {
        p.d(bVar, "<set-?>");
        this.f37627c.setValue(this, f37625a[0], bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(k kVar) {
        p.d(kVar, "<set-?>");
        this.B.setValue(this, f37625a[28], kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(m mVar) {
        p.d(mVar, "<set-?>");
        this.A.setValue(this, f37625a[27], mVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(boolean z) {
        this.S.setValue(this, f37625a[6], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void b(Set<? extends e> set) {
        p.d(set, "<set-?>");
        this.f.setValue(this, f37625a[3], set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void b(boolean z) {
        this.C.setValue(this, f37625a[29], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final boolean b() {
        return ((Boolean) this.S.getValue(this, f37625a[6])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void c(boolean z) {
        this.D.setValue(this, f37625a[30], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final boolean c() {
        return ((Boolean) this.T.getValue(this, f37625a[11])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final Set<kotlin.reflect.jvm.internal.impl.c.b> d() {
        return (Set) this.V.getValue(this, f37625a[35]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void d(boolean z) {
        this.g.setValue(this, f37625a[4], Boolean.valueOf(z));
    }

    public final void e() {
        boolean z = this.f37626b;
        if (!x.f38657a || (!z)) {
            this.f37626b = true;
            return;
        }
        throw new AssertionError("Assertion failed");
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void e(boolean z) {
        this.j.setValue(this, f37625a[8], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void f(boolean z) {
        this.f37628d.setValue(this, f37625a[1], Boolean.valueOf(z));
    }

    public final boolean f() {
        return ((Boolean) this.U.getValue(this, f37625a[13])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void g(boolean z) {
        this.u.setValue(this, f37625a[21], Boolean.valueOf(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void h(boolean z) {
        this.t.setValue(this, f37625a[20], Boolean.valueOf(z));
    }
}
