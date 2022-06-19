package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19008ag;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p566d.C19809b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19945i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19957p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19961s;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19882d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19950l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.C19878b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl.class */
public final class BuiltInsLoaderImpl implements BuiltInsLoader {

    /* renamed from: b */
    private final C19880c f66094b = new C19880c();

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsLoaderImpl$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a.class */
    final /* synthetic */ class C19876a extends C18521m implements Function1<String, InputStream> {
        C19876a(C19880c c19880c) {
            super(1, c19880c);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadResource";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19880c.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "loadResource(Ljava/lang/String;)Ljava/io/InputStream;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ InputStream invoke(String str) {
            String p0 = str;
            C18524p.m3840d(p0, "p0");
            return ((C19880c) this.receiver).m1365a(p0);
        }
    }

    public static /* synthetic */ AbstractC19007af createBuiltInPackageFragmentProvider$default(BuiltInsLoaderImpl builtInsLoaderImpl, AbstractC19302n abstractC19302n, AbstractC18999ab abstractC18999ab, Set set, Iterable iterable, AbstractC19044c abstractC19044c, AbstractC19041a abstractC19041a, boolean z, Function1 function1, int i, Object obj) {
        if ((i & 32) != 0) {
            abstractC19041a = AbstractC19041a.C19042a.f64765a;
        }
        return builtInsLoaderImpl.createBuiltInPackageFragmentProvider(abstractC19302n, abstractC18999ab, set, iterable, abstractC19044c, abstractC19041a, z, function1);
    }

    public final AbstractC19007af createBuiltInPackageFragmentProvider(AbstractC19302n storageManager, AbstractC18999ab module, Set<C18961b> packageFqNames, Iterable<? extends AbstractC19043b> classDescriptorFactories, AbstractC19044c platformDependentDeclarationFilter, AbstractC19041a additionalClassPartsProvider, boolean z, Function1<? super String, ? extends InputStream> loadResource) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(module, "module");
        C18524p.m3840d(packageFqNames, "packageFqNames");
        C18524p.m3840d(classDescriptorFactories, "classDescriptorFactories");
        C18524p.m3840d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        C18524p.m3840d(additionalClassPartsProvider, "additionalClassPartsProvider");
        C18524p.m3840d(loadResource, "loadResource");
        Set<C18961b> set = packageFqNames;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(set, 10));
        for (C18961b c18961b : set) {
            String m1369a = C19877a.f66095m.m1369a(c18961b);
            InputStream invoke = loadResource.invoke(m1369a);
            if (invoke == null) {
                throw new IllegalStateException(C18524p.m3847a("Resource not found in classpath: ", (Object) m1369a));
            }
            C19878b.C19879a c19879a = C19878b.f66096c;
            arrayList.add(C19878b.C19879a.m1366a(c18961b, storageManager, module, invoke, z));
        }
        ArrayList<C19878b> arrayList2 = arrayList;
        C19008ag c19008ag = new C19008ag(arrayList2);
        C19001ad c19001ad = new C19001ad(storageManager, module);
        DeserializationConfiguration.Default r0 = DeserializationConfiguration.Default.INSTANCE;
        C19008ag c19008ag2 = c19008ag;
        C19950l c19950l = new C19950l(c19008ag2);
        C19882d c19882d = new C19882d(module, c19001ad, C19877a.f66095m);
        AbstractC19961s.C19962a c19962a = AbstractC19961s.C19962a.f66294a;
        AbstractC19955o DO_NOTHING = AbstractC19955o.f66288b;
        C18524p.m3843b(DO_NOTHING, "DO_NOTHING");
        AbstractC18696c.C18697a c18697a = AbstractC18696c.C18697a.f63806a;
        AbstractC19957p.C19958a c19958a = AbstractC19957p.C19958a.f66289a;
        AbstractC19945i.C19946a c19946a = AbstractC19945i.f66246a;
        C19948j c19948j = new C19948j(storageManager, module, r0, c19950l, c19882d, c19008ag2, c19962a, DO_NOTHING, c18697a, c19958a, classDescriptorFactories, c19001ad, AbstractC19945i.C19946a.m1263a(), additionalClassPartsProvider, platformDependentDeclarationFilter, C19877a.f66095m.f66060a, null, new C19809b(storageManager, C18297z.f63400a), null, 327680, null);
        for (C19878b c19878b : arrayList2) {
            c19878b.mo1256a(c19948j);
        }
        return c19008ag2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader
    public final AbstractC19007af createPackageFragmentProvider(AbstractC19302n storageManager, AbstractC18999ab builtInsModule, Iterable<? extends AbstractC19043b> classDescriptorFactories, AbstractC19044c platformDependentDeclarationFilter, AbstractC19041a additionalClassPartsProvider, boolean z) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(builtInsModule, "builtInsModule");
        C18524p.m3840d(classDescriptorFactories, "classDescriptorFactories");
        C18524p.m3840d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        C18524p.m3840d(additionalClassPartsProvider, "additionalClassPartsProvider");
        return createBuiltInPackageFragmentProvider(storageManager, builtInsModule, C18954j.f64588r, classDescriptorFactories, platformDependentDeclarationFilter, additionalClassPartsProvider, z, new C19876a(this.f66094b));
    }
}
