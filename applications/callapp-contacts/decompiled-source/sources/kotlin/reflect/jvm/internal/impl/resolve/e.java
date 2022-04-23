package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final b f38266a = new b("kotlin.jvm.JvmInline");

    private static ba a(d dVar) {
        c unsubstitutedPrimaryConstructor;
        List<ba> valueParameters;
        p.d(dVar, "<this>");
        if (!a((k) dVar) || (unsubstitutedPrimaryConstructor = dVar.getUnsubstitutedPrimaryConstructor()) == null || (valueParameters = unsubstitutedPrimaryConstructor.getValueParameters()) == null) {
            return null;
        }
        return (ba) n.j((List<? extends Object>) valueParameters);
    }

    public static final boolean a(a aVar) {
        p.d(aVar, "<this>");
        if (!(aVar instanceof ao)) {
            return false;
        }
        an correspondingProperty = ((ao) aVar).b();
        p.b(correspondingProperty, "correspondingProperty");
        return a((bc) correspondingProperty);
    }

    public static final boolean a(bc bcVar) {
        p.d(bcVar, "<this>");
        if (bcVar.getExtensionReceiverParameter() != null) {
            return false;
        }
        k containingDeclaration = bcVar.getContainingDeclaration();
        p.b(containingDeclaration, "this.containingDeclaration");
        if (!a(containingDeclaration)) {
            return false;
        }
        ba a2 = a((d) containingDeclaration);
        return p.a(a2 == null ? null : a2.getName(), bcVar.getName());
    }

    public static final boolean a(k kVar) {
        p.d(kVar, "<this>");
        if (!(kVar instanceof d)) {
            return false;
        }
        d dVar = (d) kVar;
        return dVar.isInline() || dVar.isValue();
    }

    public static final boolean a(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return false;
        }
        return a(declarationDescriptor);
    }

    public static final KotlinType b(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        p.d(kotlinType, "<this>");
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        g gVar = declarationDescriptor;
        if (!(declarationDescriptor instanceof d)) {
            gVar = null;
        }
        d dVar = (d) gVar;
        ba a2 = dVar == null ? null : a(dVar);
        if (a2 == null) {
            return null;
        }
        return TypeSubstitutor.create(kotlinType).substitute(a2.g(), Variance.INVARIANT);
    }
}
