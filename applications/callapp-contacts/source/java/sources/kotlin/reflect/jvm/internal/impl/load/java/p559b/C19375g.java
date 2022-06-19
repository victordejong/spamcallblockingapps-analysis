package kotlin.reflect.jvm.internal.impl.load.java.p559b;

import com.appsflyer.internal.referrer.Payload;
import java.util.List;
import kotlin.C18538n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19131i;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19190y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19583s;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.b.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/g.class */
public class C19375g extends PropertyDescriptorImpl implements AbstractC19368b {

    /* renamed from: g */
    private final boolean f65288g;

    /* renamed from: h */
    private final C18538n<AbstractC18973a.AbstractC18974a<?>, ?> f65289h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19375g(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, boolean z, C18966e c18966e, AbstractC19026at abstractC19026at, AbstractC19017an abstractC19017an, AbstractC19039b.EnumC19040a enumC19040a, boolean z2, C18538n<AbstractC18973a.AbstractC18974a<?>, ?> c18538n) {
        super(abstractC19193k, abstractC19017an, abstractC18983g, enumC19222y, abstractC19213s, z, c18966e, enumC19040a, abstractC19026at, false, false, false, false, false, false);
        if (abstractC19193k == null) {
            m2249b(0);
        }
        if (abstractC18983g == null) {
            m2249b(1);
        }
        if (enumC19222y == null) {
            m2249b(2);
        }
        if (abstractC19213s == null) {
            m2249b(3);
        }
        if (c18966e == null) {
            m2249b(4);
        }
        if (abstractC19026at == null) {
            m2249b(5);
        }
        if (enumC19040a == null) {
            m2249b(6);
        }
        this.f65288g = z2;
        this.f65289h = c18538n;
    }

    /* renamed from: a */
    public static C19375g m2251a(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, boolean z, C18966e c18966e, AbstractC19026at abstractC19026at, boolean z2) {
        if (abstractC19193k == null) {
            m2249b(7);
        }
        if (abstractC18983g == null) {
            m2249b(8);
        }
        if (enumC19222y == null) {
            m2249b(9);
        }
        if (abstractC19213s == null) {
            m2249b(10);
        }
        if (c18966e == null) {
            m2249b(11);
        }
        if (abstractC19026at == null) {
            m2249b(12);
        }
        return new C19375g(abstractC19193k, abstractC18983g, enumC19222y, abstractC19213s, z, c18966e, abstractC19026at, null, AbstractC19039b.EnumC19040a.DECLARATION, z2, null);
    }

    /* renamed from: b */
    private static /* synthetic */ void m2249b(int i) {
        String str = i != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 21 ? 3 : 2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
        }
        if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw (i != 21 ? new IllegalArgumentException(format) : new IllegalStateException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    /* renamed from: a */
    public final PropertyDescriptorImpl mo1286a(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19017an abstractC19017an, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            m2249b(13);
        }
        if (enumC19222y == null) {
            m2249b(14);
        }
        if (abstractC19213s == null) {
            m2249b(15);
        }
        if (enumC19040a == null) {
            m2249b(16);
        }
        if (c18966e == null) {
            m2249b(17);
        }
        if (abstractC19026at == null) {
            m2249b(18);
        }
        return new C19375g(abstractC19193k, getAnnotations(), enumC19222y, abstractC19213s, at_(), c18966e, abstractC19026at, abstractC19017an, enumC19040a, this.f65288g, this.f65289h);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19368b
    /* renamed from: a */
    public final AbstractC19368b mo2250a(KotlinType kotlinType, List<C19380l> list, KotlinType kotlinType2, C18538n<AbstractC18973a.AbstractC18974a<?>, ?> c18538n) {
        C19189x c19189x;
        C19190y c19190y;
        AbstractC19020aq abstractC19020aq;
        if (kotlinType2 == null) {
            m2249b(20);
        }
        AbstractC19017an d = mo2599n() == this ? null : mo2599n();
        C19375g c19375g = new C19375g(getContainingDeclaration(), getAnnotations(), getModality(), getVisibility(), at_(), getName(), getSource(), d, getKind(), this.f65288g, c18538n);
        C19189x c19189x2 = this.f64867b;
        if (c19189x2 != null) {
            c19189x = new C19189x(c19375g, c19189x2.getAnnotations(), c19189x2.getModality(), c19189x2.getVisibility(), c19189x2.f64986a, c19189x2.isExternal(), c19189x2.isInline(), getKind(), d == null ? null : d.mo2635a(), c19189x2.getSource());
            c19189x.f64988c = c19189x2.getInitialSignatureDescriptor();
            c19189x.m2536a(kotlinType2);
        } else {
            c19189x = null;
        }
        AbstractC19019ap b = mo2623b();
        if (b != null) {
            c19190y = new C19190y(c19375g, b.getAnnotations(), b.getModality(), b.getVisibility(), b.mo2541a(), b.isExternal(), b.isInline(), getKind(), d == null ? null : d.mo2623b(), b.getSource());
            c19190y.f64988c = c19190y.getInitialSignatureDescriptor();
            c19190y.m2532a(b.getValueParameters().get(0));
        } else {
            c19190y = null;
        }
        c19375g.m2630a(c19189x, c19190y, mo2620e(), mo2619f());
        c19375g.m2624a(m2618m());
        if (this.f64912e != null) {
            c19375g.m2597a(this.f64912e);
        }
        c19375g.setOverriddenDescriptors(getOverriddenDescriptors());
        if (kotlinType == null) {
            abstractC19020aq = null;
        } else {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC19020aq = C19762c.m1522a(this, kotlinType, AbstractC18983g.C18984a.m2705a());
        }
        c19375g.m2627a(kotlinType2, getTypeParameters(), getDispatchReceiverParameter(), abstractC19020aq);
        return c19375g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    public final boolean ar_() {
        KotlinType g = mo2593g();
        if (!this.f65288g || !C19131i.m2636a(g)) {
            return false;
        }
        return !C19583s.m1992a(g) || AbstractC18940g.m2776s(g);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public <V> V getUserData(AbstractC18973a.AbstractC18974a<V> abstractC18974a) {
        C18538n<AbstractC18973a.AbstractC18974a<?>, ?> c18538n = this.f65289h;
        if (c18538n == null || !c18538n.f63624a.equals(abstractC18974a)) {
            return null;
        }
        return (V) this.f65289h.f63625b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }
}
