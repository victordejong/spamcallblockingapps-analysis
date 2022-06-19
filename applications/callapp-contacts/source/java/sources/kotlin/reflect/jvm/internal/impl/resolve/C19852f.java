package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Comparator;
import java.util.List;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f;
import kotlin.reflect.jvm.internal.impl.p553e.EnumC19225a;
import kotlin.reflect.jvm.internal.impl.p553e.EnumC19255e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/f.class */
public class C19852f implements Comparator<AbstractC19193k> {

    /* renamed from: b */
    static final /* synthetic */ boolean f66052b = true;

    /* renamed from: a */
    public static final C19852f f66051a = new C19852f();

    /* renamed from: c */
    private static final AbstractC19230c f66053c = AbstractC19230c.C19231a.m2490a(new Function1<AbstractC19257f, C20128v>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.f.1
        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            abstractC19257f2.mo2357f(false);
            abstractC19257f2.mo2359e(true);
            abstractC19257f2.mo2372a(EnumC19225a.UNLESS_EMPTY);
            abstractC19257f2.mo2366b(EnumC19255e.ALL);
            return C20128v.f66529a;
        }
    });

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/f$a.class */
    public static final class C19854a implements Comparator<AbstractC19193k> {

        /* renamed from: a */
        public static final C19854a f66054a = new C19854a();

        private C19854a() {
        }

        /* renamed from: a */
        private static int m1401a(AbstractC19193k abstractC19193k) {
            if (C19807d.m1457i(abstractC19193k)) {
                return 8;
            }
            if (abstractC19193k instanceof AbstractC19192j) {
                return 7;
            }
            if (abstractC19193k instanceof AbstractC19017an) {
                return ((AbstractC19017an) abstractC19193k).getExtensionReceiverParameter() == null ? 6 : 5;
            } else if (abstractC19193k instanceof AbstractC19219w) {
                return ((AbstractC19219w) abstractC19193k).getExtensionReceiverParameter() == null ? 4 : 3;
            } else if (abstractC19193k instanceof AbstractC19070d) {
                return 2;
            } else {
                return abstractC19193k instanceof AbstractC19033ax ? 1 : 0;
            }
        }

        /* renamed from: b */
        public static Integer m1399b(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
            int m1401a = m1401a(abstractC19193k2) - m1401a(abstractC19193k);
            if (m1401a != 0) {
                return Integer.valueOf(m1401a);
            }
            if (C19807d.m1457i(abstractC19193k) && C19807d.m1457i(abstractC19193k2)) {
                return 0;
            }
            int compareTo = abstractC19193k.getName().compareTo(abstractC19193k2.getName());
            if (compareTo == 0) {
                return null;
            }
            return Integer.valueOf(compareTo);
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
            Integer m1399b = m1399b(abstractC19193k, abstractC19193k2);
            if (m1399b != null) {
                return m1399b.intValue();
            }
            return 0;
        }
    }

    static {
        AbstractC19230c.C19231a c19231a = AbstractC19230c.f65024a;
    }

    private C19852f() {
    }

    @Override // java.util.Comparator
    public /* synthetic */ int compare(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
        int ordinal;
        AbstractC19193k abstractC19193k3 = abstractC19193k;
        AbstractC19193k abstractC19193k4 = abstractC19193k2;
        Integer m1399b = C19854a.m1399b(abstractC19193k3, abstractC19193k4);
        if (m1399b != null) {
            return m1399b.intValue();
        }
        if (!(abstractC19193k3 instanceof AbstractC19033ax) || !(abstractC19193k4 instanceof AbstractC19033ax)) {
            boolean z = true;
            if ((abstractC19193k3 instanceof AbstractC18973a) && (abstractC19193k4 instanceof AbstractC18973a)) {
                AbstractC18973a abstractC18973a = (AbstractC18973a) abstractC19193k3;
                AbstractC18973a abstractC18973a2 = (AbstractC18973a) abstractC19193k4;
                AbstractC19020aq extensionReceiverParameter = abstractC18973a.getExtensionReceiverParameter();
                AbstractC19020aq extensionReceiverParameter2 = abstractC18973a2.getExtensionReceiverParameter();
                if (!f66052b) {
                    boolean z2 = extensionReceiverParameter != null;
                    if (extensionReceiverParameter2 == null) {
                        z = false;
                    }
                    if (z2 != z) {
                        throw new AssertionError();
                    }
                }
                if (extensionReceiverParameter != null) {
                    AbstractC19230c abstractC19230c = f66053c;
                    int compareTo = abstractC19230c.mo2425a(extensionReceiverParameter.mo2593g()).compareTo(abstractC19230c.mo2425a(extensionReceiverParameter2.mo2593g()));
                    if (compareTo != 0) {
                        return compareTo;
                    }
                }
                List<AbstractC19050ba> valueParameters = abstractC18973a.getValueParameters();
                List<AbstractC19050ba> valueParameters2 = abstractC18973a2.getValueParameters();
                for (int i = 0; i < Math.min(valueParameters.size(), valueParameters2.size()); i++) {
                    AbstractC19230c abstractC19230c2 = f66053c;
                    int compareTo2 = abstractC19230c2.mo2425a(valueParameters.get(i).mo2593g()).compareTo(abstractC19230c2.mo2425a(valueParameters2.get(i).mo2593g()));
                    if (compareTo2 != 0) {
                        return compareTo2;
                    }
                }
                int size = valueParameters.size() - valueParameters2.size();
                if (size != 0) {
                    return size;
                }
                List<TypeParameterDescriptor> typeParameters = abstractC18973a.getTypeParameters();
                List<TypeParameterDescriptor> typeParameters2 = abstractC18973a2.getTypeParameters();
                for (int i2 = 0; i2 < Math.min(typeParameters.size(), typeParameters2.size()); i2++) {
                    List<KotlinType> upperBounds = typeParameters.get(i2).getUpperBounds();
                    List<KotlinType> upperBounds2 = typeParameters2.get(i2).getUpperBounds();
                    int size2 = upperBounds.size() - upperBounds2.size();
                    if (size2 != 0) {
                        return size2;
                    }
                    for (int i3 = 0; i3 < upperBounds.size(); i3++) {
                        AbstractC19230c abstractC19230c3 = f66053c;
                        int compareTo3 = abstractC19230c3.mo2425a(upperBounds.get(i3)).compareTo(abstractC19230c3.mo2425a(upperBounds2.get(i3)));
                        if (compareTo3 != 0) {
                            return compareTo3;
                        }
                    }
                }
                int size3 = typeParameters.size() - typeParameters2.size();
                if (size3 != 0) {
                    return size3;
                }
                if ((abstractC18973a instanceof AbstractC19039b) && (abstractC18973a2 instanceof AbstractC19039b) && (ordinal = ((AbstractC19039b) abstractC18973a).getKind().ordinal() - ((AbstractC19039b) abstractC18973a2).getKind().ordinal()) != 0) {
                    return ordinal;
                }
            } else if (!(abstractC19193k3 instanceof AbstractC19070d) || !(abstractC19193k4 instanceof AbstractC19070d)) {
                throw new AssertionError(String.format("Unsupported pair of descriptors:\n'%s' Class: %s\n%s' Class: %s", abstractC19193k3, abstractC19193k3.getClass(), abstractC19193k4, abstractC19193k4.getClass()));
            } else {
                AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19193k3;
                AbstractC19070d abstractC19070d2 = (AbstractC19070d) abstractC19193k4;
                if (abstractC19070d.getKind().ordinal() != abstractC19070d2.getKind().ordinal()) {
                    return abstractC19070d.getKind().ordinal() - abstractC19070d2.getKind().ordinal();
                }
                if (abstractC19070d.isCompanionObject() != abstractC19070d2.isCompanionObject()) {
                    return abstractC19070d.isCompanionObject() ? 1 : -1;
                }
            }
        } else {
            AbstractC19033ax abstractC19033ax = (AbstractC19033ax) abstractC19193k3;
            AbstractC19033ax abstractC19033ax2 = (AbstractC19033ax) abstractC19193k4;
            AbstractC19230c abstractC19230c4 = f66053c;
            int compareTo4 = abstractC19230c4.mo2425a(abstractC19033ax.mo1284a()).compareTo(abstractC19230c4.mo2425a(abstractC19033ax2.mo1284a()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
        }
        AbstractC19230c abstractC19230c5 = f66053c;
        int compareTo5 = abstractC19230c5.mo2447a(abstractC19193k3).compareTo(abstractC19230c5.mo2447a(abstractC19193k4));
        return compareTo5 != 0 ? compareTo5 : C19807d.m1460f(abstractC19193k3).getName().compareTo(C19807d.m1460f(abstractC19193k4).getName());
    }
}
