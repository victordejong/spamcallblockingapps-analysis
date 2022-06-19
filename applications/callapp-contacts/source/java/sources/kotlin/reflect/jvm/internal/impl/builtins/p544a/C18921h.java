package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.io.InputStream;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.functions.C18932a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19641m;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p566d.AbstractC19808a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19866a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19945i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19951m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19957p;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19961s;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19882d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19950l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.C19877a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.C19878b;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/h.class */
public final class C18921h extends AbstractC19866a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18921h(AbstractC19302n storageManager, AbstractC19641m finder, AbstractC18999ab moduleDescriptor, C19001ad notFoundClasses, AbstractC19041a additionalClassPartsProvider, AbstractC19044c platformDependentDeclarationFilter, DeserializationConfiguration deserializationConfiguration, NewKotlinTypeChecker kotlinTypeChecker, AbstractC19808a samConversionResolver) {
        super(storageManager, finder, moduleDescriptor);
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(finder, "finder");
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        C18524p.m3840d(additionalClassPartsProvider, "additionalClassPartsProvider");
        C18524p.m3840d(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        C18524p.m3840d(deserializationConfiguration, "deserializationConfiguration");
        C18524p.m3840d(kotlinTypeChecker, "kotlinTypeChecker");
        C18524p.m3840d(samConversionResolver, "samConversionResolver");
        C18921h c18921h = this;
        C19950l c19950l = new C19950l(c18921h);
        C19882d c19882d = new C19882d(moduleDescriptor, notFoundClasses, C19877a.f66095m);
        AbstractC19961s.C19962a c19962a = AbstractC19961s.C19962a.f66294a;
        AbstractC19955o DO_NOTHING = AbstractC19955o.f66288b;
        C18524p.m3843b(DO_NOTHING, "DO_NOTHING");
        AbstractC18696c.C18697a c18697a = AbstractC18696c.C18697a.f63806a;
        AbstractC19957p.C19958a c19958a = AbstractC19957p.C19958a.f66289a;
        List b = C18282n.m4167b((Object[]) new AbstractC19043b[]{new C18932a(storageManager, moduleDescriptor), new C18897e(storageManager, moduleDescriptor, null, 4, null)});
        AbstractC19945i.C19946a c19946a = AbstractC19945i.f66246a;
        m1387a(new C19948j(storageManager, moduleDescriptor, deserializationConfiguration, c19950l, c19882d, c18921h, c19962a, DO_NOTHING, c18697a, c19958a, b, notFoundClasses, AbstractC19945i.C19946a.m1263a(), additionalClassPartsProvider, platformDependentDeclarationFilter, C19877a.f66095m.f66060a, kotlinTypeChecker, samConversionResolver, null, 262144, null));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19866a
    /* renamed from: a */
    public final AbstractC19951m mo1390a(C18961b fqName) {
        C19878b c19878b;
        C18524p.m3840d(fqName, "fqName");
        InputStream mo1249a = m1386b().mo1249a(fqName);
        if (mo1249a == null) {
            c19878b = null;
        } else {
            C19878b.C19879a c19879a = C19878b.f66096c;
            c19878b = C19878b.C19879a.m1366a(fqName, m1391a(), m1384c(), mo1249a, false);
        }
        return c19878b;
    }
}
