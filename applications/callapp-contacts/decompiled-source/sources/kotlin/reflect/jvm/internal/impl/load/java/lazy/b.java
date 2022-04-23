package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.c;
import kotlin.reflect.jvm.internal.impl.builtins.i;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.load.java.a.f;
import kotlin.reflect.jvm.internal.impl.load.java.a.g;
import kotlin.reflect.jvm.internal.impl.load.java.a.j;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.load.kotlin.u;
import kotlin.reflect.jvm.internal.impl.resolve.d.a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final n f37782a;

    /* renamed from: b  reason: collision with root package name */
    public final kotlin.reflect.jvm.internal.impl.load.java.n f37783b;

    /* renamed from: c  reason: collision with root package name */
    public final m f37784c;

    /* renamed from: d  reason: collision with root package name */
    public final e f37785d;
    public final j e;
    public final o f;
    public final g g;
    public final f h;
    public final a i;
    public final kotlin.reflect.jvm.internal.impl.load.java.c.b j;
    public final i k;
    public final u l;
    public final aw m;
    public final c n;
    public final ab o;
    public final i p;
    public final kotlin.reflect.jvm.internal.impl.load.java.c q;
    public final k r;
    public final kotlin.reflect.jvm.internal.impl.load.java.o s;
    public final c t;
    public final NewKotlinTypeChecker u;
    public final kotlin.reflect.jvm.internal.impl.utils.e v;

    public b(n storageManager, kotlin.reflect.jvm.internal.impl.load.java.n finder, m kotlinClassFinder, e deserializedDescriptorResolver, j signaturePropagator, o errorReporter, g javaResolverCache, f javaPropertyInitializerEvaluator, a samConversionResolver, kotlin.reflect.jvm.internal.impl.load.java.c.b sourceElementFactory, i moduleClassResolver, u packagePartProvider, aw supertypeLoopChecker, c lookupTracker, ab module, i reflectionTypes, kotlin.reflect.jvm.internal.impl.load.java.c annotationTypeQualifierResolver, k signatureEnhancement, kotlin.reflect.jvm.internal.impl.load.java.o javaClassesTracker, c settings, NewKotlinTypeChecker kotlinTypeChecker, kotlin.reflect.jvm.internal.impl.utils.e javaTypeEnhancementState) {
        p.d(storageManager, "storageManager");
        p.d(finder, "finder");
        p.d(kotlinClassFinder, "kotlinClassFinder");
        p.d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        p.d(signaturePropagator, "signaturePropagator");
        p.d(errorReporter, "errorReporter");
        p.d(javaResolverCache, "javaResolverCache");
        p.d(javaPropertyInitializerEvaluator, "javaPropertyInitializerEvaluator");
        p.d(samConversionResolver, "samConversionResolver");
        p.d(sourceElementFactory, "sourceElementFactory");
        p.d(moduleClassResolver, "moduleClassResolver");
        p.d(packagePartProvider, "packagePartProvider");
        p.d(supertypeLoopChecker, "supertypeLoopChecker");
        p.d(lookupTracker, "lookupTracker");
        p.d(module, "module");
        p.d(reflectionTypes, "reflectionTypes");
        p.d(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        p.d(signatureEnhancement, "signatureEnhancement");
        p.d(javaClassesTracker, "javaClassesTracker");
        p.d(settings, "settings");
        p.d(kotlinTypeChecker, "kotlinTypeChecker");
        p.d(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.f37782a = storageManager;
        this.f37783b = finder;
        this.f37784c = kotlinClassFinder;
        this.f37785d = deserializedDescriptorResolver;
        this.e = signaturePropagator;
        this.f = errorReporter;
        this.g = javaResolverCache;
        this.h = javaPropertyInitializerEvaluator;
        this.i = samConversionResolver;
        this.j = sourceElementFactory;
        this.k = moduleClassResolver;
        this.l = packagePartProvider;
        this.m = supertypeLoopChecker;
        this.n = lookupTracker;
        this.o = module;
        this.p = reflectionTypes;
        this.q = annotationTypeQualifierResolver;
        this.r = signatureEnhancement;
        this.s = javaClassesTracker;
        this.t = settings;
        this.u = kotlinTypeChecker;
        this.v = javaTypeEnhancementState;
    }
}
