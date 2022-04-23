package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.f;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/a.class */
public abstract class a extends q {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected final i<SimpleType> defaultType;
    private final e name;
    private final i<aq> thisAsReceiverParameter;
    private final i<h> unsubstitutedInnerClassesScope;

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

    public a(n nVar, e eVar) {
        if (nVar == null) {
            $$$reportNull$$$0(0);
        }
        if (eVar == null) {
            $$$reportNull$$$0(1);
        }
        this.name = eVar;
        this.defaultType = nVar.a(new Function0<SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.1
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ SimpleType invoke() {
                a aVar = a.this;
                return TypeUtils.makeUnsubstitutedType(aVar, aVar.getUnsubstitutedMemberScope(), new Function1<KotlinTypeRefiner, SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
                        KotlinTypeRefiner kotlinTypeRefiner2 = kotlinTypeRefiner;
                        g refineDescriptor = kotlinTypeRefiner2.refineDescriptor(a.this);
                        return refineDescriptor == null ? a.this.defaultType.invoke() : refineDescriptor instanceof ax ? KotlinTypeFactory.computeExpandedType((ax) refineDescriptor, TypeUtils.getDefaultTypeProjections(refineDescriptor.getTypeConstructor().getParameters())) : refineDescriptor instanceof q ? TypeUtils.makeUnsubstitutedType(refineDescriptor.getTypeConstructor().refine(kotlinTypeRefiner2), ((q) refineDescriptor).getUnsubstitutedMemberScope(kotlinTypeRefiner2), this) : refineDescriptor.getDefaultType();
                    }
                });
            }
        });
        this.unsubstitutedInnerClassesScope = nVar.a(new Function0<h>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.2
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ h invoke() {
                return new f(a.this.getUnsubstitutedMemberScope());
            }
        });
        this.thisAsReceiverParameter = nVar.a(new Function0<aq>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.a.3
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ aq invoke() {
                return new n(a.this);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((d) this, (a) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public SimpleType getDefaultType() {
        SimpleType invoke = this.defaultType.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(19);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getMemberScope(TypeSubstitution typeSubstitution) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(14);
        }
        h memberScope = getMemberScope(typeSubstitution, kotlin.reflect.jvm.internal.impl.resolve.b.a.a(kotlin.reflect.jvm.internal.impl.resolve.d.f(this)));
        if (memberScope == null) {
            $$$reportNull$$$0(15);
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
        if (typeSubstitution == null) {
            $$$reportNull$$$0(9);
        }
        if (kotlinTypeRefiner == null) {
            $$$reportNull$$$0(10);
        }
        if (typeSubstitution.isEmpty()) {
            h unsubstitutedMemberScope = getUnsubstitutedMemberScope(kotlinTypeRefiner);
            if (unsubstitutedMemberScope == null) {
                $$$reportNull$$$0(11);
            }
            return unsubstitutedMemberScope;
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.e.m(getUnsubstitutedMemberScope(kotlinTypeRefiner), TypeSubstitutor.create(typeSubstitution));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ac
    public e getName() {
        e eVar = this.name;
        if (eVar == null) {
            $$$reportNull$$$0(2);
        }
        return eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.k
    public d getOriginal() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public aq getThisAsReceiverParameter() {
        aq invoke = this.thisAsReceiverParameter.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(5);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getUnsubstitutedInnerClassesScope() {
        h invoke = this.unsubstitutedInnerClassesScope.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(4);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getUnsubstitutedMemberScope() {
        h unsubstitutedMemberScope = getUnsubstitutedMemberScope(kotlin.reflect.jvm.internal.impl.resolve.b.a.a(kotlin.reflect.jvm.internal.impl.resolve.d.f(this)));
        if (unsubstitutedMemberScope == null) {
            $$$reportNull$$$0(16);
        }
        return unsubstitutedMemberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.av
    /* renamed from: substitute */
    public kotlin.reflect.jvm.internal.impl.descriptors.h substitute2(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(17);
        }
        return typeSubstitutor.isEmpty() ? this : new p(this, typeSubstitutor);
    }
}
