package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.C18950i;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractC19512o;
import kotlin.reflect.jvm.internal.impl.load.java.C19381c;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19354f;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19362j;
import kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19386b;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19641m;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19658u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19626e;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p566d.AbstractC19808a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.utils.C20017e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/b.class */
public final class C19432b {

    /* renamed from: a */
    public final AbstractC19302n f65318a;

    /* renamed from: b */
    public final AbstractC19510n f65319b;

    /* renamed from: c */
    public final AbstractC19641m f65320c;

    /* renamed from: d */
    public final C19626e f65321d;

    /* renamed from: e */
    public final AbstractC19362j f65322e;

    /* renamed from: f */
    public final AbstractC19955o f65323f;

    /* renamed from: g */
    public final AbstractC19356g f65324g;

    /* renamed from: h */
    public final AbstractC19354f f65325h;

    /* renamed from: i */
    public final AbstractC19808a f65326i;

    /* renamed from: j */
    public final AbstractC19386b f65327j;

    /* renamed from: k */
    public final AbstractC19504i f65328k;

    /* renamed from: l */
    public final AbstractC19658u f65329l;

    /* renamed from: m */
    public final AbstractC19031aw f65330m;

    /* renamed from: n */
    public final AbstractC18696c f65331n;

    /* renamed from: o */
    public final AbstractC18999ab f65332o;

    /* renamed from: p */
    public final C18950i f65333p;

    /* renamed from: q */
    public final C19381c f65334q;

    /* renamed from: r */
    public final C19563k f65335r;

    /* renamed from: s */
    public final AbstractC19512o f65336s;

    /* renamed from: t */
    public final AbstractC19433c f65337t;

    /* renamed from: u */
    public final NewKotlinTypeChecker f65338u;

    /* renamed from: v */
    public final C20017e f65339v;

    public C19432b(AbstractC19302n storageManager, AbstractC19510n finder, AbstractC19641m kotlinClassFinder, C19626e deserializedDescriptorResolver, AbstractC19362j signaturePropagator, AbstractC19955o errorReporter, AbstractC19356g javaResolverCache, AbstractC19354f javaPropertyInitializerEvaluator, AbstractC19808a samConversionResolver, AbstractC19386b sourceElementFactory, AbstractC19504i moduleClassResolver, AbstractC19658u packagePartProvider, AbstractC19031aw supertypeLoopChecker, AbstractC18696c lookupTracker, AbstractC18999ab module, C18950i reflectionTypes, C19381c annotationTypeQualifierResolver, C19563k signatureEnhancement, AbstractC19512o javaClassesTracker, AbstractC19433c settings, NewKotlinTypeChecker kotlinTypeChecker, C20017e javaTypeEnhancementState) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(finder, "finder");
        C18524p.m3840d(kotlinClassFinder, "kotlinClassFinder");
        C18524p.m3840d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        C18524p.m3840d(signaturePropagator, "signaturePropagator");
        C18524p.m3840d(errorReporter, "errorReporter");
        C18524p.m3840d(javaResolverCache, "javaResolverCache");
        C18524p.m3840d(javaPropertyInitializerEvaluator, "javaPropertyInitializerEvaluator");
        C18524p.m3840d(samConversionResolver, "samConversionResolver");
        C18524p.m3840d(sourceElementFactory, "sourceElementFactory");
        C18524p.m3840d(moduleClassResolver, "moduleClassResolver");
        C18524p.m3840d(packagePartProvider, "packagePartProvider");
        C18524p.m3840d(supertypeLoopChecker, "supertypeLoopChecker");
        C18524p.m3840d(lookupTracker, "lookupTracker");
        C18524p.m3840d(module, "module");
        C18524p.m3840d(reflectionTypes, "reflectionTypes");
        C18524p.m3840d(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        C18524p.m3840d(signatureEnhancement, "signatureEnhancement");
        C18524p.m3840d(javaClassesTracker, "javaClassesTracker");
        C18524p.m3840d(settings, "settings");
        C18524p.m3840d(kotlinTypeChecker, "kotlinTypeChecker");
        C18524p.m3840d(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.f65318a = storageManager;
        this.f65319b = finder;
        this.f65320c = kotlinClassFinder;
        this.f65321d = deserializedDescriptorResolver;
        this.f65322e = signaturePropagator;
        this.f65323f = errorReporter;
        this.f65324g = javaResolverCache;
        this.f65325h = javaPropertyInitializerEvaluator;
        this.f65326i = samConversionResolver;
        this.f65327j = sourceElementFactory;
        this.f65328k = moduleClassResolver;
        this.f65329l = packagePartProvider;
        this.f65330m = supertypeLoopChecker;
        this.f65331n = lookupTracker;
        this.f65332o = module;
        this.f65333p = reflectionTypes;
        this.f65334q = annotationTypeQualifierResolver;
        this.f65335r = signatureEnhancement;
        this.f65336s = javaClassesTracker;
        this.f65337t = settings;
        this.f65338u = kotlinTypeChecker;
        this.f65339v = javaTypeEnhancementState;
    }
}
