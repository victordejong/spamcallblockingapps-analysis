package kotlin.reflect.jvm.internal.impl.load.java.p559b;

import com.appsflyer.internal.referrer.Payload;
import java.util.List;
import kotlin.C18538n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.b.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/c.class */
public class C19369c extends C19158d implements AbstractC19368b {

    /* renamed from: c */
    static final /* synthetic */ boolean f65281c = true;

    /* renamed from: d */
    private Boolean f65282d;

    /* renamed from: e */
    private Boolean f65283e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected C19369c(AbstractC19070d abstractC19070d, C19369c c19369c, AbstractC18983g abstractC18983g, boolean z, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        super(abstractC19070d, c19369c, abstractC18983g, z, enumC19040a, abstractC19026at);
        if (abstractC19070d == null) {
            m2257a(0);
        }
        if (abstractC18983g == null) {
            m2257a(1);
        }
        if (enumC19040a == null) {
            m2257a(2);
        }
        if (abstractC19026at == null) {
            m2257a(3);
        }
        this.f65282d = null;
        this.f65283e = null;
    }

    /* renamed from: a */
    public static C19369c m2256a(AbstractC19070d abstractC19070d, AbstractC18983g abstractC18983g, boolean z, AbstractC19026at abstractC19026at) {
        if (abstractC19070d == null) {
            m2257a(4);
        }
        if (abstractC18983g == null) {
            m2257a(5);
        }
        if (abstractC19026at == null) {
            m2257a(6);
        }
        return new C19369c(abstractC19070d, null, abstractC18983g, z, AbstractC19039b.EnumC19040a.DECLARATION, abstractC19026at);
    }

    /* renamed from: a */
    private static /* synthetic */ void m2257a(int i) {
        String str = (i == 11 || i == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 11 || i == 18) ? 2 : 3];
        switch (i) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 11 || i == 18) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* renamed from: b */
    public C19369c createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            m2257a(7);
        }
        if (enumC19040a == null) {
            m2257a(8);
        }
        if (abstractC18983g == null) {
            m2257a(9);
        }
        if (abstractC19026at == null) {
            m2257a(10);
        }
        if (enumC19040a != AbstractC19039b.EnumC19040a.DECLARATION && enumC19040a != AbstractC19039b.EnumC19040a.SYNTHESIZED) {
            throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + abstractC19193k + "\nkind: " + enumC19040a);
        } else if (!f65281c && c18966e != null) {
            throw new AssertionError("Attempt to rename constructor: ".concat(String.valueOf(this)));
        } else {
            AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19193k;
            C19369c c19369c = (C19369c) abstractC19219w;
            if (abstractC19070d == null) {
                m2257a(12);
            }
            if (enumC19040a == null) {
                m2257a(13);
            }
            if (abstractC19026at == null) {
                m2257a(14);
            }
            if (abstractC18983g == null) {
                m2257a(15);
            }
            C19369c c19369c2 = new C19369c(abstractC19070d, c19369c, abstractC18983g, this.f64921a, enumC19040a, abstractC19026at);
            c19369c2.setHasStableParameterNames(hasStableParameterNames());
            c19369c2.setHasSynthesizedParameterNames(hasSynthesizedParameterNames());
            return c19369c2;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19368b
    /* renamed from: a */
    public final /* synthetic */ AbstractC19368b mo2250a(KotlinType kotlinType, List list, KotlinType kotlinType2, C18538n c18538n) {
        AbstractC19020aq abstractC19020aq;
        if (kotlinType2 == null) {
            m2257a(17);
        }
        C19369c createSubstitutedCopy = createSubstitutedCopy(getContainingDeclaration(), null, getKind(), null, getAnnotations(), getSource());
        if (kotlinType == null) {
            abstractC19020aq = null;
        } else {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC19020aq = C19762c.m1522a(createSubstitutedCopy, kotlinType, AbstractC18983g.C18984a.m2705a());
        }
        createSubstitutedCopy.initialize(abstractC19020aq, getDispatchReceiverParameter(), getTypeParameters(), C19379k.m2248a(list, getValueParameters(), createSubstitutedCopy), kotlinType2, getModality(), getVisibility());
        if (c18538n != null) {
            createSubstitutedCopy.putInUserDataMap((AbstractC18973a.AbstractC18974a) c18538n.f63624a, c18538n.f63625b);
        }
        return createSubstitutedCopy;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public boolean hasStableParameterNames() {
        if (f65281c || this.f65282d != null) {
            return this.f65282d.booleanValue();
        }
        throw new AssertionError("hasStableParameterNames was not set: ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        if (f65281c || this.f65283e != null) {
            return this.f65283e.booleanValue();
        }
        throw new AssertionError("hasSynthesizedParameterNames was not set: ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void setHasStableParameterNames(boolean z) {
        this.f65282d = Boolean.valueOf(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void setHasSynthesizedParameterNames(boolean z) {
        this.f65283e = Boolean.valueOf(z);
    }
}
