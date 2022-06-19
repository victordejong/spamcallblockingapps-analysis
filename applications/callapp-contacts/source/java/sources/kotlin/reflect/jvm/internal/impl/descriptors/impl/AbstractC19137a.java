package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19831f;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19845m;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/a.class */
public abstract class AbstractC19137a extends AbstractC19179q {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected final AbstractC19296i<SimpleType> defaultType;
    private final C18966e name;
    private final AbstractC19296i<AbstractC19020aq> thisAsReceiverParameter;
    private final AbstractC19296i<AbstractC19834h> unsubstitutedInnerClassesScope;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 6:
            case 12:
                objArr[0] = "typeArguments";
                break;
            case 7:
            case 10:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 9:
            case 14:
                objArr[0] = "typeSubstitution";
                break;
            case 17:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (i == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (i == 8 || i == 11 || i == 13 || i == 15) {
            objArr[1] = "getMemberScope";
        } else if (i == 16) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (i == 18) {
            objArr[1] = "substitute";
        } else if (i != 19) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
                break;
            case 6:
            case 7:
            case 9:
            case 10:
            case 12:
            case 14:
                objArr[2] = "getMemberScope";
                break;
            case 17:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    public AbstractC19137a(AbstractC19302n abstractC19302n, C18966e c18966e) {
        if (abstractC19302n == null) {
            $$$reportNull$$$0(0);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(1);
        }
        this.name = c18966e;
        this.defaultType = abstractC19302n.mo2313a(new Function0<SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.1
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ SimpleType invoke() {
                AbstractC19137a abstractC19137a = AbstractC19137a.this;
                return TypeUtils.makeUnsubstitutedType(abstractC19137a, abstractC19137a.getUnsubstitutedMemberScope(), new Function1<KotlinTypeRefiner, SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
                        KotlinTypeRefiner kotlinTypeRefiner2 = kotlinTypeRefiner;
                        AbstractC19129g refineDescriptor = kotlinTypeRefiner2.refineDescriptor(AbstractC19137a.this);
                        return refineDescriptor == null ? AbstractC19137a.this.defaultType.invoke() : refineDescriptor instanceof AbstractC19033ax ? KotlinTypeFactory.computeExpandedType((AbstractC19033ax) refineDescriptor, TypeUtils.getDefaultTypeProjections(refineDescriptor.getTypeConstructor().getParameters())) : refineDescriptor instanceof AbstractC19179q ? TypeUtils.makeUnsubstitutedType(refineDescriptor.getTypeConstructor().refine(kotlinTypeRefiner2), ((AbstractC19179q) refineDescriptor).getUnsubstitutedMemberScope(kotlinTypeRefiner2), this) : refineDescriptor.getDefaultType();
                    }
                });
            }
        });
        this.unsubstitutedInnerClassesScope = abstractC19302n.mo2313a(new Function0<AbstractC19834h>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.2
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19834h invoke() {
                return new C19831f(AbstractC19137a.this.getUnsubstitutedMemberScope());
            }
        });
        this.thisAsReceiverParameter = abstractC19302n.mo2313a(new Function0<AbstractC19020aq>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.3
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ AbstractC19020aq invoke() {
                return new C19173n(AbstractC19137a.this);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2378a((AbstractC19070d) this, (AbstractC19137a) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public SimpleType getDefaultType() {
        SimpleType invoke = this.defaultType.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(19);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(14);
        }
        AbstractC19834h memberScope = getMemberScope(typeSubstitution, C19756a.m1538a(C19807d.m1460f(this)));
        if (memberScope == null) {
            $$$reportNull$$$0(15);
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(9);
        }
        if (kotlinTypeRefiner == null) {
            $$$reportNull$$$0(10);
        }
        if (!typeSubstitution.isEmpty()) {
            return new C19845m(getUnsubstitutedMemberScope(kotlinTypeRefiner), TypeSubstitutor.create(typeSubstitution));
        }
        AbstractC19834h unsubstitutedMemberScope = getUnsubstitutedMemberScope(kotlinTypeRefiner);
        if (unsubstitutedMemberScope == null) {
            $$$reportNull$$$0(11);
        }
        return unsubstitutedMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19000ac
    public C18966e getName() {
        C18966e c18966e = this.name;
        if (c18966e == null) {
            $$$reportNull$$$0(2);
        }
        return c18966e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19070d getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19020aq getThisAsReceiverParameter() {
        AbstractC19020aq invoke = this.thisAsReceiverParameter.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(5);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getUnsubstitutedInnerClassesScope() {
        AbstractC19834h invoke = this.unsubstitutedInnerClassesScope.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(4);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getUnsubstitutedMemberScope() {
        AbstractC19834h unsubstitutedMemberScope = getUnsubstitutedMemberScope(C19756a.m1538a(C19807d.m1460f(this)));
        if (unsubstitutedMemberScope == null) {
            $$$reportNull$$$0(16);
        }
        return unsubstitutedMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    /* renamed from: substitute */
    public AbstractC19130h substitute2(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(17);
        }
        return typeSubstitutor.isEmpty() ? this : new C19177p(this, typeSubstitutor);
    }
}
