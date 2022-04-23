package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.am;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.i;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl.class */
public class PropertyDescriptorImpl extends ag implements an {

    /* renamed from: a  reason: collision with root package name */
    public s f37507a;

    /* renamed from: b  reason: collision with root package name */
    public x f37508b;
    private final y g;
    private Collection<? extends an> h;
    private final an i;
    private final b.a j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private aq q;
    private aq r;
    private List<TypeParameterDescriptor> s;
    private ap t;
    private boolean u;
    private u v;
    private u w;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration.class */
    public class CopyConfiguration {
        private aq dispatchReceiverParameter;
        private b.a kind;
        private y modality;
        private e name;
        private k owner;
        private KotlinType returnType;
        private s visibility;
        private an original = null;
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
            this.owner = PropertyDescriptorImpl.this.getContainingDeclaration();
            this.modality = PropertyDescriptorImpl.this.getModality();
            this.visibility = PropertyDescriptorImpl.this.getVisibility();
            this.kind = PropertyDescriptorImpl.this.getKind();
            this.dispatchReceiverParameter = PropertyDescriptorImpl.this.q;
            this.name = PropertyDescriptorImpl.this.getName();
            this.returnType = PropertyDescriptorImpl.this.g();
        }

        public an build() {
            return PropertyDescriptorImpl.this.a(this);
        }

        ao getOriginalGetter() {
            an anVar = this.original;
            if (anVar == null) {
                return null;
            }
            return anVar.a();
        }

        ap getOriginalSetter() {
            an anVar = this.original;
            if (anVar == null) {
                return null;
            }
            return anVar.b();
        }

        public CopyConfiguration setCopyOverrides(boolean z) {
            this.copyOverrides = z;
            return this;
        }

        public CopyConfiguration setKind(b.a aVar) {
            if (aVar == null) {
                $$$reportNull$$$0(10);
            }
            this.kind = aVar;
            return this;
        }

        public CopyConfiguration setModality(y yVar) {
            if (yVar == null) {
                $$$reportNull$$$0(6);
            }
            this.modality = yVar;
            return this;
        }

        public CopyConfiguration setOriginal(b bVar) {
            this.original = (an) bVar;
            return this;
        }

        public CopyConfiguration setOwner(k kVar) {
            if (kVar == null) {
                $$$reportNull$$$0(0);
            }
            this.owner = kVar;
            return this;
        }

        public CopyConfiguration setSubstitution(TypeSubstitution typeSubstitution) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(15);
            }
            this.substitution = typeSubstitution;
            return this;
        }

        public CopyConfiguration setVisibility(s sVar) {
            if (sVar == null) {
                $$$reportNull$$$0(8);
            }
            this.visibility = sVar;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PropertyDescriptorImpl(k kVar, an anVar, g gVar, y yVar, s sVar, boolean z, e eVar, b.a aVar, at atVar, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        super(kVar, gVar, eVar, null, z, atVar);
        if (kVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (yVar == null) {
            a(2);
        }
        if (sVar == null) {
            a(3);
        }
        if (eVar == null) {
            a(4);
        }
        if (aVar == null) {
            a(5);
        }
        if (atVar == null) {
            a(6);
        }
        this.h = null;
        this.g = yVar;
        this.f37507a = sVar;
        this.i = anVar == null ? this : anVar;
        this.j = aVar;
        this.k = z2;
        this.l = z3;
        this.m = z4;
        this.n = z5;
        this.o = z6;
        this.p = z7;
    }

    public static PropertyDescriptorImpl a(k kVar, g gVar, y yVar, s sVar, e eVar, b.a aVar, at atVar) {
        if (kVar == null) {
            a(7);
        }
        if (gVar == null) {
            a(8);
        }
        if (yVar == null) {
            a(9);
        }
        if (sVar == null) {
            a(10);
        }
        if (eVar == null) {
            a(11);
        }
        if (aVar == null) {
            a(12);
        }
        if (atVar == null) {
            a(13);
        }
        return new PropertyDescriptorImpl(kVar, null, gVar, yVar, sVar, true, eVar, aVar, atVar, false, false, false, false, false, false);
    }

    private static s a(s sVar, b.a aVar) {
        s sVar2 = sVar;
        if (aVar == b.a.FAKE_OVERRIDE) {
            sVar2 = sVar;
            if (r.a(sVar.c())) {
                sVar2 = r.h;
            }
        }
        return sVar2;
    }

    private static w a(TypeSubstitutor typeSubstitutor, am amVar) {
        if (typeSubstitutor == null) {
            a(25);
        }
        if (amVar == null) {
            a(26);
        }
        if (amVar.getInitialSignatureDescriptor() != null) {
            return amVar.getInitialSignatureDescriptor().substitute(typeSubstitutor);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(int r4) {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl.a(int):void");
    }

    private CopyConfiguration o() {
        return new CopyConfiguration();
    }

    protected final an a(CopyConfiguration copyConfiguration) {
        at atVar;
        aq aqVar;
        z zVar;
        k kVar = copyConfiguration.owner;
        y yVar = copyConfiguration.modality;
        s sVar = copyConfiguration.visibility;
        an anVar = copyConfiguration.original;
        b.a aVar = copyConfiguration.kind;
        e eVar = copyConfiguration.name;
        boolean z = copyConfiguration.preserveSourceElement;
        an anVar2 = copyConfiguration.original;
        if (z) {
            if (anVar2 == null) {
                anVar2 = n();
            }
            atVar = anVar2.getSource();
        } else {
            atVar = at.f37401a;
        }
        if (atVar == null) {
            a(23);
        }
        PropertyDescriptorImpl a2 = a(kVar, yVar, sVar, anVar, aVar, eVar, atVar);
        List<TypeParameterDescriptor> typeParameters = copyConfiguration.newTypeParameters == null ? getTypeParameters() : copyConfiguration.newTypeParameters;
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor substituteTypeParameters = DescriptorSubstitutor.substituteTypeParameters(typeParameters, copyConfiguration.substitution, a2, arrayList);
        KotlinType substitute = substituteTypeParameters.substitute(copyConfiguration.returnType, Variance.OUT_VARIANCE);
        m mVar = null;
        if (substitute == null) {
            return null;
        }
        aq aqVar2 = copyConfiguration.dispatchReceiverParameter;
        if (aqVar2 != null) {
            aq a3 = aqVar2.a(substituteTypeParameters);
            aqVar = a3;
            if (a3 == null) {
                return null;
            }
        } else {
            aqVar = null;
        }
        aq aqVar3 = this.r;
        if (aqVar3 != null) {
            KotlinType substitute2 = substituteTypeParameters.substitute(aqVar3.g(), Variance.IN_VARIANCE);
            if (substitute2 == null) {
                return null;
            }
            zVar = new z(a2, new kotlin.reflect.jvm.internal.impl.resolve.e.a.b(a2, substitute2, this.r.a()), this.r.getAnnotations());
        } else {
            zVar = null;
        }
        a2.a(substitute, arrayList, aqVar, zVar);
        x xVar = this.f37508b;
        x xVar2 = xVar == null ? null : new x(a2, xVar.getAnnotations(), copyConfiguration.modality, a(this.f37508b.getVisibility(), copyConfiguration.kind), this.f37508b.f37584a, this.f37508b.isExternal(), this.f37508b.isInline(), copyConfiguration.kind, copyConfiguration.getOriginalGetter(), at.f37401a);
        if (xVar2 != null) {
            KotlinType returnType = this.f37508b.getReturnType();
            xVar2.f37586c = a(substituteTypeParameters, this.f37508b);
            xVar2.a(returnType != null ? substituteTypeParameters.substitute(returnType, Variance.OUT_VARIANCE) : null);
        }
        ap apVar = this.t;
        y yVar2 = apVar == null ? null : new y(a2, apVar.getAnnotations(), copyConfiguration.modality, a(this.t.getVisibility(), copyConfiguration.kind), this.t.a(), this.t.isExternal(), this.t.isInline(), copyConfiguration.kind, copyConfiguration.getOriginalSetter(), at.f37401a);
        if (yVar2 != null) {
            List<ba> substitutedValueParameters = FunctionDescriptorImpl.getSubstitutedValueParameters(yVar2, this.t.getValueParameters(), substituteTypeParameters, false, false, null);
            List<ba> list = substitutedValueParameters;
            if (substitutedValueParameters == null) {
                a2.u = true;
                list = Collections.singletonList(y.a(yVar2, a.d(copyConfiguration.owner).f(), this.t.getValueParameters().get(0).getAnnotations()));
            }
            if (list.size() == 1) {
                yVar2.f37586c = a(substituteTypeParameters, this.t);
                yVar2.a(list.get(0));
            } else {
                throw new IllegalStateException();
            }
        }
        u uVar = this.v;
        m mVar2 = uVar == null ? null : new m(uVar.getAnnotations(), a2);
        u uVar2 = this.w;
        if (uVar2 != null) {
            mVar = new m(uVar2.getAnnotations(), a2);
        }
        a2.a(xVar2, yVar2, mVar2, mVar);
        if (copyConfiguration.copyOverrides) {
            i a4 = i.a();
            for (an anVar3 : getOverriddenDescriptors()) {
                a4.add(anVar3.a(substituteTypeParameters));
            }
            a2.setOverriddenDescriptors(a4);
        }
        if (ar_() && this.e != null) {
            a2.a(this.e);
        }
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    /* renamed from: a */
    public final an substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            a(22);
        }
        return typeSubstitutor.isEmpty() ? this : o().setSubstitution(typeSubstitutor.getSubstitution()).setOriginal(n()).build();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    public final /* bridge */ /* synthetic */ ao a() {
        return this.f37508b;
    }

    protected PropertyDescriptorImpl a(k kVar, y yVar, s sVar, an anVar, b.a aVar, e eVar, at atVar) {
        if (kVar == null) {
            a(27);
        }
        if (yVar == null) {
            a(28);
        }
        if (sVar == null) {
            a(29);
        }
        if (aVar == null) {
            a(30);
        }
        if (eVar == null) {
            a(31);
        }
        if (atVar == null) {
            a(32);
        }
        return new PropertyDescriptorImpl(kVar, anVar, getAnnotations(), yVar, sVar, at_(), eVar, aVar, atVar, this.k, ar_(), isExpect(), isActual(), isExternal(), this.p);
    }

    public final void a(x xVar, ap apVar) {
        a(xVar, apVar, (u) null, (u) null);
    }

    public final void a(x xVar, ap apVar, u uVar, u uVar2) {
        this.f37508b = xVar;
        this.t = apVar;
        this.v = uVar;
        this.w = uVar2;
    }

    public final void a(KotlinType kotlinType, List<? extends TypeParameterDescriptor> list, aq aqVar, aq aqVar2) {
        if (kotlinType == null) {
            a(14);
        }
        if (list == null) {
            a(15);
        }
        a(kotlinType);
        this.s = new ArrayList(list);
        this.r = aqVar2;
        this.q = aqVar;
    }

    public final void a(boolean z) {
        this.u = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((an) this, (PropertyDescriptorImpl) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.bc
    public boolean ar_() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bd
    public final boolean as_() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    public final ap b() {
        return this.t;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    public final List<am> c() {
        ArrayList arrayList = new ArrayList(2);
        x xVar = this.f37508b;
        if (xVar != null) {
            arrayList.add(xVar);
        }
        ap apVar = this.t;
        if (apVar != null) {
            arrayList.add(apVar);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public /* synthetic */ b copy(k kVar, y yVar, s sVar, b.a aVar, boolean z) {
        an build = o().setOwner(kVar).setOriginal(null).setModality(yVar).setVisibility(sVar).setKind(aVar).setCopyOverrides(z).build();
        if (build == null) {
            a(37);
        }
        return build;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    /* renamed from: d */
    public final an n() {
        an anVar = this.i;
        an d2 = anVar == this ? this : anVar.d();
        if (d2 == null) {
            a(33);
        }
        return d2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    public final u e() {
        return this.v;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.an
    public final u f() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getDispatchReceiverParameter() {
        return this.q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getExtensionReceiverParameter() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public b.a getKind() {
        b.a aVar = this.j;
        if (aVar == null) {
            a(34);
        }
        return aVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y yVar = this.g;
        if (yVar == null) {
            a(19);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends an> getOverriddenDescriptors() {
        Collection<? extends an> collection = this.h;
        if (collection == null) {
            collection = Collections.emptyList();
        }
        if (collection == null) {
            a(36);
        }
        return collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public KotlinType getReturnType() {
        KotlinType g = g();
        if (g == null) {
            a(18);
        }
        return g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> list = this.s;
        if (list != null) {
            if (list == null) {
                a(17);
            }
            return list;
        }
        throw new IllegalStateException("typeParameters == null for " + toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = this.f37507a;
        if (sVar == null) {
            a(20);
        }
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExternal() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final boolean l() {
        return this.k;
    }

    public final boolean m() {
        return this.u;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public void setOverriddenDescriptors(Collection<? extends b> collection) {
        if (collection == 0) {
            a(35);
        }
        this.h = collection;
    }
}
