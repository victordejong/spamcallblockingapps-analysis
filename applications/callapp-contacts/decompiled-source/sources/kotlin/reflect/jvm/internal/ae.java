package kotlin.reflect.jvm.internal;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ad;
import kotlin.jvm.internal.e;
import kotlin.jvm.internal.l;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.z;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.d;
import kotlin.reflect.f;
import kotlin.reflect.jvm.c;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.q;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ae.class */
public class ae extends ad {
    private static k a(e eVar) {
        KDeclarationContainer owner = eVar.getOwner();
        return owner instanceof k ? (k) owner : b.f36886a;
    }

    @Override // kotlin.jvm.internal.ad
    public final String a(l lVar) {
        l a2;
        KFunction a3 = c.a(lVar);
        if (a3 == null || (a2 = aj.a(a3)) == null) {
            return super.a(lVar);
        }
        af afVar = af.f36874a;
        return af.b(a2.b());
    }

    @Override // kotlin.jvm.internal.ad
    public final String a(r rVar) {
        return a((l) rVar);
    }

    @Override // kotlin.jvm.internal.ad
    public final KDeclarationContainer a(Class cls, String str) {
        return new p(cls, str);
    }

    @Override // kotlin.jvm.internal.ad
    public final KFunction a(m mVar) {
        return new l(a((e) mVar), mVar.getName(), mVar.getSignature(), mVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ad
    public final KType a(d createType, List<q> arguments) {
        g f;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar;
        List annotations = Collections.emptyList();
        p.d(createType, "$this$createType");
        p.d(arguments, "arguments");
        p.d(annotations, "annotations");
        j jVar = (j) (!(createType instanceof j) ? null : createType);
        if (jVar == null || (f = jVar.f()) == null) {
            throw new ab("Cannot create type for an unsupported classifier: " + createType + " (" + createType.getClass() + ')');
        }
        TypeConstructor typeConstructor = f.getTypeConstructor();
        p.b(typeConstructor, "descriptor.typeConstructor");
        List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
        p.b(parameters, "typeConstructor.parameters");
        if (parameters.size() == arguments.size()) {
            if (annotations.isEmpty()) {
                g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
                gVar = g.a.a();
            } else {
                g.a aVar2 = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
                gVar = g.a.a();
            }
            return new w(kotlin.reflect.full.e.a(gVar, typeConstructor, arguments, true), null, 2, null);
        }
        throw new IllegalArgumentException("Class declares " + parameters.size() + " type parameters, but " + arguments.size() + " were provided.");
    }

    @Override // kotlin.jvm.internal.ad
    public final kotlin.reflect.c a(Class cls) {
        return g.a(cls);
    }

    @Override // kotlin.jvm.internal.ad
    public final f a(t tVar) {
        return new m(a((e) tVar), tVar.getName(), tVar.getSignature(), tVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ad
    public final kotlin.reflect.g a(v vVar) {
        return new n(a((e) vVar), vVar.getName(), vVar.getSignature(), vVar.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.ad
    public final kotlin.reflect.m a(z zVar) {
        return new s(a((e) zVar), zVar.getName(), zVar.getSignature(), zVar.getBoundReceiver());
    }
}
