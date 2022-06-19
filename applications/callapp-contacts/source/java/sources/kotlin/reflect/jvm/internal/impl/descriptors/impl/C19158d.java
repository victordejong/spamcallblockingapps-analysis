package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/d.class */
public class C19158d extends FunctionDescriptorImpl implements AbstractC19065c {

    /* renamed from: b */
    static final /* synthetic */ boolean f64919b = true;

    /* renamed from: c */
    private static final C18966e f64920c = C18966e.m2715c("<init>");

    /* renamed from: a */
    protected final boolean f64921a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19158d(AbstractC19070d abstractC19070d, AbstractC19192j abstractC19192j, AbstractC18983g abstractC18983g, boolean z, AbstractC19039b.EnumC19040a enumC19040a, AbstractC19026at abstractC19026at) {
        super(abstractC19070d, abstractC19192j, abstractC18983g, f64920c, enumC19040a, abstractC19026at);
        if (abstractC19070d == null) {
            m2589a(0);
        }
        if (abstractC18983g == null) {
            m2589a(1);
        }
        if (enumC19040a == null) {
            m2589a(2);
        }
        if (abstractC19026at == null) {
            m2589a(3);
        }
        this.f64921a = z;
    }

    /* renamed from: a */
    public AbstractC19065c copy(AbstractC19193k abstractC19193k, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, AbstractC19039b.EnumC19040a enumC19040a, boolean z) {
        AbstractC19065c abstractC19065c = (AbstractC19065c) super.copy(abstractC19193k, enumC19222y, abstractC19213s, enumC19040a, z);
        if (abstractC19065c == null) {
            m2589a(25);
        }
        return abstractC19065c;
    }

    /* renamed from: a */
    public static C19158d m2586a(AbstractC19070d abstractC19070d, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC18983g == null) {
            m2589a(5);
        }
        if (abstractC19026at == null) {
            m2589a(6);
        }
        return new C19158d(abstractC19070d, null, abstractC18983g, true, AbstractC19039b.EnumC19040a.DECLARATION, abstractC19026at);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x024c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void m2589a(int r4) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d.m2589a(int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c
    /* renamed from: a */
    public final AbstractC19065c getOriginal() {
        AbstractC19065c abstractC19065c = (AbstractC19065c) super.getOriginal();
        if (abstractC19065c == null) {
            m2589a(17);
        }
        return abstractC19065c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c
    /* renamed from: a */
    public final AbstractC19065c substitute2(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            m2589a(18);
        }
        return (AbstractC19065c) super.substitute(typeSubstitutor);
    }

    /* renamed from: a */
    public final C19158d m2588a(List<AbstractC19050ba> list, AbstractC19213s abstractC19213s) {
        if (list == null) {
            m2589a(13);
        }
        if (abstractC19213s == null) {
            m2589a(14);
        }
        m2587a(list, abstractC19213s, getContainingDeclaration().getDeclaredTypeParameters());
        return this;
    }

    /* renamed from: a */
    public final C19158d m2587a(List<AbstractC19050ba> list, AbstractC19213s abstractC19213s, List<TypeParameterDescriptor> list2) {
        AbstractC19020aq abstractC19020aq;
        if (list == null) {
            m2589a(10);
        }
        if (abstractC19213s == null) {
            m2589a(11);
        }
        if (list2 == null) {
            m2589a(12);
        }
        AbstractC19070d containingDeclaration = getContainingDeclaration();
        if (containingDeclaration.isInner()) {
            AbstractC19193k containingDeclaration2 = containingDeclaration.getContainingDeclaration();
            if (containingDeclaration2 instanceof AbstractC19070d) {
                abstractC19020aq = ((AbstractC19070d) containingDeclaration2).getThisAsReceiverParameter();
                super.initialize(null, abstractC19020aq, list2, list, null, EnumC19222y.FINAL, abstractC19213s);
                return this;
            }
        }
        abstractC19020aq = null;
        super.initialize(null, abstractC19020aq, list2, list, null, EnumC19222y.FINAL, abstractC19213s);
        return this;
    }

    /* renamed from: a */
    public C19158d createSubstitutedCopy(AbstractC19193k abstractC19193k, AbstractC19219w abstractC19219w, AbstractC19039b.EnumC19040a enumC19040a, C18966e c18966e, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC19193k == null) {
            m2589a(21);
        }
        if (enumC19040a == null) {
            m2589a(22);
        }
        if (abstractC18983g == null) {
            m2589a(23);
        }
        if (abstractC19026at == null) {
            m2589a(24);
        }
        if (enumC19040a == AbstractC19039b.EnumC19040a.DECLARATION || enumC19040a == AbstractC19039b.EnumC19040a.SYNTHESIZED) {
            if (!f64919b && c18966e != null) {
                throw new AssertionError("Attempt to rename constructor: ".concat(String.valueOf(this)));
            }
            return new C19158d((AbstractC19070d) abstractC19193k, this, abstractC18983g, this.f64921a, AbstractC19039b.EnumC19040a.DECLARATION, abstractC19026at);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + abstractC19193k + "\nkind: " + enumC19040a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
        return abstractC19195m.mo1173a((AbstractC19192j) this, (C19158d) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j
    /* renamed from: c */
    public final AbstractC19070d mo2525c() {
        AbstractC19070d containingDeclaration = getContainingDeclaration();
        if (containingDeclaration == null) {
            m2589a(16);
        }
        return containingDeclaration;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j
    /* renamed from: d */
    public final boolean mo2524d() {
        return this.f64921a;
    }

    /* renamed from: e */
    public final AbstractC19070d getContainingDeclaration() {
        AbstractC19070d abstractC19070d = (AbstractC19070d) super.getContainingDeclaration();
        if (abstractC19070d == null) {
            m2589a(15);
        }
        return abstractC19070d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public Collection<? extends AbstractC19219w> getOverriddenDescriptors() {
        Set emptySet = Collections.emptySet();
        if (emptySet == null) {
            m2589a(19);
        }
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
    public void setOverriddenDescriptors(Collection<? extends AbstractC19039b> collection) {
        if (collection == null) {
            m2589a(20);
        }
        if (f64919b || collection.isEmpty()) {
            return;
        }
        throw new AssertionError("Constructors cannot override anything");
    }
}
