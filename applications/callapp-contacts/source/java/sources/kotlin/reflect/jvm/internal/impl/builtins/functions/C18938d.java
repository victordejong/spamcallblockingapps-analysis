package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18242ad;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.C18929f;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19148ae;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p555g.C19327j;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/d.class */
public final class C18938d extends C19142aa {

    /* renamed from: a */
    public static final C18939a f64539a = new C18939a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/d$a.class */
    public static final class C18939a {
        private C18939a() {
        }

        public /* synthetic */ C18939a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static C18938d m2838a(FunctionClassDescriptor functionClass, boolean z) {
            C18524p.m3840d(functionClass, "functionClass");
            List<TypeParameterDescriptor> declaredTypeParameters = functionClass.getDeclaredTypeParameters();
            C18938d c18938d = new C18938d(functionClass, null, AbstractC19039b.EnumC19040a.DECLARATION, z, null);
            AbstractC19020aq thisAsReceiverParameter = functionClass.getThisAsReceiverParameter();
            C18297z c18297z = C18297z.f63400a;
            List<TypeParameterDescriptor> list = declaredTypeParameters;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!(((TypeParameterDescriptor) obj).getVariance() == Variance.IN_VARIANCE)) {
                    break;
                }
                arrayList.add(obj);
            }
            Iterable<C18242ad> k = C18282n.m4112k((Iterable) arrayList);
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a(k, 10));
            for (C18242ad c18242ad : k) {
                arrayList2.add(m2837a(c18938d, c18242ad.f63352a, (TypeParameterDescriptor) c18242ad.f63353b));
            }
            c18938d.initialize((AbstractC19020aq) null, thisAsReceiverParameter, (List) c18297z, (List) arrayList2, (KotlinType) ((TypeParameterDescriptor) C18282n.m4119g((List<? extends Object>) declaredTypeParameters)).getDefaultType(), EnumC19222y.ABSTRACT, C19200r.f65006e);
            c18938d.setHasSynthesizedParameterNames(true);
            return c18938d;
        }

        /* renamed from: a */
        private static AbstractC19050ba m2837a(C18938d c18938d, int i, TypeParameterDescriptor typeParameterDescriptor) {
            String str;
            String m2721a = typeParameterDescriptor.getName().m2721a();
            C18524p.m3843b(m2721a, "typeParameter.name.asString()");
            if (C18524p.m3850a((Object) m2721a, (Object) "T")) {
                str = "instance";
            } else if (C18524p.m3850a((Object) m2721a, (Object) "E")) {
                str = "receiver";
            } else {
                str = m2721a.toLowerCase();
                C18524p.m3843b(str, "(this as java.lang.String).toLowerCase()");
            }
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
            C18966e m2719a = C18966e.m2719a(str);
            C18524p.m3843b(m2719a, "identifier(name)");
            SimpleType defaultType = typeParameterDescriptor.getDefaultType();
            C18524p.m3843b(defaultType, "typeParameter.defaultType");
            SimpleType simpleType = defaultType;
            AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
            C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
            return new C19148ae(c18938d, null, i, m2705a, m2719a, simpleType, false, false, false, null, NO_SOURCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C18938d(AbstractC19193k abstractC19193k, C18938d c18938d, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        super(abstractC19193k, c18938d, AbstractC18983g.C18984a.m2705a(), C19327j.f65198h, enumC19040a, AbstractC19026at.f64759a);
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        setOperator(true);
        setSuspend(z);
        setHasStableParameterNames(false);
    }

    public /* synthetic */ C18938d(AbstractC19193k abstractC19193k, C18938d c18938d, AbstractC19039b.EnumC19040a enumC19040a, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19193k, c18938d, enumC19040a, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl$CopyConfiguration] */
    /* renamed from: a */
    private final AbstractC19219w m2839a(List<C18966e> list) {
        int size = getValueParameters().size() - list.size();
        boolean z = size == 0 || size == 1;
        if (!C20130x.f66532a || z) {
            List<AbstractC19050ba> valueParameters = getValueParameters();
            C18524p.m3843b(valueParameters, "valueParameters");
            List<AbstractC19050ba> list2 = valueParameters;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (AbstractC19050ba abstractC19050ba : list2) {
                C18966e name = abstractC19050ba.getName();
                C18524p.m3843b(name, "it.name");
                int mo2610b = abstractC19050ba.mo2610b();
                int i = mo2610b - size;
                C18966e c18966e = name;
                if (i >= 0) {
                    C18966e c18966e2 = list.get(i);
                    c18966e = name;
                    if (c18966e2 != null) {
                        c18966e = c18966e2;
                    }
                }
                arrayList.add(abstractC19050ba.mo2603a(this, c18966e, mo2610b));
            }
            ArrayList arrayList2 = arrayList;
            FunctionDescriptorImpl.CopyConfiguration newCopyBuilder = newCopyBuilder(TypeSubstitutor.EMPTY);
            List<C18966e> list3 = list;
            boolean z2 = false;
            if (!list3.isEmpty()) {
                Iterator<T> it2 = list3.iterator();
                while (true) {
                    z2 = false;
                    if (!it2.hasNext()) {
                        break;
                    } else if (((C18966e) it2.next()) == null) {
                        z2 = true;
                        break;
                    }
                }
            }
            ?? original2 = newCopyBuilder.setHasSynthesizedParameterNames(z2).setValueParameters((List<AbstractC19050ba>) arrayList2).setOriginal2((AbstractC19039b) getOriginal());
            C18524p.m3843b(original2, "newCopyBuilder(TypeSubstitutor.EMPTY)\n                .setHasSynthesizedParameterNames(parameterNames.any { it == null })\n                .setValueParameters(newValueParameters)\n                .setOriginal(original)");
            AbstractC19219w doSubstitute = super.doSubstitute(original2);
            C18524p.m3851a(doSubstitute);
            return doSubstitute;
        }
        throw new AssertionError("Assertion failed");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k newOwner, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a kind, C18966e c18966e, AbstractC18983g annotations, AbstractC19026at source) {
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(source, "source");
        return new C18938d(newOwner, (C18938d) abstractC19219w, kind, isSuspend());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final AbstractC19219w doSubstitute(FunctionDescriptorImpl.CopyConfiguration configuration) {
        boolean z;
        C18524p.m3840d(configuration, "configuration");
        C18938d c18938d = (C18938d) super.doSubstitute(configuration);
        if (c18938d == null) {
            return null;
        }
        List<AbstractC19050ba> valueParameters = c18938d.getValueParameters();
        C18524p.m3843b(valueParameters, "substituted.valueParameters");
        List<AbstractC19050ba> list = valueParameters;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (AbstractC19050ba abstractC19050ba : list) {
                KotlinType g = abstractC19050ba.mo2593g();
                C18524p.m3843b(g, "it.type");
                if (C18929f.m2851g(g) != null) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            return c18938d;
        }
        List<AbstractC19050ba> valueParameters2 = c18938d.getValueParameters();
        C18524p.m3843b(valueParameters2, "substituted.valueParameters");
        List<AbstractC19050ba> list2 = valueParameters2;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (AbstractC19050ba abstractC19050ba2 : list2) {
            KotlinType g2 = abstractC19050ba2.mo2593g();
            C18524p.m3843b(g2, "it.type");
            arrayList.add(C18929f.m2851g(g2));
        }
        return c18938d.m2839a(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public final boolean isTailrec() {
        return false;
    }
}
