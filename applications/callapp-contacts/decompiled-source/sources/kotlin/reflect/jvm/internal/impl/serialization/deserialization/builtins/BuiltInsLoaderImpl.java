package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Set;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.a.a.c;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.af;
import kotlin.reflect.jvm.internal.impl.descriptors.ag;
import kotlin.reflect.jvm.internal.impl.descriptors.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.b.c;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.s;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl.class */
public final class BuiltInsLoaderImpl implements BuiltInsLoader {

    /* renamed from: b  reason: collision with root package name */
    private final c f38342b = new c();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a.class */
    final /* synthetic */ class a extends m implements Function1<String, InputStream> {
        a(c cVar) {
            super(1, cVar);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadResource";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(c.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "loadResource(Ljava/lang/String;)Ljava/io/InputStream;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ InputStream invoke(String str) {
            String p0 = str;
            p.d(p0, "p0");
            return ((c) this.receiver).a(p0);
        }
    }

    public static /* synthetic */ af createBuiltInPackageFragmentProvider$default(BuiltInsLoaderImpl builtInsLoaderImpl, n nVar, ab abVar, Set set, Iterable iterable, c cVar, kotlin.reflect.jvm.internal.impl.descriptors.b.a aVar, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 32) != 0) {
            aVar = a.C0670a.f37407a;
        }
        return builtInsLoaderImpl.createBuiltInPackageFragmentProvider(nVar, abVar, set, iterable, cVar, aVar, z, function1);
    }

    public final af createBuiltInPackageFragmentProvider(n storageManager, ab module, Set<b> packageFqNames, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.b.b> classDescriptorFactories, c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.descriptors.b.a additionalClassPartsProvider, boolean z, Function1<? super String, ? extends InputStream> loadResource) {
        p.d(storageManager, "storageManager");
        p.d(module, "module");
        p.d(packageFqNames, "packageFqNames");
        p.d(classDescriptorFactories, "classDescriptorFactories");
        p.d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        p.d(additionalClassPartsProvider, "additionalClassPartsProvider");
        p.d(loadResource, "loadResource");
        Set<b> set = packageFqNames;
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(set, 10));
        for (b bVar : set) {
            String a2 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m.a(bVar);
            InputStream inputStream = (InputStream) loadResource.invoke(a2);
            if (inputStream != null) {
                b.a aVar = b.f38343c;
                arrayList.add(b.a.a(bVar, storageManager, module, inputStream, z));
            } else {
                throw new IllegalStateException(p.a("Resource not found in classpath: ", (Object) a2));
            }
        }
        ArrayList<b> arrayList2 = arrayList;
        ag agVar = new ag(arrayList2);
        ad adVar = new ad(storageManager, module);
        DeserializationConfiguration.Default r0 = DeserializationConfiguration.Default.INSTANCE;
        ag agVar2 = agVar;
        l lVar = new l(agVar2);
        d dVar = new d(module, adVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m);
        s.a aVar2 = s.a.f38462a;
        o DO_NOTHING = o.f38456b;
        p.b(DO_NOTHING, "DO_NOTHING");
        c.a aVar3 = c.a.f36964a;
        p.a aVar4 = p.a.f38457a;
        i.a aVar5 = i.f38438a;
        j jVar = new j(storageManager, module, r0, lVar, dVar, agVar2, aVar2, DO_NOTHING, aVar3, aVar4, classDescriptorFactories, adVar, i.a.a(), additionalClassPartsProvider, platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m.f38322a, null, new kotlin.reflect.jvm.internal.impl.resolve.d.b(storageManager, z.f36608a), null, 327680, null);
        for (b bVar2 : arrayList2) {
            bVar2.a(jVar);
        }
        return agVar2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader
    public final af createPackageFragmentProvider(n storageManager, ab builtInsModule, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.b.b> classDescriptorFactories, kotlin.reflect.jvm.internal.impl.descriptors.b.c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.descriptors.b.a additionalClassPartsProvider, boolean z) {
        kotlin.jvm.internal.p.d(storageManager, "storageManager");
        kotlin.jvm.internal.p.d(builtInsModule, "builtInsModule");
        kotlin.jvm.internal.p.d(classDescriptorFactories, "classDescriptorFactories");
        kotlin.jvm.internal.p.d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        kotlin.jvm.internal.p.d(additionalClassPartsProvider, "additionalClassPartsProvider");
        return createBuiltInPackageFragmentProvider(storageManager, builtInsModule, kotlin.reflect.jvm.internal.impl.builtins.j.r, classDescriptorFactories, platformDependentDeclarationFilter, additionalClassPartsProvider, z, new a(this.f38342b));
    }
}
