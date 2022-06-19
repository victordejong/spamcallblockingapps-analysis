package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import io.objectbox.model.PropertyFlags;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19048e;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.protobuf.C19678f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.p566d.AbstractC19808a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/j.class */
public final class C19948j {

    /* renamed from: a */
    public final AbstractC19302n f66249a;

    /* renamed from: b */
    public final AbstractC18999ab f66250b;

    /* renamed from: c */
    public final DeserializationConfiguration f66251c;

    /* renamed from: d */
    final AbstractC19940g f66252d;

    /* renamed from: e */
    public final AbstractC19881c<AbstractC18977c, AbstractC19781g<?>> f66253e;

    /* renamed from: f */
    final AbstractC19007af f66254f;

    /* renamed from: g */
    final AbstractC19961s f66255g;

    /* renamed from: h */
    public final AbstractC19955o f66256h;

    /* renamed from: i */
    public final AbstractC18696c f66257i;

    /* renamed from: j */
    final AbstractC19957p f66258j;

    /* renamed from: k */
    public final Iterable<AbstractC19043b> f66259k;

    /* renamed from: l */
    public final C19001ad f66260l;

    /* renamed from: m */
    final AbstractC19945i f66261m;

    /* renamed from: n */
    public final AbstractC19041a f66262n;

    /* renamed from: o */
    public final AbstractC19044c f66263o;

    /* renamed from: p */
    public final C19678f f66264p;

    /* renamed from: q */
    public final NewKotlinTypeChecker f66265q;

    /* renamed from: r */
    final AbstractC19048e f66266r;

    /* renamed from: s */
    public final C19941h f66267s;

    /* renamed from: t */
    private final AbstractC19808a f66268t;

    /* JADX WARN: Multi-variable type inference failed */
    public C19948j(AbstractC19302n storageManager, AbstractC18999ab moduleDescriptor, DeserializationConfiguration configuration, AbstractC19940g classDataFinder, AbstractC19881c<? extends AbstractC18977c, ? extends AbstractC19781g<?>> annotationAndConstantLoader, AbstractC19007af packageFragmentProvider, AbstractC19961s localClassifierTypeSettings, AbstractC19955o errorReporter, AbstractC18696c lookupTracker, AbstractC19957p flexibleTypeDeserializer, Iterable<? extends AbstractC19043b> fictitiousClassDescriptorFactories, C19001ad notFoundClasses, AbstractC19945i contractDeserializer, AbstractC19041a additionalClassPartsProvider, AbstractC19044c platformDependentDeclarationFilter, C19678f extensionRegistryLite, NewKotlinTypeChecker kotlinTypeChecker, AbstractC19808a samConversionResolver, AbstractC19048e platformDependentTypeTransformer) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        C18524p.m3840d(configuration, "configuration");
        C18524p.m3840d(classDataFinder, "classDataFinder");
        C18524p.m3840d(annotationAndConstantLoader, "annotationAndConstantLoader");
        C18524p.m3840d(packageFragmentProvider, "packageFragmentProvider");
        C18524p.m3840d(localClassifierTypeSettings, "localClassifierTypeSettings");
        C18524p.m3840d(errorReporter, "errorReporter");
        C18524p.m3840d(lookupTracker, "lookupTracker");
        C18524p.m3840d(flexibleTypeDeserializer, "flexibleTypeDeserializer");
        C18524p.m3840d(fictitiousClassDescriptorFactories, "fictitiousClassDescriptorFactories");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        C18524p.m3840d(contractDeserializer, "contractDeserializer");
        C18524p.m3840d(additionalClassPartsProvider, "additionalClassPartsProvider");
        C18524p.m3840d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        C18524p.m3840d(extensionRegistryLite, "extensionRegistryLite");
        C18524p.m3840d(kotlinTypeChecker, "kotlinTypeChecker");
        C18524p.m3840d(samConversionResolver, "samConversionResolver");
        C18524p.m3840d(platformDependentTypeTransformer, "platformDependentTypeTransformer");
        this.f66249a = storageManager;
        this.f66250b = moduleDescriptor;
        this.f66251c = configuration;
        this.f66252d = classDataFinder;
        this.f66253e = annotationAndConstantLoader;
        this.f66254f = packageFragmentProvider;
        this.f66255g = localClassifierTypeSettings;
        this.f66256h = errorReporter;
        this.f66257i = lookupTracker;
        this.f66258j = flexibleTypeDeserializer;
        this.f66259k = fictitiousClassDescriptorFactories;
        this.f66260l = notFoundClasses;
        this.f66261m = contractDeserializer;
        this.f66262n = additionalClassPartsProvider;
        this.f66263o = platformDependentDeclarationFilter;
        this.f66264p = extensionRegistryLite;
        this.f66265q = kotlinTypeChecker;
        this.f66268t = samConversionResolver;
        this.f66266r = platformDependentTypeTransformer;
        this.f66267s = new C19941h(this);
    }

    public /* synthetic */ C19948j(AbstractC19302n abstractC19302n, AbstractC18999ab abstractC18999ab, DeserializationConfiguration deserializationConfiguration, AbstractC19940g abstractC19940g, AbstractC19881c abstractC19881c, AbstractC19007af abstractC19007af, AbstractC19961s abstractC19961s, AbstractC19955o abstractC19955o, AbstractC18696c abstractC18696c, AbstractC19957p abstractC19957p, Iterable iterable, C19001ad c19001ad, AbstractC19945i abstractC19945i, AbstractC19041a abstractC19041a, AbstractC19044c abstractC19044c, C19678f c19678f, NewKotlinTypeChecker newKotlinTypeChecker, AbstractC19808a abstractC19808a, AbstractC19048e abstractC19048e, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19302n, abstractC18999ab, deserializationConfiguration, abstractC19940g, abstractC19881c, abstractC19007af, abstractC19961s, abstractC19955o, abstractC18696c, abstractC19957p, iterable, c19001ad, abstractC19945i, (i & PropertyFlags.UNSIGNED) != 0 ? AbstractC19041a.C19042a.f64765a : abstractC19041a, (i & 16384) != 0 ? AbstractC19044c.C19045a.f64766a : abstractC19044c, c19678f, (65536 & i) != 0 ? NewKotlinTypeChecker.Companion.getDefault() : newKotlinTypeChecker, abstractC19808a, (i & 262144) != 0 ? AbstractC19048e.C19049a.f64769a : abstractC19048e);
    }

    /* renamed from: a */
    public final AbstractC19070d m1261a(C18960a classId) {
        AbstractC19070d m1266a;
        C18524p.m3840d(classId, "classId");
        m1266a = this.f66267s.m1266a(classId, (C19939f) null);
        return m1266a;
    }

    /* renamed from: a */
    public final C19949k m1260a(AbstractC19006ae descriptor, AbstractC18813c nameResolver, C18818g typeTable, C18824i versionRequirementTable, AbstractC18806a metadataVersion, AbstractC19906f abstractC19906f) {
        C18524p.m3840d(descriptor, "descriptor");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        C18524p.m3840d(versionRequirementTable, "versionRequirementTable");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        return new C19949k(this, nameResolver, descriptor, typeTable, versionRequirementTable, metadataVersion, abstractC19906f, null, C18297z.f63400a);
    }
}
