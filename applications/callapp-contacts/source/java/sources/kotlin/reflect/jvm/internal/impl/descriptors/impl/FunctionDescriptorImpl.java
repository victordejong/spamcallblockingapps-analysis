package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19148ae;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18988i;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.C19813b;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl.class */
public abstract class FunctionDescriptorImpl extends AbstractC19163i implements AbstractC19219w {
    private AbstractC19020aq dispatchReceiverParameter;
    private AbstractC19020aq extensionReceiverParameter;
    private boolean hasStableParameterNames;
    private boolean hasSynthesizedParameterNames;
    private AbstractC19219w initialSignatureDescriptor;
    private boolean isActual;
    private boolean isExpect;
    private boolean isExternal;
    private boolean isHiddenForResolutionEverywhereBesideSupercalls;
    private boolean isHiddenToOvercomeSignatureClash;
    private boolean isInfix;
    private boolean isInline;
    private boolean isOperator;
    private boolean isSuspend;
    private boolean isTailrec;
    private final AbstractC19039b.EnumC19040a kind;
    private volatile Function0<Collection<AbstractC19219w>> lazyOverriddenFunctionsTask;
    private EnumC19222y modality;
    private final AbstractC19219w original;
    private Collection<? extends AbstractC19219w> overriddenFunctions;
    private List<TypeParameterDescriptor> typeParameters;
    private KotlinType unsubstitutedReturnType;
    private List<AbstractC19050ba> unsubstitutedValueParameters;
    protected Map<AbstractC18973a.AbstractC18974a<?>, Object> userDataMap;
    private AbstractC19213s visibility;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration.class */
    public class CopyConfiguration implements AbstractC19219w.AbstractC19220a<AbstractC19219w> {
        private AbstractC18983g additionalAnnotations;
        protected boolean copyOverrides;
        protected AbstractC19020aq dispatchReceiverParameter;
        protected boolean dropOriginalInContainingParts;
        private boolean isHiddenForResolutionEverywhereBesideSupercalls;
        private boolean isHiddenToOvercomeSignatureClash;
        protected boolean justForTypeSubstitution;
        protected AbstractC19039b.EnumC19040a kind;
        protected C18966e name;
        protected AbstractC19020aq newExtensionReceiverParameter;
        private Boolean newHasSynthesizedParameterNames;
        protected EnumC19222y newModality;
        protected AbstractC19193k newOwner;
        protected KotlinType newReturnType;
        private List<TypeParameterDescriptor> newTypeParameters;
        protected List<AbstractC19050ba> newValueParameterDescriptors;
        protected AbstractC19213s newVisibility;
        protected AbstractC19219w original;
        protected boolean preserveSourceElement;
        protected boolean signatureChange;
        protected TypeSubstitution substitution;
        final /* synthetic */ FunctionDescriptorImpl this$0;
        private Map<AbstractC18973a.AbstractC18974a<?>, Object> userDataMap;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str;
            int i2;
            IllegalArgumentException illegalArgumentException;
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    i2 = 2;
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    i2 = 3;
                    break;
            }
            Object[] objArr = new Object[i2];
            switch (i) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case 13:
                    objArr[0] = "kind";
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newReturnType";
                    break;
                case 7:
                    objArr[0] = "owner";
                    break;
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 9:
                    objArr[0] = "modality";
                    break;
                case 11:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = "name";
                    break;
                case 18:
                case 20:
                    objArr[0] = "parameters";
                    break;
                case 22:
                    objArr[0] = "type";
                    break;
                case 32:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 34:
                default:
                    objArr[0] = "substitution";
                    break;
                case 36:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (i) {
                case 8:
                    objArr[1] = "setOwner";
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[1] = "setModality";
                    break;
                case 12:
                    objArr[1] = "setVisibility";
                    break;
                case 14:
                    objArr[1] = "setKind";
                    break;
                case 15:
                    objArr[1] = "setCopyOverrides";
                    break;
                case 17:
                    objArr[1] = "setName";
                    break;
                case 19:
                    objArr[1] = "setValueParameters";
                    break;
                case 21:
                    objArr[1] = "setTypeParameters";
                    break;
                case 23:
                    objArr[1] = "setReturnType";
                    break;
                case 24:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 25:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 26:
                    objArr[1] = "setOriginal";
                    break;
                case 27:
                    objArr[1] = "setSignatureChange";
                    break;
                case 28:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 29:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 30:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 31:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 33:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 35:
                    objArr[1] = "setSubstitution";
                    break;
                case 37:
                    objArr[1] = "putUserData";
                    break;
                case 38:
                    objArr[1] = "getSubstitution";
                    break;
                case 39:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (i) {
                case 7:
                    objArr[2] = "setOwner";
                    break;
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    break;
                case 9:
                    objArr[2] = "setModality";
                    break;
                case 11:
                    objArr[2] = "setVisibility";
                    break;
                case 13:
                    objArr[2] = "setKind";
                    break;
                case 16:
                    objArr[2] = "setName";
                    break;
                case 18:
                    objArr[2] = "setValueParameters";
                    break;
                case 20:
                    objArr[2] = "setTypeParameters";
                    break;
                case 22:
                    objArr[2] = "setReturnType";
                    break;
                case 32:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 34:
                    objArr[2] = "setSubstitution";
                    break;
                case 36:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String format = String.format(str, objArr);
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    illegalArgumentException = new IllegalStateException(format);
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    illegalArgumentException = new IllegalArgumentException(format);
                    break;
            }
            throw illegalArgumentException;
        }

        public CopyConfiguration(FunctionDescriptorImpl functionDescriptorImpl, TypeSubstitution typeSubstitution, AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, List<AbstractC19050ba> list, AbstractC19020aq abstractC19020aq, KotlinType kotlinType, C18966e c18966e) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(0);
            }
            if (abstractC19193k == null) {
                $$$reportNull$$$0(1);
            }
            if (enumC19222y == null) {
                $$$reportNull$$$0(2);
            }
            if (abstractC19213s == null) {
                $$$reportNull$$$0(3);
            }
            if (enumC19040a == null) {
                $$$reportNull$$$0(4);
            }
            if (list == null) {
                $$$reportNull$$$0(5);
            }
            if (kotlinType == null) {
                $$$reportNull$$$0(6);
            }
            this.this$0 = functionDescriptorImpl;
            this.original = null;
            this.dispatchReceiverParameter = functionDescriptorImpl.dispatchReceiverParameter;
            this.copyOverrides = true;
            this.signatureChange = false;
            this.preserveSourceElement = false;
            this.dropOriginalInContainingParts = false;
            this.isHiddenToOvercomeSignatureClash = functionDescriptorImpl.isHiddenToOvercomeSignatureClash();
            this.newTypeParameters = null;
            this.additionalAnnotations = null;
            this.isHiddenForResolutionEverywhereBesideSupercalls = functionDescriptorImpl.isHiddenForResolutionEverywhereBesideSupercalls();
            this.userDataMap = new LinkedHashMap();
            this.newHasSynthesizedParameterNames = null;
            this.justForTypeSubstitution = false;
            this.substitution = typeSubstitution;
            this.newOwner = abstractC19193k;
            this.newModality = enumC19222y;
            this.newVisibility = abstractC19213s;
            this.kind = enumC19040a;
            this.newValueParameterDescriptors = list;
            this.newExtensionReceiverParameter = abstractC19020aq;
            this.newReturnType = kotlinType;
            this.name = c18966e;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        public AbstractC19219w build() {
            return this.this$0.doSubstitute(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setAdditionalAnnotations */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setAdditionalAnnotations2(AbstractC18983g abstractC18983g) {
            if (abstractC18983g == null) {
                $$$reportNull$$$0(32);
            }
            this.additionalAnnotations = abstractC18983g;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setCopyOverrides */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setCopyOverrides2(boolean z) {
            this.copyOverrides = z;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setDispatchReceiverParameter */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setDispatchReceiverParameter2(AbstractC19020aq abstractC19020aq) {
            this.dispatchReceiverParameter = abstractC19020aq;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setDropOriginalInContainingParts */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setDropOriginalInContainingParts2() {
            this.dropOriginalInContainingParts = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setExtensionReceiverParameter */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setExtensionReceiverParameter2(AbstractC19020aq abstractC19020aq) {
            this.newExtensionReceiverParameter = abstractC19020aq;
            return this;
        }

        public CopyConfiguration setHasSynthesizedParameterNames(boolean z) {
            this.newHasSynthesizedParameterNames = Boolean.valueOf(z);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setHiddenForResolutionEverywhereBesideSupercalls */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setHiddenForResolutionEverywhereBesideSupercalls2() {
            this.isHiddenForResolutionEverywhereBesideSupercalls = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setHiddenToOvercomeSignatureClash */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setHiddenToOvercomeSignatureClash2() {
            this.isHiddenToOvercomeSignatureClash = true;
            return this;
        }

        public CopyConfiguration setJustForTypeSubstitution(boolean z) {
            this.justForTypeSubstitution = z;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setKind */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setKind2(AbstractC19039b.EnumC19040a enumC19040a) {
            if (enumC19040a == null) {
                $$$reportNull$$$0(13);
            }
            this.kind = enumC19040a;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setModality */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setModality2(EnumC19222y enumC19222y) {
            if (enumC19222y == null) {
                $$$reportNull$$$0(9);
            }
            this.newModality = enumC19222y;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setName */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setName2(C18966e c18966e) {
            if (c18966e == null) {
                $$$reportNull$$$0(16);
            }
            this.name = c18966e;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setOriginal */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setOriginal2(AbstractC19039b abstractC19039b) {
            this.original = (AbstractC19219w) abstractC19039b;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setOwner */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setOwner2(AbstractC19193k abstractC19193k) {
            if (abstractC19193k == null) {
                $$$reportNull$$$0(7);
            }
            this.newOwner = abstractC19193k;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setPreserveSourceElement */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setPreserveSourceElement2() {
            this.preserveSourceElement = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setReturnType */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setReturnType2(KotlinType kotlinType) {
            if (kotlinType == null) {
                $$$reportNull$$$0(22);
            }
            this.newReturnType = kotlinType;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setSignatureChange */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setSignatureChange2() {
            this.signatureChange = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setSubstitution */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setSubstitution2(TypeSubstitution typeSubstitution) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(34);
            }
            this.substitution = typeSubstitution;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setTypeParameters(List<TypeParameterDescriptor> list) {
            if (list == null) {
                $$$reportNull$$$0(20);
            }
            this.newTypeParameters = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setValueParameters(List<AbstractC19050ba> list) {
            if (list == null) {
                $$$reportNull$$$0(18);
            }
            this.newValueParameterDescriptors = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w.AbstractC19220a
        /* renamed from: setVisibility */
        public AbstractC19219w.AbstractC19220a<AbstractC19219w> setVisibility2(AbstractC19213s abstractC19213s) {
            if (abstractC19213s == null) {
                $$$reportNull$$$0(11);
            }
            this.newVisibility = abstractC19213s;
            return this;
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                i2 = 2;
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = Payload.SOURCE;
                break;
            case 5:
                objArr[0] = "typeParameters";
                break;
            case 6:
            case 26:
            case 28:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 7:
            case 9:
                objArr[0] = "visibility";
                break;
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 10:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 11:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 15:
                objArr[0] = "overriddenDescriptors";
                break;
            case 20:
                objArr[0] = "originalSubstitutor";
                break;
            case 22:
            case 27:
            case 29:
                objArr[0] = "substitutor";
                break;
            case 23:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 8:
                objArr[1] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 12:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 13:
                objArr[1] = "getModality";
                break;
            case 14:
                objArr[1] = "getVisibility";
                break;
            case 16:
                objArr[1] = "getTypeParameters";
                break;
            case 17:
                objArr[1] = "getValueParameters";
                break;
            case 18:
                objArr[1] = "getOriginal";
                break;
            case 19:
                objArr[1] = "getKind";
                break;
            case 21:
                objArr[1] = "newCopyBuilder";
                break;
            case 24:
                objArr[1] = "copy";
                break;
            case 25:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
                objArr[2] = "initialize";
                break;
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 10:
                objArr[2] = "setReturnType";
                break;
            case 11:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 15:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 20:
                objArr[2] = "substitute";
                break;
            case 22:
                objArr[2] = "newCopyBuilder";
                break;
            case 23:
                objArr[2] = "doSubstitute";
                break;
            case 26:
            case 27:
            case 28:
            case 29:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionDescriptorImpl(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        super(abstractC19193k, abstractC18983g, c18966e, abstractC19026at);
        if (abstractC19193k == null) {
            $$$reportNull$$$0(0);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(1);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(2);
        }
        if (enumC19040a == null) {
            $$$reportNull$$$0(3);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(4);
        }
        this.visibility = C19200r.f65010i;
        this.isOperator = false;
        this.isInfix = false;
        this.isExternal = false;
        this.isInline = false;
        this.isTailrec = false;
        this.isExpect = false;
        this.isActual = false;
        this.isHiddenToOvercomeSignatureClash = false;
        this.isHiddenForResolutionEverywhereBesideSupercalls = false;
        this.isSuspend = false;
        this.hasStableParameterNames = true;
        this.hasSynthesizedParameterNames = false;
        this.overriddenFunctions = null;
        this.lazyOverriddenFunctionsTask = null;
        this.initialSignatureDescriptor = null;
        this.userDataMap = null;
        this.original = abstractC19219w == null ? this : abstractC19219w;
        this.kind = enumC19040a;
    }

    private AbstractC19026at getSourceToUseForCopy(boolean z, AbstractC19219w abstractC19219w) {
        AbstractC19026at abstractC19026at;
        if (z) {
            if (abstractC19219w == null) {
                abstractC19219w = getOriginal();
            }
            abstractC19026at = abstractC19219w.getSource();
        } else {
            abstractC19026at = AbstractC19026at.f64759a;
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(25);
        }
        return abstractC19026at;
    }

    public static List<AbstractC19050ba> getSubstitutedValueParameters(AbstractC19219w abstractC19219w, List<AbstractC19050ba> list, TypeSubstitutor typeSubstitutor) {
        if (list == null) {
            $$$reportNull$$$0(26);
        }
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(27);
        }
        return getSubstitutedValueParameters(abstractC19219w, list, typeSubstitutor, false, false, null);
    }

    public static List<AbstractC19050ba> getSubstitutedValueParameters(AbstractC19219w abstractC19219w, List<AbstractC19050ba> list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        Function0<List<AbstractC19052bc>> function0;
        if (list == null) {
            $$$reportNull$$$0(28);
        }
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(29);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (AbstractC19050ba abstractC19050ba : list) {
            KotlinType substitute = typeSubstitutor.substitute(abstractC19050ba.mo2593g(), Variance.IN_VARIANCE);
            KotlinType mo2608d = abstractC19050ba.mo2608d();
            KotlinType substitute2 = mo2608d == null ? null : typeSubstitutor.substitute(mo2608d, Variance.IN_VARIANCE);
            if (substitute == null) {
                return null;
            }
            if ((substitute != abstractC19050ba.mo2593g() || mo2608d != substitute2) && zArr != null) {
                zArr[0] = true;
            }
            if (abstractC19050ba instanceof C19148ae.C19150b) {
                final List<AbstractC19052bc> m2602m = ((C19148ae.C19150b) abstractC19050ba).m2602m();
                function0 = new Function0<List<AbstractC19052bc>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.2
                    @Override // kotlin.jvm.functions.Function0
                    public final /* bridge */ /* synthetic */ List<AbstractC19052bc> invoke() {
                        return m2602m;
                    }
                };
            } else {
                function0 = null;
            }
            arrayList.add(C19148ae.m2611a(abstractC19219w, z ? null : abstractC19050ba, abstractC19050ba.mo2610b(), abstractC19050ba.getAnnotations(), abstractC19050ba.getName(), substitute, abstractC19050ba.mo2609c(), abstractC19050ba.mo2606f(), abstractC19050ba.mo2605h(), substitute2, z2 ? abstractC19050ba.getSource() : AbstractC19026at.f64759a, function0));
        }
        return arrayList;
    }

    private void performOverriddenLazyCalculationIfNeeded() {
        Function0<Collection<AbstractC19219w>> function0 = this.lazyOverriddenFunctionsTask;
        if (function0 != null) {
            this.overriddenFunctions = function0.invoke();
            this.lazyOverriddenFunctionsTask = null;
        }
    }

    private void setHiddenForResolutionEverywhereBesideSupercalls(boolean z) {
        this.isHiddenForResolutionEverywhereBesideSupercalls = z;
    }

    private void setHiddenToOvercomeSignatureClash(boolean z) {
        this.isHiddenToOvercomeSignatureClash = z;
    }

    private void setInitialSignatureDescriptor(AbstractC19219w abstractC19219w) {
        this.initialSignatureDescriptor = abstractC19219w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo2377a((AbstractC19219w) this, (FunctionDescriptorImpl) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public AbstractC19219w copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        AbstractC19219w build = newCopyBuilder().setOwner(abstractC19193k).setModality(enumC19222y).setVisibility(abstractC19213s).setKind(enumC19040a).setCopyOverrides(z).build();
        if (build == null) {
            $$$reportNull$$$0(24);
        }
        return build;
    }

    protected abstract FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at);

    public AbstractC19219w doSubstitute(CopyConfiguration copyConfiguration) {
        C19191z c19191z;
        AbstractC19020aq abstractC19020aq;
        KotlinType substitute;
        if (copyConfiguration == null) {
            $$$reportNull$$$0(23);
        }
        boolean[] zArr = new boolean[1];
        FunctionDescriptorImpl createSubstitutedCopy = createSubstitutedCopy(copyConfiguration.newOwner, copyConfiguration.original, copyConfiguration.kind, copyConfiguration.name, copyConfiguration.additionalAnnotations != null ? C18988i.m2701a(getAnnotations(), copyConfiguration.additionalAnnotations) : getAnnotations(), getSourceToUseForCopy(copyConfiguration.preserveSourceElement, copyConfiguration.original));
        List<TypeParameterDescriptor> typeParameters = copyConfiguration.newTypeParameters == null ? getTypeParameters() : copyConfiguration.newTypeParameters;
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        final TypeSubstitutor substituteTypeParameters = DescriptorSubstitutor.substituteTypeParameters(typeParameters, copyConfiguration.substitution, createSubstitutedCopy, arrayList, zArr);
        if (substituteTypeParameters == null) {
            return null;
        }
        if (copyConfiguration.newExtensionReceiverParameter != null) {
            KotlinType substitute2 = substituteTypeParameters.substitute(copyConfiguration.newExtensionReceiverParameter.mo2593g(), Variance.IN_VARIANCE);
            if (substitute2 == null) {
                return null;
            }
            c19191z = new C19191z(createSubstitutedCopy, new C19813b(createSubstitutedCopy, substitute2, copyConfiguration.newExtensionReceiverParameter.mo2529a()), copyConfiguration.newExtensionReceiverParameter.getAnnotations());
            zArr[0] = (substitute2 != copyConfiguration.newExtensionReceiverParameter.mo2593g()) | zArr[0];
        } else {
            c19191z = null;
        }
        if (copyConfiguration.dispatchReceiverParameter != null) {
            abstractC19020aq = copyConfiguration.dispatchReceiverParameter.mo2594a(substituteTypeParameters);
            if (abstractC19020aq == null) {
                return null;
            }
            zArr[0] = zArr[0] | (abstractC19020aq != copyConfiguration.dispatchReceiverParameter);
        } else {
            abstractC19020aq = null;
        }
        List<AbstractC19050ba> substitutedValueParameters = getSubstitutedValueParameters(createSubstitutedCopy, copyConfiguration.newValueParameterDescriptors, substituteTypeParameters, copyConfiguration.dropOriginalInContainingParts, copyConfiguration.preserveSourceElement, zArr);
        if (substitutedValueParameters == null || (substitute = substituteTypeParameters.substitute(copyConfiguration.newReturnType, Variance.OUT_VARIANCE)) == null) {
            return null;
        }
        zArr[0] = zArr[0] | (substitute != copyConfiguration.newReturnType);
        if (!zArr[0] && copyConfiguration.justForTypeSubstitution) {
            return this;
        }
        createSubstitutedCopy.initialize(c19191z, abstractC19020aq, arrayList, substitutedValueParameters, substitute, copyConfiguration.newModality, copyConfiguration.newVisibility);
        createSubstitutedCopy.setOperator(this.isOperator);
        createSubstitutedCopy.setInfix(this.isInfix);
        createSubstitutedCopy.setExternal(this.isExternal);
        createSubstitutedCopy.setInline(this.isInline);
        createSubstitutedCopy.setTailrec(this.isTailrec);
        createSubstitutedCopy.setSuspend(this.isSuspend);
        createSubstitutedCopy.setExpect(this.isExpect);
        createSubstitutedCopy.setActual(this.isActual);
        createSubstitutedCopy.setHasStableParameterNames(this.hasStableParameterNames);
        createSubstitutedCopy.setHiddenToOvercomeSignatureClash(copyConfiguration.isHiddenToOvercomeSignatureClash);
        createSubstitutedCopy.setHiddenForResolutionEverywhereBesideSupercalls(copyConfiguration.isHiddenForResolutionEverywhereBesideSupercalls);
        createSubstitutedCopy.setHasSynthesizedParameterNames(copyConfiguration.newHasSynthesizedParameterNames != null ? copyConfiguration.newHasSynthesizedParameterNames.booleanValue() : this.hasSynthesizedParameterNames);
        if (!copyConfiguration.userDataMap.isEmpty() || this.userDataMap != null) {
            Map<AbstractC18973a.AbstractC18974a<?>, Object> map = copyConfiguration.userDataMap;
            Map<AbstractC18973a.AbstractC18974a<?>, Object> map2 = this.userDataMap;
            if (map2 != null) {
                for (Map.Entry<AbstractC18973a.AbstractC18974a<?>, Object> entry : map2.entrySet()) {
                    if (!map.containsKey(entry.getKey())) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (map.size() == 1) {
                createSubstitutedCopy.userDataMap = Collections.singletonMap(map.keySet().iterator().next(), map.values().iterator().next());
            } else {
                createSubstitutedCopy.userDataMap = map;
            }
        }
        if (copyConfiguration.signatureChange || getInitialSignatureDescriptor() != null) {
            createSubstitutedCopy.setInitialSignatureDescriptor((getInitialSignatureDescriptor() != null ? getInitialSignatureDescriptor() : this).substitute(substituteTypeParameters));
        }
        if (copyConfiguration.copyOverrides && !getOriginal().getOverriddenDescriptors().isEmpty()) {
            if (copyConfiguration.substitution.isEmpty()) {
                Function0<Collection<AbstractC19219w>> function0 = this.lazyOverriddenFunctionsTask;
                if (function0 != null) {
                    createSubstitutedCopy.lazyOverriddenFunctionsTask = function0;
                } else {
                    createSubstitutedCopy.setOverriddenDescriptors(getOverriddenDescriptors());
                }
            } else {
                createSubstitutedCopy.lazyOverriddenFunctionsTask = new Function0<Collection<AbstractC19219w>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.1
                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ Collection<AbstractC19219w> invoke() {
                        C20023h c20023h = new C20023h();
                        for (AbstractC19219w abstractC19219w : FunctionDescriptorImpl.this.getOverriddenDescriptors()) {
                            c20023h.add(abstractC19219w.substitute(substituteTypeParameters));
                        }
                        return c20023h;
                    }
                };
            }
        }
        return createSubstitutedCopy;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getDispatchReceiverParameter() {
        return this.dispatchReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public AbstractC19020aq getExtensionReceiverParameter() {
        return this.extensionReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public AbstractC19219w getInitialSignatureDescriptor() {
        return this.initialSignatureDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public AbstractC19039b.EnumC19040a getKind() {
        AbstractC19039b.EnumC19040a enumC19040a = this.kind;
        if (enumC19040a == null) {
            $$$reportNull$$$0(19);
        }
        return enumC19040a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y enumC19222y = this.modality;
        if (enumC19222y == null) {
            $$$reportNull$$$0(13);
        }
        return enumC19222y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19219w getOriginal() {
        AbstractC19219w abstractC19219w = this.original;
        FunctionDescriptorImpl original = abstractC19219w == this ? this : abstractC19219w.getOriginal();
        if (original == null) {
            $$$reportNull$$$0(18);
        }
        return original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public Collection<? extends AbstractC19219w> getOverriddenDescriptors() {
        performOverriddenLazyCalculationIfNeeded();
        List list = this.overriddenFunctions;
        if (list == null) {
            list = Collections.emptyList();
        }
        if (list == null) {
            $$$reportNull$$$0(12);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public KotlinType getReturnType() {
        return this.unsubstitutedReturnType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> list = this.typeParameters;
        if (list != null) {
            if (list == null) {
                $$$reportNull$$$0(16);
            }
            return list;
        }
        throw new IllegalStateException("typeParameters == null for ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        Map<AbstractC18973a.AbstractC18974a<?>, Object> map = this.userDataMap;
        if (map == null) {
            return null;
        }
        return (V) map.get(abstractC18974a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public List<AbstractC19050ba> getValueParameters() {
        List<AbstractC19050ba> list = this.unsubstitutedValueParameters;
        if (list == null) {
            $$$reportNull$$$0(17);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = this.visibility;
        if (abstractC19213s == null) {
            $$$reportNull$$$0(14);
        }
        return abstractC19213s;
    }

    public boolean hasStableParameterNames() {
        return this.hasStableParameterNames;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        return this.hasSynthesizedParameterNames;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c0, code lost:
        if (r14 >= r8.size()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c3, code lost:
        r0 = r8.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00da, code lost:
        if (r0.mo2610b() != (r14 + 0)) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00dd, code lost:
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x011e, code lost:
        throw new java.lang.IllegalStateException(r0 + "index is " + r0.mo2610b() + " but position is " + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0120, code lost:
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl initialize(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq r5, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq r6, java.util.List<? extends kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor> r7, java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba> r8, kotlin.reflect.jvm.internal.impl.types.KotlinType r9, kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y r10, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s r11) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.initialize(kotlin.reflect.jvm.internal.impl.descriptors.aq, kotlin.reflect.jvm.internal.impl.descriptors.aq, java.util.List, java.util.List, kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.descriptors.y, kotlin.reflect.jvm.internal.impl.descriptors.s):kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isActual() {
        return this.isActual;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExpect() {
        return this.isExpect;
    }

    public boolean isExternal() {
        return this.isExternal;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isHiddenForResolutionEverywhereBesideSupercalls() {
        return this.isHiddenForResolutionEverywhereBesideSupercalls;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isHiddenToOvercomeSignatureClash() {
        return this.isHiddenToOvercomeSignatureClash;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isInfix() {
        if (this.isInfix) {
            return true;
        }
        for (AbstractC19219w abstractC19219w : getOriginal().getOverriddenDescriptors()) {
            if (abstractC19219w.isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.isInline;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isOperator() {
        if (this.isOperator) {
            return true;
        }
        for (AbstractC19219w abstractC19219w : getOriginal().getOverriddenDescriptors()) {
            if (abstractC19219w.isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public boolean isSuspend() {
        return this.isSuspend;
    }

    public boolean isTailrec() {
        return this.isTailrec;
    }

    public CopyConfiguration newCopyBuilder(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(22);
        }
        return new CopyConfiguration(this, typeSubstitutor.getSubstitution(), getContainingDeclaration(), getModality(), getVisibility(), getKind(), getValueParameters(), getExtensionReceiverParameter(), getReturnType(), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public AbstractC19219w.AbstractC19220a<? extends AbstractC19219w> newCopyBuilder() {
        CopyConfiguration newCopyBuilder = newCopyBuilder(TypeSubstitutor.EMPTY);
        if (newCopyBuilder == null) {
            $$$reportNull$$$0(21);
        }
        return newCopyBuilder;
    }

    public <V> void putInUserDataMap(AbstractC18973a.AbstractC18974a<V> abstractC18974a, Object obj) {
        if (this.userDataMap == null) {
            this.userDataMap = new LinkedHashMap();
        }
        this.userDataMap.put(abstractC18974a, obj);
    }

    public void setActual(boolean z) {
        this.isActual = z;
    }

    public void setExpect(boolean z) {
        this.isExpect = z;
    }

    public void setExternal(boolean z) {
        this.isExternal = z;
    }

    public void setHasStableParameterNames(boolean z) {
        this.hasStableParameterNames = z;
    }

    public void setHasSynthesizedParameterNames(boolean z) {
        this.hasSynthesizedParameterNames = z;
    }

    public void setInfix(boolean z) {
        this.isInfix = z;
    }

    public void setInline(boolean z) {
        this.isInline = z;
    }

    public void setOperator(boolean z) {
        this.isOperator = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public void setOverriddenDescriptors(Collection<? extends AbstractC19039b> collection) {
        if (collection == 0) {
            $$$reportNull$$$0(15);
        }
        this.overriddenFunctions = collection;
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            if (((AbstractC19219w) it2.next()).isHiddenForResolutionEverywhereBesideSupercalls()) {
                this.isHiddenForResolutionEverywhereBesideSupercalls = true;
                return;
            }
        }
    }

    public void setReturnType(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(10);
        }
        this.unsubstitutedReturnType = kotlinType;
    }

    public void setSuspend(boolean z) {
        this.isSuspend = z;
    }

    public void setTailrec(boolean z) {
        this.isTailrec = z;
    }

    public void setVisibility(AbstractC19213s abstractC19213s) {
        if (abstractC19213s == null) {
            $$$reportNull$$$0(9);
        }
        this.visibility = abstractC19213s;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl$CopyConfiguration] */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    public AbstractC18973a substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(20);
        }
        return typeSubstitutor.isEmpty() ? this : newCopyBuilder(typeSubstitutor).setOriginal2((AbstractC19039b) getOriginal()).setPreserveSourceElement2().setJustForTypeSubstitution(true).build();
    }
}
