package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19215u;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.C19813b;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.C20028i;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl.class */
public class PropertyDescriptorImpl extends AbstractC19153ag implements AbstractC19017an {

    /* renamed from: a */
    public AbstractC19213s f64866a;

    /* renamed from: b */
    public C19189x f64867b;

    /* renamed from: g */
    private final EnumC19222y f64868g;

    /* renamed from: h */
    private Collection<? extends AbstractC19017an> f64869h;

    /* renamed from: i */
    private final AbstractC19017an f64870i;

    /* renamed from: j */
    private final AbstractC19039b.EnumC19040a f64871j;

    /* renamed from: k */
    private final boolean f64872k;

    /* renamed from: l */
    private final boolean f64873l;

    /* renamed from: m */
    private final boolean f64874m;

    /* renamed from: n */
    private final boolean f64875n;

    /* renamed from: o */
    private final boolean f64876o;

    /* renamed from: p */
    private final boolean f64877p;

    /* renamed from: q */
    private AbstractC19020aq f64878q;

    /* renamed from: r */
    private AbstractC19020aq f64879r;

    /* renamed from: s */
    private List<TypeParameterDescriptor> f64880s;

    /* renamed from: t */
    private AbstractC19019ap f64881t;

    /* renamed from: u */
    private boolean f64882u;

    /* renamed from: v */
    private AbstractC19215u f64883v;

    /* renamed from: w */
    private AbstractC19215u f64884w;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration.class */
    public class CopyConfiguration {
        private AbstractC19020aq dispatchReceiverParameter;
        private AbstractC19039b.EnumC19040a kind;
        private EnumC19222y modality;
        private C18966e name;
        private AbstractC19193k owner;
        private KotlinType returnType;
        private AbstractC19213s visibility;
        private AbstractC19017an original = null;
        private boolean preserveSourceElement = false;
        private TypeSubstitution substitution = TypeSubstitution.EMPTY;
        private boolean copyOverrides = true;
        private List<TypeParameterDescriptor> newTypeParameters = null;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                    break;
                case 4:
                    objArr[0] = "type";
                    break;
                case 6:
                    objArr[0] = "modality";
                    break;
                case 8:
                    objArr[0] = "visibility";
                    break;
                case 10:
                    objArr[0] = "kind";
                    break;
                case 12:
                    objArr[0] = "typeParameters";
                    break;
                case 15:
                    objArr[0] = "substitution";
                    break;
                case 18:
                    objArr[0] = "name";
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (i == 1) {
                objArr[1] = "setOwner";
            } else if (i == 2) {
                objArr[1] = "setOriginal";
            } else if (i == 3) {
                objArr[1] = "setPreserveSourceElement";
            } else if (i == 5) {
                objArr[1] = "setReturnType";
            } else if (i == 7) {
                objArr[1] = "setModality";
            } else if (i == 9) {
                objArr[1] = "setVisibility";
            } else if (i == 11) {
                objArr[1] = "setKind";
            } else if (i == 19) {
                objArr[1] = "setName";
            } else if (i == 13) {
                objArr[1] = "setTypeParameters";
            } else if (i == 14) {
                objArr[1] = "setDispatchReceiverParameter";
            } else if (i == 16) {
                objArr[1] = "setSubstitution";
            } else if (i != 17) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    break;
                case 4:
                    objArr[2] = "setReturnType";
                    break;
                case 6:
                    objArr[2] = "setModality";
                    break;
                case 8:
                    objArr[2] = "setVisibility";
                    break;
                case 10:
                    objArr[2] = "setKind";
                    break;
                case 12:
                    objArr[2] = "setTypeParameters";
                    break;
                case 15:
                    objArr[2] = "setSubstitution";
                    break;
                case 18:
                    objArr[2] = "setName";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String format = String.format(str, objArr);
            throw ((i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        public CopyConfiguration() {
            PropertyDescriptorImpl.this = r4;
            this.owner = r4.getContainingDeclaration();
            this.modality = r4.getModality();
            this.visibility = r4.getVisibility();
            this.kind = r4.getKind();
            this.dispatchReceiverParameter = r4.f64878q;
            this.name = r4.getName();
            this.returnType = r4.mo2593g();
        }

        public AbstractC19017an build() {
            return PropertyDescriptorImpl.this.m2633a(this);
        }

        AbstractC19018ao getOriginalGetter() {
            AbstractC19017an abstractC19017an = this.original;
            if (abstractC19017an == null) {
                return null;
            }
            return abstractC19017an.mo2635a();
        }

        AbstractC19019ap getOriginalSetter() {
            AbstractC19017an abstractC19017an = this.original;
            if (abstractC19017an == null) {
                return null;
            }
            return abstractC19017an.mo2623b();
        }

        public CopyConfiguration setCopyOverrides(boolean z) {
            this.copyOverrides = z;
            return this;
        }

        public CopyConfiguration setKind(AbstractC19039b.EnumC19040a enumC19040a) {
            if (enumC19040a == null) {
                $$$reportNull$$$0(10);
            }
            this.kind = enumC19040a;
            return this;
        }

        public CopyConfiguration setModality(EnumC19222y enumC19222y) {
            if (enumC19222y == null) {
                $$$reportNull$$$0(6);
            }
            this.modality = enumC19222y;
            return this;
        }

        public CopyConfiguration setOriginal(AbstractC19039b abstractC19039b) {
            this.original = (AbstractC19017an) abstractC19039b;
            return this;
        }

        public CopyConfiguration setOwner(AbstractC19193k abstractC19193k) {
            if (abstractC19193k == null) {
                $$$reportNull$$$0(0);
            }
            this.owner = abstractC19193k;
            return this;
        }

        public CopyConfiguration setSubstitution(TypeSubstitution typeSubstitution) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(15);
            }
            this.substitution = typeSubstitution;
            return this;
        }

        public CopyConfiguration setVisibility(AbstractC19213s abstractC19213s) {
            if (abstractC19213s == null) {
                $$$reportNull$$$0(8);
            }
            this.visibility = abstractC19213s;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PropertyDescriptorImpl(AbstractC19193k abstractC19193k, AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, boolean z, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        super(abstractC19193k, abstractC18983g, c18966e, null, z, abstractC19026at);
        if (abstractC19193k == null) {
            m2634a(0);
        }
        if (abstractC18983g == null) {
            m2634a(1);
        }
        if (enumC19222y == null) {
            m2634a(2);
        }
        if (abstractC19213s == null) {
            m2634a(3);
        }
        if (c18966e == null) {
            m2634a(4);
        }
        if (enumC19040a == null) {
            m2634a(5);
        }
        if (abstractC19026at == null) {
            m2634a(6);
        }
        this.f64869h = null;
        this.f64868g = enumC19222y;
        this.f64866a = abstractC19213s;
        this.f64870i = abstractC19017an == null ? this : abstractC19017an;
        this.f64871j = enumC19040a;
        this.f64872k = z2;
        this.f64873l = z3;
        this.f64874m = z4;
        this.f64875n = z5;
        this.f64876o = z6;
        this.f64877p = z7;
    }

    /* renamed from: a */
    public static PropertyDescriptorImpl m2629a(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            m2634a(7);
        }
        if (abstractC18983g == null) {
            m2634a(8);
        }
        if (enumC19222y == null) {
            m2634a(9);
        }
        if (abstractC19213s == null) {
            m2634a(10);
        }
        if (c18966e == null) {
            m2634a(11);
        }
        if (enumC19040a == null) {
            m2634a(12);
        }
        if (abstractC19026at == null) {
            m2634a(13);
        }
        return new PropertyDescriptorImpl(abstractC19193k, null, abstractC18983g, enumC19222y, abstractC19213s, true, c18966e, enumC19040a, abstractC19026at, false, false, false, false, false, false);
    }

    /* renamed from: a */
    private static AbstractC19213s m2628a(AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a) {
        AbstractC19213s abstractC19213s2 = abstractC19213s;
        if (enumC19040a == AbstractC19039b.EnumC19040a.FAKE_OVERRIDE) {
            abstractC19213s2 = abstractC19213s;
            if (C19200r.m2517a(abstractC19213s.mo2500c())) {
                abstractC19213s2 = C19200r.f65009h;
            }
        }
        return abstractC19213s2;
    }

    /* renamed from: a */
    private static AbstractC19219w m2625a(TypeSubstitutor typeSubstitutor, AbstractC19016am abstractC19016am) {
        if (typeSubstitutor == null) {
            m2634a(25);
        }
        if (abstractC19016am == null) {
            m2634a(26);
        }
        if (abstractC19016am.getInitialSignatureDescriptor() != null) {
            return abstractC19016am.getInitialSignatureDescriptor().substitute(typeSubstitutor);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0380  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m2634a(int r4) {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl.m2634a(int):void");
    }

    /* renamed from: o */
    private CopyConfiguration m2617o() {
        return new CopyConfiguration();
    }

    /* renamed from: a */
    protected final AbstractC19017an m2633a(CopyConfiguration copyConfiguration) {
        AbstractC19026at abstractC19026at;
        AbstractC19020aq abstractC19020aq;
        C19191z c19191z;
        AbstractC19193k abstractC19193k = copyConfiguration.owner;
        EnumC19222y enumC19222y = copyConfiguration.modality;
        AbstractC19213s abstractC19213s = copyConfiguration.visibility;
        AbstractC19017an abstractC19017an = copyConfiguration.original;
        AbstractC19039b.EnumC19040a enumC19040a = copyConfiguration.kind;
        C18966e c18966e = copyConfiguration.name;
        boolean z = copyConfiguration.preserveSourceElement;
        AbstractC19017an abstractC19017an2 = copyConfiguration.original;
        if (z) {
            if (abstractC19017an2 == null) {
                abstractC19017an2 = mo2599n();
            }
            abstractC19026at = abstractC19017an2.getSource();
        } else {
            abstractC19026at = AbstractC19026at.f64759a;
        }
        if (abstractC19026at == null) {
            m2634a(23);
        }
        PropertyDescriptorImpl mo1286a = mo1286a(abstractC19193k, enumC19222y, abstractC19213s, abstractC19017an, enumC19040a, c18966e, abstractC19026at);
        List<TypeParameterDescriptor> typeParameters = copyConfiguration.newTypeParameters == null ? getTypeParameters() : copyConfiguration.newTypeParameters;
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor substituteTypeParameters = DescriptorSubstitutor.substituteTypeParameters(typeParameters, copyConfiguration.substitution, mo1286a, arrayList);
        KotlinType substitute = substituteTypeParameters.substitute(copyConfiguration.returnType, Variance.OUT_VARIANCE);
        C19172m c19172m = null;
        if (substitute == null) {
            return null;
        }
        AbstractC19020aq abstractC19020aq2 = copyConfiguration.dispatchReceiverParameter;
        if (abstractC19020aq2 != null) {
            AbstractC19020aq mo2594a = abstractC19020aq2.mo2594a(substituteTypeParameters);
            abstractC19020aq = mo2594a;
            if (mo2594a == null) {
                return null;
            }
        } else {
            abstractC19020aq = null;
        }
        AbstractC19020aq abstractC19020aq3 = this.f64879r;
        if (abstractC19020aq3 != null) {
            KotlinType substitute2 = substituteTypeParameters.substitute(abstractC19020aq3.mo2593g(), Variance.IN_VARIANCE);
            if (substitute2 == null) {
                return null;
            }
            c19191z = new C19191z(mo1286a, new C19813b(mo1286a, substitute2, this.f64879r.mo2529a()), this.f64879r.getAnnotations());
        } else {
            c19191z = null;
        }
        mo1286a.m2627a(substitute, arrayList, abstractC19020aq, c19191z);
        C19189x c19189x = this.f64867b;
        C19189x c19189x2 = c19189x == null ? null : new C19189x(mo1286a, c19189x.getAnnotations(), copyConfiguration.modality, m2628a(this.f64867b.getVisibility(), copyConfiguration.kind), this.f64867b.f64986a, this.f64867b.isExternal(), this.f64867b.isInline(), copyConfiguration.kind, copyConfiguration.getOriginalGetter(), AbstractC19026at.f64759a);
        if (c19189x2 != null) {
            KotlinType returnType = this.f64867b.getReturnType();
            c19189x2.f64988c = m2625a(substituteTypeParameters, this.f64867b);
            c19189x2.m2536a(returnType != null ? substituteTypeParameters.substitute(returnType, Variance.OUT_VARIANCE) : null);
        }
        AbstractC19019ap abstractC19019ap = this.f64881t;
        C19190y c19190y = abstractC19019ap == null ? null : new C19190y(mo1286a, abstractC19019ap.getAnnotations(), copyConfiguration.modality, m2628a(this.f64881t.getVisibility(), copyConfiguration.kind), this.f64881t.mo2541a(), this.f64881t.isExternal(), this.f64881t.isInline(), copyConfiguration.kind, copyConfiguration.getOriginalSetter(), AbstractC19026at.f64759a);
        if (c19190y != null) {
            List<AbstractC19050ba> substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(c19190y, this.f64881t.getValueParameters(), substituteTypeParameters, false, false, null);
            List<AbstractC19050ba> list = substitutedValueParameters;
            if (substitutedValueParameters == null) {
                mo1286a.f64882u = true;
                list = Collections.singletonList(C19190y.m2533a(c19190y, C19756a.m1526d(copyConfiguration.owner).m2800f(), this.f64881t.getValueParameters().get(0).getAnnotations()));
            }
            if (list.size() != 1) {
                throw new IllegalStateException();
            }
            c19190y.f64988c = m2625a(substituteTypeParameters, this.f64881t);
            c19190y.m2532a(list.get(0));
        }
        AbstractC19215u abstractC19215u = this.f64883v;
        C19172m c19172m2 = abstractC19215u == null ? null : new C19172m(abstractC19215u.getAnnotations(), mo1286a);
        AbstractC19215u abstractC19215u2 = this.f64884w;
        if (abstractC19215u2 != null) {
            c19172m = new C19172m(abstractC19215u2.getAnnotations(), mo1286a);
        }
        mo1286a.m2630a(c19189x2, c19190y, c19172m2, c19172m);
        if (copyConfiguration.copyOverrides) {
            C20028i m1188a = C20028i.m1188a();
            for (AbstractC19017an abstractC19017an3 : getOverriddenDescriptors()) {
                m1188a.add(abstractC19017an3.mo2626a(substituteTypeParameters));
            }
            mo1286a.setOverriddenDescriptors(m1188a);
        }
        if (ar_() && this.f64912e != null) {
            mo1286a.m2597a(this.f64912e);
        }
        return mo1286a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: a */
    public final AbstractC19017an substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            m2634a(22);
        }
        return typeSubstitutor.isEmpty() ? this : m2617o().setSubstitution(typeSubstitutor.getSubstitution()).setOriginal(mo2599n()).build();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC19018ao mo2635a() {
        return this.f64867b;
    }

    /* renamed from: a */
    protected PropertyDescriptorImpl mo1286a(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19017an abstractC19017an, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            m2634a(27);
        }
        if (enumC19222y == null) {
            m2634a(28);
        }
        if (abstractC19213s == null) {
            m2634a(29);
        }
        if (enumC19040a == null) {
            m2634a(30);
        }
        if (c18966e == null) {
            m2634a(31);
        }
        if (abstractC19026at == null) {
            m2634a(32);
        }
        return new PropertyDescriptorImpl(abstractC19193k, abstractC19017an, getAnnotations(), enumC19222y, abstractC19213s, at_(), c18966e, enumC19040a, abstractC19026at, this.f64872k, ar_(), isExpect(), isActual(), isExternal(), this.f64877p);
    }

    /* renamed from: a */
    public final void m2631a(C19189x c19189x, AbstractC19019ap abstractC19019ap) {
        m2630a(c19189x, abstractC19019ap, (AbstractC19215u) null, (AbstractC19215u) null);
    }

    /* renamed from: a */
    public final void m2630a(C19189x c19189x, AbstractC19019ap abstractC19019ap, AbstractC19215u abstractC19215u, AbstractC19215u abstractC19215u2) {
        this.f64867b = c19189x;
        this.f64881t = abstractC19019ap;
        this.f64883v = abstractC19215u;
        this.f64884w = abstractC19215u2;
    }

    /* renamed from: a */
    public final void m2627a(KotlinType kotlinType, List<? extends TypeParameterDescriptor> list, AbstractC19020aq abstractC19020aq, AbstractC19020aq abstractC19020aq2) {
        if (kotlinType == null) {
            m2634a(14);
        }
        if (list == null) {
            m2634a(15);
        }
        m2600a(kotlinType);
        this.f64880s = new ArrayList(list);
        this.f64879r = abstractC19020aq2;
        this.f64878q = abstractC19020aq;
    }

    /* renamed from: a */
    public final void m2624a(boolean z) {
        this.f64882u = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2384a((AbstractC19017an) this, (PropertyDescriptorImpl) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    public boolean ar_() {
        return this.f64873l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19053bd
    public final boolean as_() {
        return this.f64877p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: b */
    public final AbstractC19019ap mo2623b() {
        return this.f64881t;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: c */
    public final List<AbstractC19016am> mo2622c() {
        ArrayList arrayList = new ArrayList(2);
        C19189x c19189x = this.f64867b;
        if (c19189x != null) {
            arrayList.add(c19189x);
        }
        AbstractC19019ap abstractC19019ap = this.f64881t;
        if (abstractC19019ap != null) {
            arrayList.add(abstractC19019ap);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public /* synthetic */ AbstractC19039b copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        AbstractC19017an build = m2617o().setOwner(abstractC19193k).setOriginal(null).setModality(enumC19222y).setVisibility(abstractC19213s).setKind(enumC19040a).setCopyOverrides(z).build();
        if (build == null) {
            m2634a(37);
        }
        return build;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: d */
    public final AbstractC19017an mo2599n() {
        AbstractC19017an abstractC19017an = this.f64870i;
        PropertyDescriptorImpl mo2621d = abstractC19017an == this ? this : abstractC19017an.mo2621d();
        if (mo2621d == null) {
            m2634a(33);
        }
        return mo2621d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: e */
    public final AbstractC19215u mo2620e() {
        return this.f64883v;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an
    /* renamed from: f */
    public final AbstractC19215u mo2619f() {
        return this.f64884w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getDispatchReceiverParameter() {
        return this.f64878q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getExtensionReceiverParameter() {
        return this.f64879r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public AbstractC19039b.EnumC19040a getKind() {
        AbstractC19039b.EnumC19040a enumC19040a = this.f64871j;
        if (enumC19040a == null) {
            m2634a(34);
        }
        return enumC19040a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y enumC19222y = this.f64868g;
        if (enumC19222y == null) {
            m2634a(19);
        }
        return enumC19222y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public Collection<? extends AbstractC19017an> getOverriddenDescriptors() {
        List list = this.f64869h;
        if (list == null) {
            list = Collections.emptyList();
        }
        if (list == null) {
            m2634a(36);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public KotlinType getReturnType() {
        KotlinType g = mo2593g();
        if (g == null) {
            m2634a(18);
        }
        return g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> list = this.f64880s;
        if (list != null) {
            if (list == null) {
                m2634a(17);
            }
            return list;
        }
        throw new IllegalStateException("typeParameters == null for " + toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = this.f64866a;
        if (abstractC19213s == null) {
            m2634a(20);
        }
        return abstractC19213s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isActual() {
        return this.f64875n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExpect() {
        return this.f64874m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExternal() {
        return this.f64876o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    /* renamed from: l */
    public final boolean mo2604l() {
        return this.f64872k;
    }

    /* renamed from: m */
    public final boolean m2618m() {
        return this.f64882u;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public void setOverriddenDescriptors(Collection<? extends AbstractC19039b> collection) {
        if (collection == 0) {
            m2634a(35);
        }
        this.f64869h = collection;
    }
}
