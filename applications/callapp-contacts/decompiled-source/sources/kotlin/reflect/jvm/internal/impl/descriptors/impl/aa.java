package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/aa.class */
public class aa extends FunctionDescriptorImpl implements as {
    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 21:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 8:
            case 20:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 22:
                objArr[0] = Payload.SOURCE;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 15:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 16:
                objArr[0] = "visibility";
                break;
            case 13:
            case 17:
            case 18:
            case 23:
            case 24:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 19:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 13 || i == 17) {
            objArr[1] = "initialize";
        } else if (i == 18) {
            objArr[1] = "getOriginal";
        } else if (i == 23) {
            objArr[1] = "copy";
        } else if (i != 24) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
                objArr[2] = "initialize";
                break;
            case 13:
            case 17:
            case 18:
            case 23:
            case 24:
                break;
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa(k kVar, as asVar, g gVar, e eVar, b.a aVar, at atVar) {
        super(kVar, asVar, gVar, eVar, aVar, atVar);
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
    }

    public static aa create(k kVar, g gVar, e eVar, b.a aVar, at atVar) {
        if (kVar == null) {
            $$$reportNull$$$0(5);
        }
        if (gVar == null) {
            $$$reportNull$$$0(6);
        }
        if (eVar == null) {
            $$$reportNull$$$0(7);
        }
        if (aVar == null) {
            $$$reportNull$$$0(8);
        }
        if (atVar == null) {
            $$$reportNull$$$0(9);
        }
        return new aa(kVar, null, gVar, eVar, aVar, atVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.b
    public as copy(k kVar, y yVar, s sVar, b.a aVar, boolean z) {
        as asVar = (as) super.copy(kVar, yVar, sVar, aVar, z);
        if (asVar == null) {
            $$$reportNull$$$0(23);
        }
        return asVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected FunctionDescriptorImpl createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, g gVar, at atVar) {
        if (kVar == null) {
            $$$reportNull$$$0(19);
        }
        if (aVar == null) {
            $$$reportNull$$$0(20);
        }
        if (gVar == null) {
            $$$reportNull$$$0(21);
        }
        if (atVar == null) {
            $$$reportNull$$$0(22);
        }
        as asVar = (as) wVar;
        if (eVar == null) {
            eVar = getName();
        }
        return new aa(kVar, asVar, gVar, eVar, aVar, atVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.h, kotlin.reflect.jvm.internal.impl.descriptors.k
    public as getOriginal() {
        as asVar = (as) super.getOriginal();
        if (asVar == null) {
            $$$reportNull$$$0(18);
        }
        return asVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public aa initialize(aq aqVar, aq aqVar2, List<? extends TypeParameterDescriptor> list, List<ba> list2, KotlinType kotlinType, y yVar, s sVar) {
        if (list == null) {
            $$$reportNull$$$0(10);
        }
        if (list2 == null) {
            $$$reportNull$$$0(11);
        }
        if (sVar == null) {
            $$$reportNull$$$0(12);
        }
        aa initialize = initialize(aqVar, aqVar2, list, list2, kotlinType, yVar, sVar, null);
        if (initialize == null) {
            $$$reportNull$$$0(13);
        }
        return initialize;
    }

    public aa initialize(aq aqVar, aq aqVar2, List<? extends TypeParameterDescriptor> list, List<ba> list2, KotlinType kotlinType, y yVar, s sVar, Map<? extends a.AbstractC0668a<?>, ?> map) {
        if (list == null) {
            $$$reportNull$$$0(14);
        }
        if (list2 == null) {
            $$$reportNull$$$0(15);
        }
        if (sVar == null) {
            $$$reportNull$$$0(16);
        }
        super.initialize(aqVar, aqVar2, list, list2, kotlinType, yVar, sVar);
        if (map != null && !map.isEmpty()) {
            this.userDataMap = new LinkedHashMap(map);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.w
    public w.a<? extends as> newCopyBuilder() {
        w.a newCopyBuilder = super.newCopyBuilder();
        if (newCopyBuilder == null) {
            $$$reportNull$$$0(24);
        }
        return newCopyBuilder;
    }
}
