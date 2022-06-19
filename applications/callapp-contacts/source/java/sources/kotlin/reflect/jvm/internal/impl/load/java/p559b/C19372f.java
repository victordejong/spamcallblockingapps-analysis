package kotlin.reflect.jvm.internal.impl.load.java.p559b;

import com.appsflyer.internal.referrer.Payload;
import java.util.List;
import kotlin.C18538n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.b.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/f.class */
public class C19372f extends C19142aa implements AbstractC19368b {

    /* renamed from: a */
    public static final AbstractC18973a.AbstractC18974a<AbstractC19050ba> f65284a = new AbstractC18973a.AbstractC18974a<AbstractC19050ba>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.b.f.1
    };

    /* renamed from: b */
    static final /* synthetic */ boolean f65285b = true;

    /* renamed from: c */
    private EnumC19374a f65286c;

    /* renamed from: d */
    private final boolean f65287d;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.b.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/f$a.class */
    public enum EnumC19374a {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);
        
        public final boolean isStable;
        public final boolean isSynthesized;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus", "get"));
        }

        EnumC19374a(boolean z, boolean z2) {
            this.isStable = z;
            this.isSynthesized = z2;
        }

        public static EnumC19374a get(boolean z, boolean z2) {
            EnumC19374a enumC19374a = z ? z2 ? STABLE_SYNTHESIZED : STABLE_DECLARED : z2 ? NON_STABLE_SYNTHESIZED : NON_STABLE_DECLARED;
            if (enumC19374a == null) {
                $$$reportNull$$$0(0);
            }
            return enumC19374a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected C19372f(AbstractC19193k abstractC19193k, AbstractC19025as abstractC19025as, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at, boolean z) {
        super(abstractC19193k, abstractC19025as, abstractC18983g, c18966e, enumC19040a, abstractC19026at);
        if (abstractC19193k == null) {
            m2254a(0);
        }
        if (abstractC18983g == null) {
            m2254a(1);
        }
        if (c18966e == null) {
            m2254a(2);
        }
        if (enumC19040a == null) {
            m2254a(3);
        }
        if (abstractC19026at == null) {
            m2254a(4);
        }
        this.f65286c = null;
        this.f65287d = z;
    }

    /* renamed from: a */
    public static C19372f m2253a(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19026at abstractC19026at, boolean z) {
        if (abstractC19193k == null) {
            m2254a(5);
        }
        if (abstractC18983g == null) {
            m2254a(6);
        }
        if (c18966e == null) {
            m2254a(7);
        }
        if (abstractC19026at == null) {
            m2254a(8);
        }
        return new C19372f(abstractC19193k, null, abstractC18983g, c18966e, AbstractC19039b.EnumC19040a.DECLARATION, abstractC19026at, z);
    }

    /* renamed from: a */
    private static /* synthetic */ void m2254a(int i) {
        String str = (i == 12 || i == 17 || i == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 17 || i == 20) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 14:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 16:
                objArr[0] = Payload.SOURCE;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "typeParameters";
                break;
            case 10:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
                objArr[0] = "visibility";
                break;
            case 12:
            case 17:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 18:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 19:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 12) {
            objArr[1] = "initialize";
        } else if (i == 17) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
                objArr[2] = "initialize";
                break;
            case 12:
            case 17:
            case 20:
                break;
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 18:
            case 19:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 12 || i == 17 || i == 20) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19368b
    /* renamed from: a */
    public final /* synthetic */ AbstractC19368b mo2250a(KotlinType kotlinType, List list, KotlinType kotlinType2, C18538n c18538n) {
        AbstractC19020aq abstractC19020aq;
        if (kotlinType2 == null) {
            m2254a(19);
        }
        List<AbstractC19050ba> m2248a = C19379k.m2248a(list, getValueParameters(), this);
        if (kotlinType == null) {
            abstractC19020aq = null;
        } else {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC19020aq = C19762c.m1522a(this, kotlinType, AbstractC18983g.C18984a.m2705a());
        }
        C19372f c19372f = (C19372f) newCopyBuilder().setValueParameters(m2248a).setReturnType(kotlinType2).setExtensionReceiverParameter(abstractC19020aq).setDropOriginalInContainingParts().setPreserveSourceElement().build();
        if (!f65285b && c19372f == null) {
            throw new AssertionError("null after substitution while enhancing " + toString());
        }
        if (c18538n != null) {
            c19372f.putInUserDataMap((AbstractC18973a.AbstractC18974a) c18538n.f63624a, c18538n.f63625b);
        }
        if (c19372f == null) {
            m2254a(20);
        }
        return c19372f;
    }

    /* renamed from: a */
    public final void m2252a(boolean z, boolean z2) {
        this.f65286c = EnumC19374a.get(z, z2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public /* synthetic */ FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            m2254a(13);
        }
        if (enumC19040a == null) {
            m2254a(14);
        }
        if (abstractC18983g == null) {
            m2254a(15);
        }
        if (abstractC19026at == null) {
            m2254a(16);
        }
        AbstractC19025as abstractC19025as = (AbstractC19025as) abstractC19219w;
        if (c18966e == null) {
            c18966e = getName();
        }
        C19372f c19372f = new C19372f(abstractC19193k, abstractC19025as, abstractC18983g, c18966e, enumC19040a, abstractC19026at, this.f65287d);
        c19372f.m2252a(hasStableParameterNames(), hasSynthesizedParameterNames());
        return c19372f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public boolean hasStableParameterNames() {
        if (f65285b || this.f65286c != null) {
            return this.f65286c.isStable;
        }
        throw new AssertionError("Parameter names status was not set: ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        if (f65285b || this.f65286c != null) {
            return this.f65286c.isSynthesized;
        }
        throw new AssertionError("Parameter names status was not set: ".concat(String.valueOf(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00aa, code lost:
        if (r0.f65157b.m3986a(r0) == false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d4 A[SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa initialize(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq r11, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq r12, java.util.List<? extends kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor> r13, java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba> r14, kotlin.reflect.jvm.internal.impl.types.KotlinType r15, kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y r16, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s r17, java.util.Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a.AbstractC18974a<?>, ?> r18) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.p559b.C19372f.initialize(kotlin.reflect.jvm.internal.impl.descriptors.aq, kotlin.reflect.jvm.internal.impl.descriptors.aq, java.util.List, java.util.List, kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.descriptors.y, kotlin.reflect.jvm.internal.impl.descriptors.s, java.util.Map):kotlin.reflect.jvm.internal.impl.descriptors.impl.aa");
    }
}
