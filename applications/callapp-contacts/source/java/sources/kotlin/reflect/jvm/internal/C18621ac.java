package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.C20128v;
import kotlin.C20130x;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.C18950i;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18901f;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18921h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19161g;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19183t;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19071a;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19074d;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19078g;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19080i;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19081j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19083k;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractC19512o;
import kotlin.reflect.jvm.internal.impl.load.java.C19381c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.AbstractC19433c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19432b;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19499f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19505j;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19354f;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19362j;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19525d;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19658u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19620b;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19625d;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19626e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19629f;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.C19276f;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19765b;
import kotlin.reflect.jvm.internal.impl.resolve.p566d.C19809b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19945i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.utils.C20017e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u001a\b\u0010\u0005\u001a\u00020\u0006H��\u001a\u0010\u0010\u0007\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\bH��\" \u0010��\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"moduleByClassLoader", "Ljava/util/concurrent/ConcurrentMap;", "Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;", "Ljava/lang/ref/WeakReference;", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "clearModuleByClassLoaderCache", "", "getOrCreateModule", "Ljava/lang/Class;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.ac */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ac.class */
public final class C18621ac {

    /* renamed from: a */
    private static final ConcurrentMap<C18636ak, WeakReference<C19081j>> f63690a = new ConcurrentHashMap();

    /* renamed from: a */
    public static final C19081j m3799a(Class<?> getOrCreateModule) {
        Throwable th;
        C18524p.m3840d(getOrCreateModule, "$this$getOrCreateModule");
        ClassLoader classLoader = C19088b.m2659a(getOrCreateModule);
        C18636ak c18636ak = new C18636ak(classLoader);
        ConcurrentMap<C18636ak, WeakReference<C19081j>> concurrentMap = f63690a;
        WeakReference<C19081j> weakReference = concurrentMap.get(c18636ak);
        if (weakReference != null) {
            C19081j it2 = weakReference.get();
            if (it2 != null) {
                C18524p.m3843b(it2, "it");
                return it2;
            }
            concurrentMap.remove(c18636ak, weakReference);
        }
        C19081j.C19082a c19082a = C19081j.f64801a;
        C18524p.m3840d(classLoader, "classLoader");
        C19276f storageManager = new C19276f("RuntimeModuleData");
        final C18901f c18901f = new C18901f(storageManager, C18901f.EnumC18902a.FROM_DEPENDENCIES);
        C18966e m2715c = C18966e.m2715c("<runtime module for " + classLoader + '>');
        C18524p.m3843b(m2715c, "special(\"<runtime module for $classLoader>\")");
        final C19183t c19183t = new C19183t(m2715c, storageManager, c18901f, null, null, null, 56, null);
        c18901f.f64544c.mo2306c(new Function0<Void>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.4
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Void invoke() {
                if (c18901f.f64543b == null) {
                    c18901f.f64543b = c19183t;
                    return null;
                }
                throw new AssertionError("Built-ins module is already set: " + c18901f.f64543b + " (attempting to reset to " + c19183t + ")");
            }
        });
        C19183t module = c19183t;
        C18524p.m3840d(module, "moduleDescriptor");
        C18901f.C18907e computation = new C18901f.C18907e(module, true);
        C18524p.m3840d(computation, "computation");
        boolean z = c18901f.f64481f == null;
        if (!C20130x.f66532a || z) {
            c18901f.f64481f = computation;
            C19078g c19078g = new C19078g(classLoader);
            C19626e deserializedDescriptorResolver = new C19626e();
            C19505j c19505j = new C19505j();
            C19001ad notFoundClasses = new C19001ad(storageManager, module);
            C19078g reflectKotlinClassFinder = c19078g;
            C19505j singleModuleClassResolver = c19505j;
            AbstractC19658u.C19659a packagePartProvider = AbstractC19658u.C19659a.f65766a;
            C18524p.m3840d(classLoader, "classLoader");
            C18524p.m3840d(module, "module");
            C18524p.m3840d(storageManager, "storageManager");
            C18524p.m3840d(notFoundClasses, "notFoundClasses");
            C18524p.m3840d(reflectKotlinClassFinder, "reflectKotlinClassFinder");
            C18524p.m3840d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
            C18524p.m3840d(singleModuleClassResolver, "singleModuleClassResolver");
            C18524p.m3840d(packagePartProvider, "packagePartProvider");
            C19381c c19381c = new C19381c(storageManager, C20017e.f66365k);
            C20017e c20017e = C20017e.f66365k;
            C19074d c19074d = new C19074d(classLoader);
            AbstractC19362j DO_NOTHING = AbstractC19362j.f65266a;
            C18524p.m3843b(DO_NOTHING, "DO_NOTHING");
            C19080i c19080i = C19080i.f64800a;
            AbstractC19356g EMPTY = AbstractC19356g.f65259a;
            C18524p.m3843b(EMPTY, "EMPTY");
            C19499f lazyJavaPackageFragmentProvider = new C19499f(new C19432b(storageManager, c19074d, reflectKotlinClassFinder, deserializedDescriptorResolver, DO_NOTHING, c19080i, EMPTY, AbstractC19354f.C19355a.f65258a, new C19809b(storageManager, C18297z.f63400a), C19083k.f64804a, singleModuleClassResolver, packagePartProvider, AbstractC19031aw.C19032a.f64761a, AbstractC18696c.C18697a.f63806a, module, new C18950i(module, notFoundClasses), c19381c, new C19563k(c19381c, C20017e.f66365k, new C19525d(AbstractC19433c.C19435b.f65342b)), AbstractC19512o.C19513a.f65499a, AbstractC19433c.C19435b.f65342b, NewKotlinTypeChecker.Companion.getDefault(), c20017e));
            C18524p.m3840d(module, "module");
            C18524p.m3840d(storageManager, "storageManager");
            C18524p.m3840d(notFoundClasses, "notFoundClasses");
            C18524p.m3840d(lazyJavaPackageFragmentProvider, "lazyJavaPackageFragmentProvider");
            C18524p.m3840d(reflectKotlinClassFinder, "reflectKotlinClassFinder");
            C18524p.m3840d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
            C19629f c19629f = new C19629f(reflectKotlinClassFinder, deserializedDescriptorResolver);
            C19620b c19620b = new C19620b(module, notFoundClasses, storageManager, reflectKotlinClassFinder);
            DeserializationConfiguration.Default r0 = DeserializationConfiguration.Default.INSTANCE;
            C19080i c19080i2 = C19080i.f64800a;
            AbstractC18696c.C18697a c18697a = AbstractC18696c.C18697a.f63806a;
            AbstractC19945i.C19946a c19946a = AbstractC19945i.f66246a;
            C19625d components = new C19625d(storageManager, module, r0, c19629f, c19620b, lazyJavaPackageFragmentProvider, notFoundClasses, c19080i2, c18697a, AbstractC19945i.C19946a.m1263a(), NewKotlinTypeChecker.Companion.getDefault());
            C18524p.m3840d(components, "components");
            C19948j c19948j = components.f65720a;
            C18524p.m3840d(c19948j, "<set-?>");
            deserializedDescriptorResolver.f65727b = c19948j;
            AbstractC19356g EMPTY2 = AbstractC19356g.f65259a;
            C18524p.m3843b(EMPTY2, "EMPTY");
            C19765b c19765b = new C19765b(lazyJavaPackageFragmentProvider, EMPTY2);
            C18524p.m3840d(c19765b, "<set-?>");
            c19505j.f65491a = c19765b;
            ClassLoader stdlibClassLoader = C20128v.class.getClassLoader();
            C18524p.m3843b(stdlibClassLoader, "stdlibClassLoader");
            C18921h c18921h = new C18921h(storageManager, new C19078g(stdlibClassLoader), module, notFoundClasses, c18901f.m2886a(), c18901f.m2886a(), DeserializationConfiguration.Default.INSTANCE, NewKotlinTypeChecker.Companion.getDefault(), new C19809b(storageManager, C18297z.f63400a));
            c19183t.m2554a(c19183t);
            c19183t.m2556a(new C19161g(C18282n.m4167b((Object[]) new AbstractC19012ai[]{c19765b.f65954a, c18921h})));
            C19081j c19081j = new C19081j(components.f65720a, new C19071a(deserializedDescriptorResolver, c19078g), null);
            while (true) {
                try {
                    ConcurrentMap<C18636ak, WeakReference<C19081j>> concurrentMap2 = f63690a;
                    WeakReference<C19081j> weakReference2 = new WeakReference<>(c19081j);
                    C18636ak c18636ak2 = c18636ak;
                    try {
                        WeakReference<C19081j> putIfAbsent = concurrentMap2.putIfAbsent(c18636ak2, weakReference2);
                        if (putIfAbsent == null) {
                            c18636ak2.f63705a = null;
                            return c19081j;
                        }
                        C19081j c19081j2 = putIfAbsent.get();
                        if (c19081j2 != null) {
                            c18636ak2.f63705a = null;
                            return c19081j2;
                        }
                        concurrentMap2.remove(c18636ak2, putIfAbsent);
                        c18636ak = c18636ak2;
                    } catch (Throwable th2) {
                        th = th2;
                        c18636ak.f63705a = null;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } else {
            throw new AssertionError("JvmBuiltins repeated initialization");
        }
    }
}
