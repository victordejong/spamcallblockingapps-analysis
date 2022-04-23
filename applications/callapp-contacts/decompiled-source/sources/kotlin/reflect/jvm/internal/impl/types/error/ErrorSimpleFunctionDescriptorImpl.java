package kotlin.reflect.jvm.internal.impl.types.error;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl.class */
public class ErrorSimpleFunctionDescriptorImpl extends aa {
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
    public ErrorSimpleFunctionDescriptorImpl(d dVar, ErrorUtils.ErrorScope errorScope) {
        super(dVar, null, g.a.a(), e.c("<ERROR FUNCTION>"), b.a.DECLARATION, at.f37401a);
        if (dVar == null) {
            $$$reportNull$$$0(0);
        }
        if (errorScope == null) {
            $$$reportNull$$$0(1);
        }
        g.a aVar = g.f37361a;
        this.ownerScope = errorScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.b
    public as copy(k kVar, y yVar, s sVar, b.a aVar, boolean z) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public FunctionDescriptorImpl createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, g gVar, at atVar) {
        if (kVar == null) {
            $$$reportNull$$$0(2);
        }
        if (aVar == null) {
            $$$reportNull$$$0(3);
        }
        if (gVar == null) {
            $$$reportNull$$$0(4);
        }
        if (atVar == null) {
            $$$reportNull$$$0(5);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public w.a<? extends as> newCopyBuilder() {
        return new w.a<as>() { // from class: kotlin.reflect.jvm.internal.impl.types.error.ErrorSimpleFunctionDescriptorImpl.1
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
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.error.ErrorSimpleFunctionDescriptorImpl.AnonymousClass1.$$$reportNull$$$0(int):void");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public as build() {
                return ErrorSimpleFunctionDescriptorImpl.this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setAdditionalAnnotations(g gVar) {
                if (gVar == null) {
                    $$$reportNull$$$0(29);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setCopyOverrides(boolean z) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setDispatchReceiverParameter(aq aqVar) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setDropOriginalInContainingParts() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setExtensionReceiverParameter(aq aqVar) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setHiddenForResolutionEverywhereBesideSupercalls() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setHiddenToOvercomeSignatureClash() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setKind(b.a aVar) {
                if (aVar == null) {
                    $$$reportNull$$$0(6);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setModality(y yVar) {
                if (yVar == null) {
                    $$$reportNull$$$0(2);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setName(e eVar) {
                if (eVar == null) {
                    $$$reportNull$$$0(9);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setOriginal(b bVar) {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setOwner(k kVar) {
                if (kVar == null) {
                    $$$reportNull$$$0(0);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setPreserveSourceElement() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setReturnType(KotlinType kotlinType) {
                if (kotlinType == null) {
                    $$$reportNull$$$0(19);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setSignatureChange() {
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setSubstitution(TypeSubstitution typeSubstitution) {
                if (typeSubstitution == null) {
                    $$$reportNull$$$0(13);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setTypeParameters(List<TypeParameterDescriptor> list) {
                if (list == null) {
                    $$$reportNull$$$0(17);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setValueParameters(List<ba> list) {
                if (list == null) {
                    $$$reportNull$$$0(11);
                }
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
            public w.a<as> setVisibility(s sVar) {
                if (sVar == null) {
                    $$$reportNull$$$0(4);
                }
                return this;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.b
    public void setOverriddenDescriptors(Collection<? extends b> collection) {
        if (collection == null) {
            $$$reportNull$$$0(8);
        }
    }
}
