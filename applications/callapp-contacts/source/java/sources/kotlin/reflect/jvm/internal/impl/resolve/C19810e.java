package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e.class */
public final class C19810e {

    /* renamed from: a */
    private static final C18961b f65981a = new C18961b("kotlin.jvm.JvmInline");

    /* renamed from: a */
    private static AbstractC19050ba m1445a(AbstractC19070d abstractC19070d) {
        AbstractC19065c unsubstitutedPrimaryConstructor;
        List<AbstractC19050ba> valueParameters;
        C18524p.m3840d(abstractC19070d, "<this>");
        if (!m1444a((AbstractC19193k) abstractC19070d) || (unsubstitutedPrimaryConstructor = abstractC19070d.getUnsubstitutedPrimaryConstructor()) == null || (valueParameters = unsubstitutedPrimaryConstructor.getValueParameters()) == null) {
            return null;
        }
        return (AbstractC19050ba) C18282n.m4113j((List<? extends Object>) valueParameters);
    }

    /* renamed from: a */
    public static final boolean m1447a(AbstractC18973a abstractC18973a) {
        C18524p.m3840d(abstractC18973a, "<this>");
        if (abstractC18973a instanceof AbstractC19018ao) {
            AbstractC19017an correspondingProperty = ((AbstractC19018ao) abstractC18973a).mo2538b();
            C18524p.m3843b(correspondingProperty, "correspondingProperty");
            return m1446a((AbstractC19052bc) correspondingProperty);
        }
        return false;
    }

    /* renamed from: a */
    public static final boolean m1446a(AbstractC19052bc abstractC19052bc) {
        C18524p.m3840d(abstractC19052bc, "<this>");
        if (abstractC19052bc.getExtensionReceiverParameter() != null) {
            return false;
        }
        AbstractC19193k containingDeclaration = abstractC19052bc.getContainingDeclaration();
        C18524p.m3843b(containingDeclaration, "this.containingDeclaration");
        if (!m1444a(containingDeclaration)) {
            return false;
        }
        AbstractC19050ba m1445a = m1445a((AbstractC19070d) containingDeclaration);
        return C18524p.m3850a(m1445a == null ? null : m1445a.getName(), abstractC19052bc.getName());
    }

    /* renamed from: a */
    public static final boolean m1444a(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        if (abstractC19193k instanceof AbstractC19070d) {
            AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19193k;
            return abstractC19070d.isInline() || abstractC19070d.isValue();
        }
        return false;
    }

    /* renamed from: a */
    public static final boolean m1443a(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return false;
        }
        return m1444a(declarationDescriptor);
    }

    /* renamed from: b */
    public static final KotlinType m1442b(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        AbstractC19129g abstractC19129g = declarationDescriptor;
        if (!(declarationDescriptor instanceof AbstractC19070d)) {
            abstractC19129g = null;
        }
        AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19129g;
        AbstractC19050ba m1445a = abstractC19070d == null ? null : m1445a(abstractC19070d);
        if (m1445a == null) {
            return null;
        }
        return TypeSubstitutor.create(kotlinType).substitute(m1445a.mo2593g(), Variance.INVARIANT);
    }
}
