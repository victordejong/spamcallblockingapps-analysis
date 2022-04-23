package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.io.InputStream;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.a.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.b.b;
import kotlin.reflect.jvm.internal.impl.descriptors.b.c;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.s;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/h.class */
public final class h extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(n storageManager, m finder, ab moduleDescriptor, ad notFoundClasses, kotlin.reflect.jvm.internal.impl.descriptors.b.a additionalClassPartsProvider, c platformDependentDeclarationFilter, DeserializationConfiguration deserializationConfiguration, NewKotlinTypeChecker kotlinTypeChecker, kotlin.reflect.jvm.internal.impl.resolve.d.a samConversionResolver) {
        super(storageManager, finder, moduleDescriptor);
        p.d(storageManager, "storageManager");
        p.d(finder, "finder");
        p.d(moduleDescriptor, "moduleDescriptor");
        p.d(notFoundClasses, "notFoundClasses");
        p.d(additionalClassPartsProvider, "additionalClassPartsProvider");
        p.d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        p.d(deserializationConfiguration, "deserializationConfiguration");
        p.d(kotlinTypeChecker, "kotlinTypeChecker");
        p.d(samConversionResolver, "samConversionResolver");
        h hVar = this;
        l lVar = new l(hVar);
        d dVar = new d(moduleDescriptor, notFoundClasses, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m);
        s.a aVar = s.a.f38462a;
        o DO_NOTHING = o.f38456b;
        p.b(DO_NOTHING, "DO_NOTHING");
        c.a aVar2 = c.a.f36964a;
        p.a aVar3 = p.a.f38457a;
        List b2 = kotlin.a.n.b((Object[]) new b[]{new kotlin.reflect.jvm.internal.impl.builtins.functions.a(storageManager, moduleDescriptor), new e(storageManager, moduleDescriptor, null, 4, null)});
        i.a aVar4 = i.f38438a;
        a(new j(storageManager, moduleDescriptor, deserializationConfiguration, lVar, dVar, hVar, aVar, DO_NOTHING, aVar2, aVar3, b2, notFoundClasses, i.a.a(), additionalClassPartsProvider, platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.m.f38322a, kotlinTypeChecker, samConversionResolver, null, 262144, null));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.m a(kotlin.reflect.jvm.internal.impl.c.b fqName) {
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b bVar;
        kotlin.jvm.internal.p.d(fqName, "fqName");
        InputStream a2 = b().a(fqName);
        if (a2 == null) {
            bVar = null;
        } else {
            b.a aVar = kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b.f38343c;
            bVar = b.a.a(fqName, a(), c(), a2, false);
        }
        return bVar;
    }
}
