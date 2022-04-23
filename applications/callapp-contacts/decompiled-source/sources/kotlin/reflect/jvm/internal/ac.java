package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.c;
import kotlin.reflect.jvm.internal.impl.builtins.a.f;
import kotlin.reflect.jvm.internal.impl.builtins.a.h;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.ai;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.a;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.i;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.j;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.k;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.b;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.t;
import kotlin.reflect.jvm.internal.impl.f.f;
import kotlin.reflect.jvm.internal.impl.load.java.a.f;
import kotlin.reflect.jvm.internal.impl.load.java.c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.c;
import kotlin.reflect.jvm.internal.impl.load.java.o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.u;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.i;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.v;
import kotlin.x;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u001a\b\u0010\u0005\u001a\u00020\u0006H��\u001a\u0010\u0010\u0007\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\bH��\" \u0010��\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"moduleByClassLoader", "Ljava/util/concurrent/ConcurrentMap;", "Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;", "Ljava/lang/ref/WeakReference;", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "clearModuleByClassLoaderCache", "", "getOrCreateModule", "Ljava/lang/Class;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<ak, WeakReference<j>> f36868a = new ConcurrentHashMap();

    public static final j a(Class<?> getOrCreateModule) {
        Throwable th;
        p.d(getOrCreateModule, "$this$getOrCreateModule");
        ClassLoader classLoader = b.a(getOrCreateModule);
        ak akVar = new ak(classLoader);
        ConcurrentMap<ak, WeakReference<j>> concurrentMap = f36868a;
        WeakReference<j> weakReference = concurrentMap.get(akVar);
        if (weakReference != null) {
            j it2 = weakReference.get();
            if (it2 != null) {
                p.b(it2, "it");
                return it2;
            }
            concurrentMap.remove(akVar, weakReference);
        }
        j.a aVar = j.f37443a;
        p.d(classLoader, "classLoader");
        f storageManager = new f("RuntimeModuleData");
        final kotlin.reflect.jvm.internal.impl.builtins.a.f fVar = new kotlin.reflect.jvm.internal.impl.builtins.a.f(storageManager, f.a.FROM_DEPENDENCIES);
        e c2 = e.c("<runtime module for " + classLoader + '>');
        p.b(c2, "special(\"<runtime module for $classLoader>\")");
        final t tVar = new t(c2, storageManager, fVar, null, null, null, 56, null);
        fVar.f37299c.c(new Function0<Void>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.4
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Void invoke() {
                if (fVar.f37298b == null) {
                    fVar.f37298b = tVar;
                    return null;
                }
                throw new AssertionError("Built-ins module is already set: " + fVar.f37298b + " (attempting to reset to " + tVar + ")");
            }
        });
        t module = tVar;
        p.d(module, "moduleDescriptor");
        f.e computation = new f.e(module, true);
        p.d(computation, "computation");
        boolean z = fVar.f == null;
        if (!x.f38657a || z) {
            fVar.f = computation;
            g gVar = new g(classLoader);
            kotlin.reflect.jvm.internal.impl.load.kotlin.e deserializedDescriptorResolver = new kotlin.reflect.jvm.internal.impl.load.kotlin.e();
            kotlin.reflect.jvm.internal.impl.load.java.lazy.j jVar = new kotlin.reflect.jvm.internal.impl.load.java.lazy.j();
            ad notFoundClasses = new ad(storageManager, module);
            g reflectKotlinClassFinder = gVar;
            kotlin.reflect.jvm.internal.impl.load.java.lazy.j singleModuleClassResolver = jVar;
            u.a packagePartProvider = u.a.f38096a;
            p.d(classLoader, "classLoader");
            p.d(module, "module");
            p.d(storageManager, "storageManager");
            p.d(notFoundClasses, "notFoundClasses");
            p.d(reflectKotlinClassFinder, "reflectKotlinClassFinder");
            p.d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
            p.d(singleModuleClassResolver, "singleModuleClassResolver");
            p.d(packagePartProvider, "packagePartProvider");
            c cVar = new c(storageManager, kotlin.reflect.jvm.internal.impl.utils.e.k);
            kotlin.reflect.jvm.internal.impl.utils.e eVar = kotlin.reflect.jvm.internal.impl.utils.e.k;
            d dVar = new d(classLoader);
            kotlin.reflect.jvm.internal.impl.load.java.a.j DO_NOTHING = kotlin.reflect.jvm.internal.impl.load.java.a.j.f37740a;
            p.b(DO_NOTHING, "DO_NOTHING");
            i iVar = i.f37442a;
            kotlin.reflect.jvm.internal.impl.load.java.a.g EMPTY = kotlin.reflect.jvm.internal.impl.load.java.a.g.f37735a;
            p.b(EMPTY, "EMPTY");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.f lazyJavaPackageFragmentProvider = new kotlin.reflect.jvm.internal.impl.load.java.lazy.f(new kotlin.reflect.jvm.internal.impl.load.java.lazy.b(storageManager, dVar, reflectKotlinClassFinder, deserializedDescriptorResolver, DO_NOTHING, iVar, EMPTY, f.a.f37734a, new kotlin.reflect.jvm.internal.impl.resolve.d.b(storageManager, z.f36608a), k.f37446a, singleModuleClassResolver, packagePartProvider, aw.a.f37403a, c.a.f36964a, module, new kotlin.reflect.jvm.internal.impl.builtins.i(module, notFoundClasses), cVar, new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k(cVar, kotlin.reflect.jvm.internal.impl.utils.e.k, new kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d(c.b.f37788b)), o.a.f37899a, c.b.f37788b, NewKotlinTypeChecker.Companion.getDefault(), eVar));
            p.d(module, "module");
            p.d(storageManager, "storageManager");
            p.d(notFoundClasses, "notFoundClasses");
            p.d(lazyJavaPackageFragmentProvider, "lazyJavaPackageFragmentProvider");
            p.d(reflectKotlinClassFinder, "reflectKotlinClassFinder");
            p.d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
            kotlin.reflect.jvm.internal.impl.load.kotlin.f fVar2 = new kotlin.reflect.jvm.internal.impl.load.kotlin.f(reflectKotlinClassFinder, deserializedDescriptorResolver);
            kotlin.reflect.jvm.internal.impl.load.kotlin.b bVar = new kotlin.reflect.jvm.internal.impl.load.kotlin.b(module, notFoundClasses, storageManager, reflectKotlinClassFinder);
            DeserializationConfiguration.Default r0 = DeserializationConfiguration.Default.INSTANCE;
            i iVar2 = i.f37442a;
            c.a aVar2 = c.a.f36964a;
            i.a aVar3 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.i.f38438a;
            kotlin.reflect.jvm.internal.impl.load.kotlin.d components = new kotlin.reflect.jvm.internal.impl.load.kotlin.d(storageManager, module, r0, fVar2, bVar, lazyJavaPackageFragmentProvider, notFoundClasses, iVar2, aVar2, i.a.a(), NewKotlinTypeChecker.Companion.getDefault());
            p.d(components, "components");
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar2 = components.f38063a;
            p.d(jVar2, "<set-?>");
            deserializedDescriptorResolver.f38067b = jVar2;
            kotlin.reflect.jvm.internal.impl.load.java.a.g EMPTY2 = kotlin.reflect.jvm.internal.impl.load.java.a.g.f37735a;
            p.b(EMPTY2, "EMPTY");
            kotlin.reflect.jvm.internal.impl.resolve.c.b bVar2 = new kotlin.reflect.jvm.internal.impl.resolve.c.b(lazyJavaPackageFragmentProvider, EMPTY2);
            p.d(bVar2, "<set-?>");
            jVar.f37891a = bVar2;
            ClassLoader stdlibClassLoader = v.class.getClassLoader();
            p.b(stdlibClassLoader, "stdlibClassLoader");
            h hVar = new h(storageManager, new g(stdlibClassLoader), module, notFoundClasses, fVar.a(), fVar.a(), DeserializationConfiguration.Default.INSTANCE, NewKotlinTypeChecker.Companion.getDefault(), new kotlin.reflect.jvm.internal.impl.resolve.d.b(storageManager, z.f36608a));
            tVar.a(tVar);
            tVar.a(new kotlin.reflect.jvm.internal.impl.descriptors.impl.g(n.b((Object[]) new ai[]{bVar2.f38239a, hVar})));
            j jVar3 = new j(components.f38063a, new a(deserializedDescriptorResolver, gVar), null);
            while (true) {
                try {
                    ConcurrentMap<ak, WeakReference<j>> concurrentMap2 = f36868a;
                    try {
                        WeakReference<j> putIfAbsent = concurrentMap2.putIfAbsent(akVar, new WeakReference<>(jVar3));
                        if (putIfAbsent == null) {
                            akVar.f36883a = null;
                            return jVar3;
                        }
                        j jVar4 = putIfAbsent.get();
                        if (jVar4 != null) {
                            akVar.f36883a = null;
                            return jVar4;
                        }
                        concurrentMap2.remove(akVar, putIfAbsent);
                        akVar = akVar;
                    } catch (Throwable th2) {
                        th = th2;
                        akVar.f36883a = null;
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
