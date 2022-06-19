package kotlin.reflect.jvm.internal;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.AbstractC18511e;
import kotlin.jvm.internal.AbstractC18520l;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.AbstractC18528t;
import kotlin.jvm.internal.AbstractC18530v;
import kotlin.jvm.internal.AbstractC18534z;
import kotlin.jvm.internal.C18497ad;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC18552d;
import kotlin.reflect.AbstractC18555f;
import kotlin.reflect.AbstractC18564g;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.C20112q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.full.C18562e;
import kotlin.reflect.jvm.C18570c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
/* renamed from: kotlin.reflect.jvm.internal.ae */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ae.class */
public class C18627ae extends C18497ad {
    /* renamed from: a */
    private static AbstractC20033k m3790a(AbstractC18511e abstractC18511e) {
        KDeclarationContainer owner = abstractC18511e.getOwner();
        return owner instanceof AbstractC20033k ? (AbstractC20033k) owner : C18637b.f63708a;
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final String mo3789a(AbstractC18520l abstractC18520l) {
        C20042l m3764a;
        KFunction m3824a = C18570c.m3824a(abstractC18520l);
        if (m3824a == null || (m3764a = C18635aj.m3764a(m3824a)) == null) {
            return super.mo3789a(abstractC18520l);
        }
        C18628af c18628af = C18628af.f63696a;
        return C18628af.m3776b(m3764a.mo1137b());
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final String mo3787a(AbstractC18526r abstractC18526r) {
        return mo3789a((AbstractC18520l) abstractC18526r);
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final KDeclarationContainer mo3791a(Class cls, String str) {
        return new C20055p(cls, str);
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final KFunction mo3788a(C18521m c18521m) {
        return new C20042l(m3790a((AbstractC18511e) c18521m), c18521m.getName(), c18521m.getSignature(), c18521m.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final KType mo3783a(AbstractC18552d createType, List<C20112q> arguments) {
        AbstractC19129g mo1121f;
        AbstractC18983g abstractC18983g;
        List annotations = Collections.emptyList();
        C18524p.m3840d(createType, "$this$createType");
        C18524p.m3840d(arguments, "arguments");
        C18524p.m3840d(annotations, "annotations");
        AbstractC20032j abstractC20032j = (AbstractC20032j) (!(createType instanceof AbstractC20032j) ? null : createType);
        if (abstractC20032j == null || (mo1121f = abstractC20032j.mo1121f()) == null) {
            throw new C18620ab("Cannot create type for an unsupported classifier: " + createType + " (" + createType.getClass() + ')');
        }
        TypeConstructor typeConstructor = mo1121f.getTypeConstructor();
        C18524p.m3843b(typeConstructor, "descriptor.typeConstructor");
        List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
        C18524p.m3843b(parameters, "typeConstructor.parameters");
        if (parameters.size() == arguments.size()) {
            if (annotations.isEmpty()) {
                AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                abstractC18983g = AbstractC18983g.C18984a.m2705a();
            } else {
                AbstractC18983g.C18984a c18984a2 = AbstractC18983g.f64717a;
                abstractC18983g = AbstractC18983g.C18984a.m2705a();
            }
            return new C20094w(C18562e.m3828a(abstractC18983g, typeConstructor, arguments, true), null, 2, null);
        }
        throw new IllegalArgumentException("Class declares " + parameters.size() + " type parameters, but " + arguments.size() + " were provided.");
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final AbstractC18551c mo3792a(Class cls) {
        return C18669g.m3725a(cls);
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final AbstractC18555f mo3786a(AbstractC18528t abstractC18528t) {
        return new C20046m(m3790a((AbstractC18511e) abstractC18528t), abstractC18528t.getName(), abstractC18528t.getSignature(), abstractC18528t.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final AbstractC18564g mo3785a(AbstractC18530v abstractC18530v) {
        return new C20049n(m3790a((AbstractC18511e) abstractC18530v), abstractC18530v.getName(), abstractC18530v.getSignature(), abstractC18530v.getBoundReceiver());
    }

    @Override // kotlin.jvm.internal.C18497ad
    /* renamed from: a */
    public final AbstractC20107m mo3784a(AbstractC18534z abstractC18534z) {
        return new C20071s(m3790a((AbstractC18511e) abstractC18534z), abstractC18534z.getName(), abstractC18534z.getSignature(), abstractC18534z.getBoundReceiver());
    }
}
