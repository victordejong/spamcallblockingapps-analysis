package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.aa */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/aa.class */
public class C19142aa extends FunctionDescriptorImpl implements AbstractC19025as {
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
    public C19142aa(AbstractC19193k abstractC19193k, AbstractC19025as abstractC19025as, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        super(abstractC19193k, abstractC19025as, abstractC18983g, c18966e, enumC19040a, abstractC19026at);
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
    }

    public static C19142aa create(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(5);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(6);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(7);
        }
        if (enumC19040a == null) {
            $$$reportNull$$$0(8);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(9);
        }
        return new C19142aa(abstractC19193k, null, abstractC18983g, c18966e, enumC19040a, abstractC19026at);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public AbstractC19025as copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        AbstractC19025as abstractC19025as = (AbstractC19025as) super.copy(abstractC19193k, enumC19222y, abstractC19213s, enumC19040a, z);
        if (abstractC19025as == null) {
            $$$reportNull$$$0(23);
        }
        return abstractC19025as;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    protected FunctionDescriptorImpl createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(19);
        }
        if (enumC19040a == null) {
            $$$reportNull$$$0(20);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(21);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(22);
        }
        AbstractC19025as abstractC19025as = (AbstractC19025as) abstractC19219w;
        if (c18966e == null) {
            c18966e = getName();
        }
        return new C19142aa(abstractC19193k, abstractC19025as, abstractC18983g, c18966e, enumC19040a, abstractC19026at);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19025as getOriginal() {
        AbstractC19025as abstractC19025as = (AbstractC19025as) super.getOriginal();
        if (abstractC19025as == null) {
            $$$reportNull$$$0(18);
        }
        return abstractC19025as;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public C19142aa initialize(AbstractC19020aq abstractC19020aq, AbstractC19020aq abstractC19020aq2, List<? extends TypeParameterDescriptor> list, List<AbstractC19050ba> list2, KotlinType kotlinType, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s) {
        if (list == null) {
            $$$reportNull$$$0(10);
        }
        if (list2 == null) {
            $$$reportNull$$$0(11);
        }
        if (abstractC19213s == null) {
            $$$reportNull$$$0(12);
        }
        C19142aa initialize = initialize(abstractC19020aq, abstractC19020aq2, list, list2, kotlinType, enumC19222y, abstractC19213s, null);
        if (initialize == null) {
            $$$reportNull$$$0(13);
        }
        return initialize;
    }

    public C19142aa initialize(AbstractC19020aq abstractC19020aq, AbstractC19020aq abstractC19020aq2, List<? extends TypeParameterDescriptor> list, List<AbstractC19050ba> list2, KotlinType kotlinType, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, Map<? extends AbstractC18973a.AbstractC18974a<?>, ?> map) {
        if (list == null) {
            $$$reportNull$$$0(14);
        }
        if (list2 == null) {
            $$$reportNull$$$0(15);
        }
        if (abstractC19213s == null) {
            $$$reportNull$$$0(16);
        }
        super.initialize(abstractC19020aq, abstractC19020aq2, list, list2, kotlinType, enumC19222y, abstractC19213s);
        if (map != null && !map.isEmpty()) {
            this.userDataMap = new LinkedHashMap(map);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w
    public AbstractC19219w.AbstractC19220a<? extends AbstractC19025as> newCopyBuilder() {
        AbstractC19219w.AbstractC19220a newCopyBuilder = super.newCopyBuilder();
        if (newCopyBuilder == null) {
            $$$reportNull$$$0(24);
        }
        return newCopyBuilder;
    }
}
