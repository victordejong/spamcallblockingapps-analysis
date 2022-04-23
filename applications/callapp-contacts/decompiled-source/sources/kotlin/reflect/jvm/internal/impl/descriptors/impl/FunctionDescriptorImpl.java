package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.a.i;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl.class */
public abstract class FunctionDescriptorImpl extends i implements w {
    private aq dispatchReceiverParameter;
    private aq extensionReceiverParameter;
    private boolean hasStableParameterNames;
    private boolean hasSynthesizedParameterNames;
    private w initialSignatureDescriptor;
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
    private final b.a kind;
    private volatile Function0<Collection<w>> lazyOverriddenFunctionsTask;
    private y modality;
    private final w original;
    private Collection<? extends w> overriddenFunctions;
    private List<TypeParameterDescriptor> typeParameters;
    private KotlinType unsubstitutedReturnType;
    private List<ba> unsubstitutedValueParameters;
    protected Map<a.AbstractC0668a<?>, Object> userDataMap;
    private s visibility;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration.class */
    public class CopyConfiguration implements w.a<w> {
        private g additionalAnnotations;
        protected boolean copyOverrides;
        protected aq dispatchReceiverParameter;
        protected boolean dropOriginalInContainingParts;
        private boolean isHiddenForResolutionEverywhereBesideSupercalls;
        private boolean isHiddenToOvercomeSignatureClash;
        protected boolean justForTypeSubstitution;
        protected b.a kind;
        protected e name;
        protected aq newExtensionReceiverParameter;
        private Boolean newHasSynthesizedParameterNames;
        protected y newModality;
        protected k newOwner;
        protected KotlinType newReturnType;
        private List<TypeParameterDescriptor> newTypeParameters;
        protected List<ba> newValueParameterDescriptors;
        protected s newVisibility;
        protected w original;
        protected boolean preserveSourceElement;
        protected boolean signatureChange;
        protected TypeSubstitution substitution;
        final /* synthetic */ FunctionDescriptorImpl this$0;
        private Map<a.AbstractC0668a<?>, Object> userDataMap;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str;
            int i2;
            Throwable th;
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
                    th = new IllegalStateException(format);
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
                    th = new IllegalArgumentException(format);
                    break;
            }
            throw th;
        }

        public CopyConfiguration(FunctionDescriptorImpl functionDescriptorImpl, TypeSubstitution typeSubstitution, k kVar, y yVar, s sVar, b.a aVar, List<ba> list, aq aqVar, KotlinType kotlinType, e eVar) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(0);
            }
            if (kVar == null) {
                $$$reportNull$$$0(1);
            }
            if (yVar == null) {
                $$$reportNull$$$0(2);
            }
            if (sVar == null) {
                $$$reportNull$$$0(3);
            }
            if (aVar == null) {
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
            this.newOwner = kVar;
            this.newModality = yVar;
            this.newVisibility = sVar;
            this.kind = aVar;
            this.newValueParameterDescriptors = list;
            this.newExtensionReceiverParameter = aqVar;
            this.newReturnType = kotlinType;
            this.name = eVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        public w build() {
            return this.this$0.doSubstitute(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setAdditionalAnnotations */
        public w.a<w> setAdditionalAnnotations2(g gVar) {
            if (gVar == null) {
                $$$reportNull$$$0(32);
            }
            this.additionalAnnotations = gVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setCopyOverrides */
        public w.a<w> setCopyOverrides2(boolean z) {
            this.copyOverrides = z;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setDispatchReceiverParameter */
        public w.a<w> setDispatchReceiverParameter2(aq aqVar) {
            this.dispatchReceiverParameter = aqVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setDropOriginalInContainingParts */
        public w.a<w> setDropOriginalInContainingParts2() {
            this.dropOriginalInContainingParts = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setExtensionReceiverParameter */
        public w.a<w> setExtensionReceiverParameter2(aq aqVar) {
            this.newExtensionReceiverParameter = aqVar;
            return this;
        }

        public CopyConfiguration setHasSynthesizedParameterNames(boolean z) {
            this.newHasSynthesizedParameterNames = Boolean.valueOf(z);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setHiddenForResolutionEverywhereBesideSupercalls */
        public w.a<w> setHiddenForResolutionEverywhereBesideSupercalls2() {
            this.isHiddenForResolutionEverywhereBesideSupercalls = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setHiddenToOvercomeSignatureClash */
        public w.a<w> setHiddenToOvercomeSignatureClash2() {
            this.isHiddenToOvercomeSignatureClash = true;
            return this;
        }

        public CopyConfiguration setJustForTypeSubstitution(boolean z) {
            this.justForTypeSubstitution = z;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setKind */
        public w.a<w> setKind2(b.a aVar) {
            if (aVar == null) {
                $$$reportNull$$$0(13);
            }
            this.kind = aVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setModality */
        public w.a<w> setModality2(y yVar) {
            if (yVar == null) {
                $$$reportNull$$$0(9);
            }
            this.newModality = yVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setName */
        public w.a<w> setName2(e eVar) {
            if (eVar == null) {
                $$$reportNull$$$0(16);
            }
            this.name = eVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setOriginal */
        public w.a<w> setOriginal2(b bVar) {
            this.original = (w) bVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setOwner */
        public w.a<w> setOwner2(k kVar) {
            if (kVar == null) {
                $$$reportNull$$$0(7);
            }
            this.newOwner = kVar;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setPreserveSourceElement */
        public w.a<w> setPreserveSourceElement2() {
            this.preserveSourceElement = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setReturnType */
        public w.a<w> setReturnType2(KotlinType kotlinType) {
            if (kotlinType == null) {
                $$$reportNull$$$0(22);
            }
            this.newReturnType = kotlinType;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setSignatureChange */
        public w.a<w> setSignatureChange2() {
            this.signatureChange = true;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setSubstitution */
        public w.a<w> setSubstitution2(TypeSubstitution typeSubstitution) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(34);
            }
            this.substitution = typeSubstitution;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        public w.a<w> setTypeParameters(List<TypeParameterDescriptor> list) {
            if (list == null) {
                $$$reportNull$$$0(20);
            }
            this.newTypeParameters = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        public w.a<w> setValueParameters(List<ba> list) {
            if (list == null) {
                $$$reportNull$$$0(18);
            }
            this.newValueParameterDescriptors = list;
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.w.a
        /* renamed from: setVisibility */
        public w.a<w> setVisibility2(s sVar) {
            if (sVar == null) {
                $$$reportNull$$$0(11);
            }
            this.newVisibility = sVar;
            return this;
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        Throwable th;
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
                th = new IllegalStateException(format);
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionDescriptorImpl(k kVar, w wVar, g gVar, e eVar, b.a aVar, at atVar) {
        super(kVar, gVar, eVar, atVar);
        if (kVar == null) {
            $$$reportNull$$$0(0);
        }
        if (gVar == null) {
            $$$reportNull$$$0(1);
        }
        if (eVar == null) {
            $$$reportNull$$$0(2);
        }
        if (aVar == null) {
            $$$reportNull$$$0(3);
        }
        if (atVar == null) {
            $$$reportNull$$$0(4);
        }
        this.visibility = r.i;
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
        this.original = wVar == null ? this : wVar;
        this.kind = aVar;
    }

    private at getSourceToUseForCopy(boolean z, w wVar) {
        at atVar;
        if (z) {
            if (wVar == null) {
                wVar = getOriginal();
            }
            atVar = wVar.getSource();
        } else {
            atVar = at.f37401a;
        }
        if (atVar == null) {
            $$$reportNull$$$0(25);
        }
        return atVar;
    }

    public static List<ba> getSubstitutedValueParameters(w wVar, List<ba> list, TypeSubstitutor typeSubstitutor) {
        if (list == null) {
            $$$reportNull$$$0(26);
        }
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(27);
        }
        return getSubstitutedValueParameters(wVar, list, typeSubstitutor, false, false, null);
    }

    public static List<ba> getSubstitutedValueParameters(w wVar, List<ba> list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        Function0<List<bc>> function0;
        if (list == null) {
            $$$reportNull$$$0(28);
        }
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(29);
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (ba baVar : list) {
            KotlinType substitute = typeSubstitutor.substitute(baVar.g(), Variance.IN_VARIANCE);
            KotlinType d2 = baVar.d();
            KotlinType substitute2 = d2 == null ? null : typeSubstitutor.substitute(d2, Variance.IN_VARIANCE);
            if (substitute == null) {
                return null;
            }
            if (!((substitute == baVar.g() && d2 == substitute2) || zArr == null)) {
                zArr[0] = true;
            }
            if (baVar instanceof ae.b) {
                final List<bc> m = ((ae.b) baVar).m();
                function0 = new Function0<List<bc>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.2
                    @Override // kotlin.jvm.functions.Function0
                    public final /* bridge */ /* synthetic */ List<bc> invoke() {
                        return m;
                    }
                };
            } else {
                function0 = null;
            }
            arrayList.add(ae.a(wVar, z ? null : baVar, baVar.b(), baVar.getAnnotations(), baVar.getName(), substitute, baVar.c(), baVar.f(), baVar.h(), substitute2, z2 ? baVar.getSource() : at.f37401a, function0));
        }
        return arrayList;
    }

    private void performOverriddenLazyCalculationIfNeeded() {
        Function0<Collection<w>> function0 = this.lazyOverriddenFunctionsTask;
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

    private void setInitialSignatureDescriptor(w wVar) {
        this.initialSignatureDescriptor = wVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((w) this, (FunctionDescriptorImpl) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public w copy(k kVar, y yVar, s sVar, b.a aVar, boolean z) {
        w build = newCopyBuilder().setOwner(kVar).setModality(yVar).setVisibility(sVar).setKind(aVar).setCopyOverrides(z).build();
        if (build == null) {
            $$$reportNull$$$0(24);
        }
        return build;
    }

    protected abstract FunctionDescriptorImpl createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, g gVar, at atVar);

    public w doSubstitute(CopyConfiguration copyConfiguration) {
        z zVar;
        aq aqVar;
        KotlinType substitute;
        if (copyConfiguration == null) {
            $$$reportNull$$$0(23);
        }
        boolean[] zArr = new boolean[1];
        FunctionDescriptorImpl createSubstitutedCopy = createSubstitutedCopy(copyConfiguration.newOwner, copyConfiguration.original, copyConfiguration.kind, copyConfiguration.name, copyConfiguration.additionalAnnotations != null ? i.a(getAnnotations(), copyConfiguration.additionalAnnotations) : getAnnotations(), getSourceToUseForCopy(copyConfiguration.preserveSourceElement, copyConfiguration.original));
        List<TypeParameterDescriptor> typeParameters = copyConfiguration.newTypeParameters == null ? getTypeParameters() : copyConfiguration.newTypeParameters;
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        final TypeSubstitutor substituteTypeParameters = DescriptorSubstitutor.substituteTypeParameters(typeParameters, copyConfiguration.substitution, createSubstitutedCopy, arrayList, zArr);
        if (substituteTypeParameters == null) {
            return null;
        }
        if (copyConfiguration.newExtensionReceiverParameter != null) {
            KotlinType substitute2 = substituteTypeParameters.substitute(copyConfiguration.newExtensionReceiverParameter.g(), Variance.IN_VARIANCE);
            if (substitute2 == null) {
                return null;
            }
            zVar = new z(createSubstitutedCopy, new kotlin.reflect.jvm.internal.impl.resolve.e.a.b(createSubstitutedCopy, substitute2, copyConfiguration.newExtensionReceiverParameter.a()), copyConfiguration.newExtensionReceiverParameter.getAnnotations());
            zArr[0] = (substitute2 != copyConfiguration.newExtensionReceiverParameter.g()) | zArr[0];
        } else {
            zVar = null;
        }
        if (copyConfiguration.dispatchReceiverParameter != null) {
            aqVar = copyConfiguration.dispatchReceiverParameter.a(substituteTypeParameters);
            if (aqVar == null) {
                return null;
            }
            zArr[0] = zArr[0] | (aqVar != copyConfiguration.dispatchReceiverParameter);
        } else {
            aqVar = null;
        }
        List<ba> substitutedValueParameters = getSubstitutedValueParameters(createSubstitutedCopy, copyConfiguration.newValueParameterDescriptors, substituteTypeParameters, copyConfiguration.dropOriginalInContainingParts, copyConfiguration.preserveSourceElement, zArr);
        if (substitutedValueParameters == null || (substitute = substituteTypeParameters.substitute(copyConfiguration.newReturnType, Variance.OUT_VARIANCE)) == null) {
            return null;
        }
        zArr[0] = zArr[0] | (substitute != copyConfiguration.newReturnType);
        if (!zArr[0] && copyConfiguration.justForTypeSubstitution) {
            return this;
        }
        createSubstitutedCopy.initialize(zVar, aqVar, arrayList, substitutedValueParameters, substitute, copyConfiguration.newModality, copyConfiguration.newVisibility);
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
            Map<a.AbstractC0668a<?>, Object> map = copyConfiguration.userDataMap;
            Map<a.AbstractC0668a<?>, Object> map2 = this.userDataMap;
            if (map2 != null) {
                for (Map.Entry<a.AbstractC0668a<?>, Object> entry : map2.entrySet()) {
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
                Function0<Collection<w>> function0 = this.lazyOverriddenFunctionsTask;
                if (function0 != null) {
                    createSubstitutedCopy.lazyOverriddenFunctionsTask = function0;
                } else {
                    createSubstitutedCopy.setOverriddenDescriptors(getOverriddenDescriptors());
                }
            } else {
                createSubstitutedCopy.lazyOverriddenFunctionsTask = new Function0<Collection<w>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.1
                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ Collection<w> invoke() {
                        h hVar = new h();
                        for (w wVar : FunctionDescriptorImpl.this.getOverriddenDescriptors()) {
                            hVar.add(wVar.substitute(substituteTypeParameters));
                        }
                        return hVar;
                    }
                };
            }
        }
        return createSubstitutedCopy;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getDispatchReceiverParameter() {
        return this.dispatchReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getExtensionReceiverParameter() {
        return this.extensionReceiverParameter;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public w getInitialSignatureDescriptor() {
        return this.initialSignatureDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public b.a getKind() {
        b.a aVar = this.kind;
        if (aVar == null) {
            $$$reportNull$$$0(19);
        }
        return aVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y yVar = this.modality;
        if (yVar == null) {
            $$$reportNull$$$0(13);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.h, kotlin.reflect.jvm.internal.impl.descriptors.k
    public w getOriginal() {
        w wVar = this.original;
        w original = wVar == this ? this : wVar.getOriginal();
        if (original == null) {
            $$$reportNull$$$0(18);
        }
        return original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w, kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends w> getOverriddenDescriptors() {
        performOverriddenLazyCalculationIfNeeded();
        Collection<? extends w> collection = this.overriddenFunctions;
        if (collection == null) {
            collection = Collections.emptyList();
        }
        if (collection == null) {
            $$$reportNull$$$0(12);
        }
        return collection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public KotlinType getReturnType() {
        return this.unsubstitutedReturnType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
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

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        Map<a.AbstractC0668a<?>, Object> map = this.userDataMap;
        if (map == null) {
            return null;
        }
        return (V) map.get(aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ba> getValueParameters() {
        List<ba> list = this.unsubstitutedValueParameters;
        if (list == null) {
            $$$reportNull$$$0(17);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = this.visibility;
        if (sVar == null) {
            $$$reportNull$$$0(14);
        }
        return sVar;
    }

    public boolean hasStableParameterNames() {
        return this.hasStableParameterNames;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        return this.hasSynthesizedParameterNames;
    }

    public FunctionDescriptorImpl initialize(aq aqVar, aq aqVar2, List<? extends TypeParameterDescriptor> list, List<ba> list2, KotlinType kotlinType, y yVar, s sVar) {
        if (list == null) {
            $$$reportNull$$$0(5);
        }
        if (list2 == null) {
            $$$reportNull$$$0(6);
        }
        if (sVar == null) {
            $$$reportNull$$$0(7);
        }
        this.typeParameters = n.h((Iterable) list);
        this.unsubstitutedValueParameters = n.h((Iterable) list2);
        this.unsubstitutedReturnType = kotlinType;
        this.modality = yVar;
        this.visibility = sVar;
        this.extensionReceiverParameter = aqVar;
        this.dispatchReceiverParameter = aqVar2;
        for (int i = 0; i < list.size(); i++) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) list.get(i);
            if (typeParameterDescriptor.getIndex() != i) {
                throw new IllegalStateException(typeParameterDescriptor + " index is " + typeParameterDescriptor.getIndex() + " but position is " + i);
            }
        }
        for (int i2 = 0; i2 < list2.size(); i2++) {
            ba baVar = list2.get(i2);
            if (baVar.b() != i2 + 0) {
                throw new IllegalStateException(baVar + "index is " + baVar.b() + " but position is " + i2);
            }
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return this.isActual;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return this.isExpect;
    }

    public boolean isExternal() {
        return this.isExternal;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isHiddenForResolutionEverywhereBesideSupercalls() {
        return this.isHiddenForResolutionEverywhereBesideSupercalls;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isHiddenToOvercomeSignatureClash() {
        return this.isHiddenToOvercomeSignatureClash;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isInfix() {
        if (this.isInfix) {
            return true;
        }
        for (w wVar : getOriginal().getOverriddenDescriptors()) {
            if (wVar.isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.isInline;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isOperator() {
        if (this.isOperator) {
            return true;
        }
        for (w wVar : getOriginal().getOverriddenDescriptors()) {
            if (wVar.isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isSuspend() {
        return this.isSuspend;
    }

    public boolean isTailrec() {
        return this.isTailrec;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CopyConfiguration newCopyBuilder(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(22);
        }
        return new CopyConfiguration(this, typeSubstitutor.getSubstitution(), getContainingDeclaration(), getModality(), getVisibility(), getKind(), getValueParameters(), getExtensionReceiverParameter(), getReturnType(), null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public w.a<? extends w> newCopyBuilder() {
        CopyConfiguration newCopyBuilder = newCopyBuilder(TypeSubstitutor.EMPTY);
        if (newCopyBuilder == null) {
            $$$reportNull$$$0(21);
        }
        return newCopyBuilder;
    }

    public <V> void putInUserDataMap(a.AbstractC0668a<V> aVar, Object obj) {
        if (this.userDataMap == null) {
            this.userDataMap = new LinkedHashMap();
        }
        this.userDataMap.put(aVar, obj);
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
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public void setOverriddenDescriptors(Collection<? extends b> collection) {
        if (collection == 0) {
            $$$reportNull$$$0(15);
        }
        this.overriddenFunctions = collection;
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            if (((w) it2.next()).isHiddenForResolutionEverywhereBesideSupercalls()) {
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

    public void setVisibility(s sVar) {
        if (sVar == null) {
            $$$reportNull$$$0(9);
        }
        this.visibility = sVar;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl$CopyConfiguration] */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w, kotlin.reflect.jvm.internal.impl.descriptors.av
    public a substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            $$$reportNull$$$0(20);
        }
        return typeSubstitutor.isEmpty() ? this : newCopyBuilder(typeSubstitutor).setOriginal2((b) getOriginal()).setPreserveSourceElement2().setJustForTypeSubstitution(true).build();
    }
}
