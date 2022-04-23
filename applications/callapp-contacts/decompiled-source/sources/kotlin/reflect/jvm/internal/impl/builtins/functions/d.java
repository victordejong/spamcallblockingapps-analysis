package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.ad;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.f;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.g.j;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/d.class */
public final class d extends aa {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37295a = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/d$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static d a(FunctionClassDescriptor functionClass, boolean z) {
            p.d(functionClass, "functionClass");
            List<TypeParameterDescriptor> declaredTypeParameters = functionClass.getDeclaredTypeParameters();
            d dVar = new d(functionClass, null, b.a.DECLARATION, z, null);
            aq thisAsReceiverParameter = functionClass.getThisAsReceiverParameter();
            z zVar = z.f36608a;
            List<TypeParameterDescriptor> list = declaredTypeParameters;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!(((TypeParameterDescriptor) obj).getVariance() == Variance.IN_VARIANCE)) {
                    break;
                }
                arrayList.add(obj);
            }
            Iterable<ad> k = n.k((Iterable) arrayList);
            ArrayList arrayList2 = new ArrayList(n.a(k, 10));
            for (ad adVar : k) {
                arrayList2.add(a(dVar, adVar.f36568a, (TypeParameterDescriptor) adVar.f36569b));
            }
            dVar.initialize((aq) null, thisAsReceiverParameter, (List) zVar, (List) arrayList2, (KotlinType) ((TypeParameterDescriptor) n.g((List<? extends Object>) declaredTypeParameters)).getDefaultType(), y.ABSTRACT, r.e);
            dVar.setHasSynthesizedParameterNames(true);
            return dVar;
        }

        private static ba a(d dVar, int i, TypeParameterDescriptor typeParameterDescriptor) {
            String str;
            String a2 = typeParameterDescriptor.getName().a();
            p.b(a2, "typeParameter.name.asString()");
            if (p.a((Object) a2, (Object) "T")) {
                str = "instance";
            } else if (p.a((Object) a2, (Object) "E")) {
                str = "receiver";
            } else {
                str = a2.toLowerCase();
                p.b(str, "(this as java.lang.String).toLowerCase()");
            }
            g.a aVar = g.f37361a;
            g a3 = g.a.a();
            e a4 = e.a(str);
            p.b(a4, "identifier(name)");
            SimpleType defaultType = typeParameterDescriptor.getDefaultType();
            p.b(defaultType, "typeParameter.defaultType");
            SimpleType simpleType = defaultType;
            at NO_SOURCE = at.f37401a;
            p.b(NO_SOURCE, "NO_SOURCE");
            return new ae(dVar, null, i, a3, a4, simpleType, false, false, false, null, NO_SOURCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private d(k kVar, d dVar, b.a aVar, boolean z) {
        super(kVar, dVar, g.a.a(), j.h, aVar, at.f37401a);
        g.a aVar2 = g.f37361a;
        setOperator(true);
        setSuspend(z);
        setHasStableParameterNames(false);
    }

    public /* synthetic */ d(k kVar, d dVar, b.a aVar, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(kVar, dVar, aVar, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl$CopyConfiguration] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlin.reflect.jvm.internal.impl.descriptors.w a(java.util.List<kotlin.reflect.jvm.internal.impl.c.e> r7) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.functions.d.a(java.util.List):kotlin.reflect.jvm.internal.impl.descriptors.w");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final FunctionDescriptorImpl createSubstitutedCopy(k newOwner, w wVar, b.a kind, e eVar, g annotations, at source) {
        p.d(newOwner, "newOwner");
        p.d(kind, "kind");
        p.d(annotations, "annotations");
        p.d(source, "source");
        return new d(newOwner, (d) wVar, kind, isSuspend());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public final w doSubstitute(FunctionDescriptorImpl.CopyConfiguration configuration) {
        p.d(configuration, "configuration");
        d dVar = (d) super.doSubstitute(configuration);
        if (dVar == null) {
            return null;
        }
        List<ba> valueParameters = dVar.getValueParameters();
        p.b(valueParameters, "substituted.valueParameters");
        List<ba> list = valueParameters;
        boolean z = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (ba baVar : list) {
                KotlinType g = baVar.g();
                p.b(g, "it.type");
                if (f.g(g) != null) {
                    break;
                }
            }
        }
        z = true;
        if (z) {
            return dVar;
        }
        List<ba> valueParameters2 = dVar.getValueParameters();
        p.b(valueParameters2, "substituted.valueParameters");
        List<ba> list2 = valueParameters2;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (ba baVar2 : list2) {
            KotlinType g2 = baVar2.g();
            p.b(g2, "it.type");
            arrayList.add(f.g(g2));
        }
        return dVar.a(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public final boolean isTailrec() {
        return false;
    }
}
