package kotlin.reflect.jvm.internal.impl.types.error;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl.class */
public class ErrorSimpleFunctionDescriptorImpl extends C19142aa {
    private final ErrorUtils.ErrorScope ownerScope;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "ownerScope";
                break;
            case 2:
                objArr[0] = "newOwner";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "annotations";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl";
                break;
            case 8:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 6) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "copy";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 6:
            case 7:
                break;
            case 8:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 6 || i == 7) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorSimpleFunctionDescriptorImpl(AbstractC19070d abstractC19070d, ErrorUtils.ErrorScope errorScope) {
        super(abstractC19070d, null, AbstractC18983g.C18984a.m2705a(), C18966e.m2715c("<ERROR FUNCTION>"), AbstractC19039b.EnumC19040a.DECLARATION, AbstractC19026at.f64759a);
        if (abstractC19070d == null) {
            $$$reportNull$$$0(0);
        }
        if (errorScope == null) {
            $$$reportNull$$$0(1);
        }
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        this.ownerScope = errorScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public AbstractC19025as copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(2);
        }
        if (enumC19040a == null) {
            $$$reportNull$$$0(3);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(4);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(5);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public AbstractC19219w.AbstractC19220a<? extends AbstractC19025as> newCopyBuilder() {
        return new AbstractC19219w.AbstractC19220a<AbstractC19025as>() { // from class: kotlin.reflect.jvm.internal.impl.types.error.ErrorSimpleFunctionDescriptorImpl.1
            /* JADX WARN: Removed duplicated region for block: B:111:0x02ec  */
            /* JADX WARN: Removed duplicated region for block: B:114:0x0378  */
            /* JADX WARN: Removed duplicated region for block: B:115:0x0380  */
            /* JADX WARN: Removed duplicated region for block: B:116:0x0388  */
            /* JADX WARN: Removed duplicated region for block: B:117:0x0390  */
            /* JADX WARN: Removed duplicated region for block: B:118:0x0398  */
            /* JADX WARN: Removed duplicated region for block: B:119:0x03a0  */
            /* JADX WARN: Removed duplicated region for block: B:120:0x03a8  */
            /* JADX WARN: Removed duplicated region for block: B:121:0x03b0  */
            /* JADX WARN: Removed duplicated region for block: B:122:0x03b8  */
            /* JADX WARN: Removed duplicated region for block: B:123:0x03c0  */
            /* JADX WARN: Removed duplicated region for block: B:124:0x03c8  */
            /* JADX WARN: Removed duplicated region for block: B:127:0x03d8  */
            /* JADX WARN: Removed duplicated region for block: B:149:0x0444  */
            /* JADX WARN: Removed duplicated region for block: B:52:0x00f0  */
            /* JADX WARN: Removed duplicated region for block: B:56:0x0184  */
            /* JADX WARN: Removed duplicated region for block: B:57:0x018c  */
            /* JADX WARN: Removed duplicated region for block: B:58:0x0194  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x019c  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x01a4  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x01ac  */
            /* JADX WARN: Removed duplicated region for block: B:62:0x01b4  */
            /* JADX WARN: Removed duplicated region for block: B:63:0x01bc  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01c4  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01cc  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x01d4  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x01de  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private static /* synthetic */ void $$$reportNull$$$0(int r4) {
                /*
                    Method dump skipped, instructions count: 1115
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.error.ErrorSimpleFunctionDescriptorImpl.C199931.$$$reportNull$$$0(int):void");
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19025as build() {
                return ErrorSimpleFunctionDescriptorImpl.this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setAdditionalAnnotations(AbstractC18983g abstractC18983g) {
                if (abstractC18983g == null) {
                    $$$reportNull$$$0(29);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setCopyOverrides(boolean z) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setDispatchReceiverParameter(AbstractC19020aq abstractC19020aq) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setDropOriginalInContainingParts() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setExtensionReceiverParameter(AbstractC19020aq abstractC19020aq) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setHiddenForResolutionEverywhereBesideSupercalls() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setHiddenToOvercomeSignatureClash() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setKind(AbstractC19039b.EnumC19040a enumC19040a) {
                if (enumC19040a == null) {
                    $$$reportNull$$$0(6);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setModality(EnumC19222y enumC19222y) {
                if (enumC19222y == null) {
                    $$$reportNull$$$0(2);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setName(C18966e c18966e) {
                if (c18966e == null) {
                    $$$reportNull$$$0(9);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setOriginal(AbstractC19039b abstractC19039b) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setOwner(AbstractC19193k abstractC19193k) {
                if (abstractC19193k == null) {
                    $$$reportNull$$$0(0);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setPreserveSourceElement() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setReturnType(KotlinType kotlinType) {
                if (kotlinType == null) {
                    $$$reportNull$$$0(19);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setSignatureChange() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setSubstitution(TypeSubstitution typeSubstitution) {
                if (typeSubstitution == null) {
                    $$$reportNull$$$0(13);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setTypeParameters(List<TypeParameterDescriptor> list) {
                if (list == null) {
                    $$$reportNull$$$0(17);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setValueParameters(List<AbstractC19050ba> list) {
                if (list == null) {
                    $$$reportNull$$$0(11);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
            public AbstractC19219w.AbstractC19220a<AbstractC19025as> setVisibility(AbstractC19213s abstractC19213s) {
                if (abstractC19213s == null) {
                    $$$reportNull$$$0(4);
                }
                return this;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public void setOverriddenDescriptors(Collection<? extends AbstractC19039b> collection) {
        if (collection == null) {
            $$$reportNull$$$0(8);
        }
    }
}
