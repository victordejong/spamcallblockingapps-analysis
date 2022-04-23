package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import io.objectbox.model.PropertyFlags;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.af;
import kotlin.reflect.jvm.internal.impl.descriptors.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.b.b;
import kotlin.reflect.jvm.internal.impl.descriptors.b.c;
import kotlin.reflect.jvm.internal.impl.descriptors.b.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final n f38441a;

    /* renamed from: b  reason: collision with root package name */
    public final ab f38442b;

    /* renamed from: c  reason: collision with root package name */
    public final DeserializationConfiguration f38443c;

    /* renamed from: d  reason: collision with root package name */
    final g f38444d;
    public final c<c, g<?>> e;
    final af f;
    final s g;
    public final o h;
    public final kotlin.reflect.jvm.internal.impl.a.a.c i;
    final p j;
    public final Iterable<b> k;
    public final ad l;
    final i m;
    public final a n;
    public final kotlin.reflect.jvm.internal.impl.descriptors.b.c o;
    public final f p;
    public final NewKotlinTypeChecker q;
    final e r;
    public final h s;
    private final kotlin.reflect.jvm.internal.impl.resolve.d.a t;

    /* JADX WARN: Multi-variable type inference failed */
    public j(n storageManager, ab moduleDescriptor, DeserializationConfiguration configuration, g classDataFinder, c<? extends c, ? extends g<?>> annotationAndConstantLoader, af packageFragmentProvider, s localClassifierTypeSettings, o errorReporter, kotlin.reflect.jvm.internal.impl.a.a.c lookupTracker, p flexibleTypeDeserializer, Iterable<? extends b> fictitiousClassDescriptorFactories, ad notFoundClasses, i contractDeserializer, a additionalClassPartsProvider, kotlin.reflect.jvm.internal.impl.descriptors.b.c platformDependentDeclarationFilter, f extensionRegistryLite, NewKotlinTypeChecker kotlinTypeChecker, kotlin.reflect.jvm.internal.impl.resolve.d.a samConversionResolver, e platformDependentTypeTransformer) {
        p.d(storageManager, "storageManager");
        p.d(moduleDescriptor, "moduleDescriptor");
        p.d(configuration, "configuration");
        p.d(classDataFinder, "classDataFinder");
        p.d(annotationAndConstantLoader, "annotationAndConstantLoader");
        p.d(packageFragmentProvider, "packageFragmentProvider");
        p.d(localClassifierTypeSettings, "localClassifierTypeSettings");
        p.d(errorReporter, "errorReporter");
        p.d(lookupTracker, "lookupTracker");
        p.d(flexibleTypeDeserializer, "flexibleTypeDeserializer");
        p.d(fictitiousClassDescriptorFactories, "fictitiousClassDescriptorFactories");
        p.d(notFoundClasses, "notFoundClasses");
        p.d(contractDeserializer, "contractDeserializer");
        p.d(additionalClassPartsProvider, "additionalClassPartsProvider");
        p.d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        p.d(extensionRegistryLite, "extensionRegistryLite");
        p.d(kotlinTypeChecker, "kotlinTypeChecker");
        p.d(samConversionResolver, "samConversionResolver");
        p.d(platformDependentTypeTransformer, "platformDependentTypeTransformer");
        this.f38441a = storageManager;
        this.f38442b = moduleDescriptor;
        this.f38443c = configuration;
        this.f38444d = classDataFinder;
        this.e = annotationAndConstantLoader;
        this.f = packageFragmentProvider;
        this.g = localClassifierTypeSettings;
        this.h = errorReporter;
        this.i = lookupTracker;
        this.j = flexibleTypeDeserializer;
        this.k = fictitiousClassDescriptorFactories;
        this.l = notFoundClasses;
        this.m = contractDeserializer;
        this.n = additionalClassPartsProvider;
        this.o = platformDependentDeclarationFilter;
        this.p = extensionRegistryLite;
        this.q = kotlinTypeChecker;
        this.t = samConversionResolver;
        this.r = platformDependentTypeTransformer;
        this.s = new h(this);
    }

    public /* synthetic */ j(n nVar, ab abVar, DeserializationConfiguration deserializationConfiguration, g gVar, c cVar, af afVar, s sVar, o oVar, kotlin.reflect.jvm.internal.impl.a.a.c cVar2, p pVar, Iterable iterable, ad adVar, i iVar, a.C0670a aVar, c.a aVar2, f fVar, NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl, kotlin.reflect.jvm.internal.impl.resolve.d.a aVar3, e.a aVar4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVar, abVar, deserializationConfiguration, gVar, cVar, afVar, sVar, oVar, cVar2, pVar, iterable, adVar, iVar, (i & PropertyFlags.UNSIGNED) != 0 ? a.C0670a.f37407a : aVar, (i & 16384) != 0 ? c.a.f37408a : aVar2, fVar, (65536 & i) != 0 ? NewKotlinTypeChecker.Companion.getDefault() : newKotlinTypeCheckerImpl, aVar3, (i & 262144) != 0 ? e.a.f37411a : aVar4);
    }

    public final d a(kotlin.reflect.jvm.internal.impl.c.a classId) {
        p.d(classId, "classId");
        return h.a(this.s, classId);
    }

    public final k a(ae descriptor, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.g typeTable, i versionRequirementTable, kotlin.reflect.jvm.internal.impl.b.b.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f fVar) {
        p.d(descriptor, "descriptor");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        p.d(versionRequirementTable, "versionRequirementTable");
        p.d(metadataVersion, "metadataVersion");
        return new k(this, nameResolver, descriptor, typeTable, versionRequirementTable, metadataVersion, fVar, null, z.f36608a);
    }
}
