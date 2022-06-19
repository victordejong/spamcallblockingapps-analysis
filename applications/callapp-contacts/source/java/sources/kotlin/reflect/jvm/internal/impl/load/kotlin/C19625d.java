package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18901f;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18908g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19499f;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p566d.C19809b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19945i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19961s;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/d.class */
public final class C19625d {

    /* renamed from: a */
    public final C19948j f65720a;

    public C19625d(AbstractC19302n storageManager, AbstractC18999ab moduleDescriptor, DeserializationConfiguration configuration, C19629f classDataFinder, C19620b annotationAndConstantLoader, C19499f packageFragmentProvider, C19001ad notFoundClasses, AbstractC19955o errorReporter, AbstractC18696c lookupTracker, AbstractC19945i contractDeserializer, NewKotlinTypeChecker kotlinTypeChecker) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        C18524p.m3840d(configuration, "configuration");
        C18524p.m3840d(classDataFinder, "classDataFinder");
        C18524p.m3840d(annotationAndConstantLoader, "annotationAndConstantLoader");
        C18524p.m3840d(packageFragmentProvider, "packageFragmentProvider");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        C18524p.m3840d(errorReporter, "errorReporter");
        C18524p.m3840d(lookupTracker, "lookupTracker");
        C18524p.m3840d(contractDeserializer, "contractDeserializer");
        C18524p.m3840d(kotlinTypeChecker, "kotlinTypeChecker");
        AbstractC18940g builtIns = moduleDescriptor.getBuiltIns();
        C18901f c18901f = builtIns instanceof C18901f ? (C18901f) builtIns : null;
        C19629f c19629f = classDataFinder;
        C19620b c19620b = annotationAndConstantLoader;
        C19499f c19499f = packageFragmentProvider;
        AbstractC19961s.C19962a c19962a = AbstractC19961s.C19962a.f66294a;
        C19630g c19630g = C19630g.f65731a;
        C18297z c18297z = C18297z.f63400a;
        C18908g m2886a = c18901f == null ? null : c18901f.m2886a();
        AbstractC19041a abstractC19041a = m2886a == null ? AbstractC19041a.C19042a.f64765a : m2886a;
        C18908g m2886a2 = c18901f == null ? null : c18901f.m2886a();
        AbstractC19044c.C19046b c19046b = m2886a2 == null ? AbstractC19044c.C19046b.f64767a : m2886a2;
        C18859h c18859h = C18859h.f64440a;
        this.f65720a = new C19948j(storageManager, moduleDescriptor, configuration, c19629f, c19620b, c19499f, c19962a, errorReporter, lookupTracker, c19630g, c18297z, notFoundClasses, contractDeserializer, abstractC19041a, c19046b, C18859h.m2924a(), kotlinTypeChecker, new C19809b(storageManager, C18297z.f63400a), null, 262144, null);
    }
}
