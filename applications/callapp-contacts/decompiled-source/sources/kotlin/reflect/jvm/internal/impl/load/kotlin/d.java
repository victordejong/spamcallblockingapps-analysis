package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.c;
import kotlin.reflect.jvm.internal.impl.b.c.a.h;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.b.c;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.f;
import kotlin.reflect.jvm.internal.impl.resolve.d.b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.s;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final j f38063a;

    public d(n storageManager, ab moduleDescriptor, DeserializationConfiguration configuration, f classDataFinder, b annotationAndConstantLoader, f packageFragmentProvider, ad notFoundClasses, o errorReporter, c lookupTracker, i contractDeserializer, NewKotlinTypeChecker kotlinTypeChecker) {
        p.d(storageManager, "storageManager");
        p.d(moduleDescriptor, "moduleDescriptor");
        p.d(configuration, "configuration");
        p.d(classDataFinder, "classDataFinder");
        p.d(annotationAndConstantLoader, "annotationAndConstantLoader");
        p.d(packageFragmentProvider, "packageFragmentProvider");
        p.d(notFoundClasses, "notFoundClasses");
        p.d(errorReporter, "errorReporter");
        p.d(lookupTracker, "lookupTracker");
        p.d(contractDeserializer, "contractDeserializer");
        p.d(kotlinTypeChecker, "kotlinTypeChecker");
        g builtIns = moduleDescriptor.getBuiltIns();
        kotlin.reflect.jvm.internal.impl.builtins.a.g gVar = null;
        kotlin.reflect.jvm.internal.impl.builtins.a.f fVar = builtIns instanceof kotlin.reflect.jvm.internal.impl.builtins.a.f ? (kotlin.reflect.jvm.internal.impl.builtins.a.f) builtIns : null;
        f fVar2 = classDataFinder;
        b bVar = annotationAndConstantLoader;
        f fVar3 = packageFragmentProvider;
        s.a aVar = s.a.f38462a;
        g gVar2 = g.f38071a;
        z zVar = z.f36608a;
        kotlin.reflect.jvm.internal.impl.builtins.a.g a2 = fVar == null ? null : fVar.a();
        a aVar2 = a2 == null ? a.C0670a.f37407a : a2;
        if (fVar != null) {
            gVar = fVar.a();
        }
        kotlin.reflect.jvm.internal.impl.builtins.a.g gVar3 = gVar == null ? c.b.f37409a : gVar;
        h hVar = h.f37228a;
        this.f38063a = new j(storageManager, moduleDescriptor, configuration, fVar2, bVar, fVar3, aVar, errorReporter, lookupTracker, gVar2, zVar, notFoundClasses, contractDeserializer, aVar2, gVar3, h.a(), kotlinTypeChecker, new b(storageManager, z.f36608a), null, 262144, null);
    }
}
