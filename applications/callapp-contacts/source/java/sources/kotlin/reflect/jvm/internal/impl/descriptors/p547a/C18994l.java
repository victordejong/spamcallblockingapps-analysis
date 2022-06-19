package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/l.class */
public final class C18994l implements AbstractC18983g {

    /* renamed from: b */
    private final AbstractC18983g f64729b;

    /* renamed from: c */
    private final boolean f64730c;

    /* renamed from: d */
    private final Function1<C18961b, Boolean> f64731d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C18994l(AbstractC18983g delegate, Function1<? super C18961b, Boolean> fqNameFilter) {
        this(delegate, false, fqNameFilter);
        C18524p.m3840d(delegate, "delegate");
        C18524p.m3840d(fqNameFilter, "fqNameFilter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18994l(AbstractC18983g delegate, boolean z, Function1<? super C18961b, Boolean> fqNameFilter) {
        C18524p.m3840d(delegate, "delegate");
        C18524p.m3840d(fqNameFilter, "fqNameFilter");
        this.f64729b = delegate;
        this.f64730c = z;
        this.f64731d = fqNameFilter;
    }

    /* renamed from: a */
    private final boolean m2700a(AbstractC18977c abstractC18977c) {
        C18961b mo2042b = abstractC18977c.mo2042b();
        return mo2042b != null && this.f64731d.invoke(mo2042b).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final AbstractC18977c mo1340a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        if (this.f64731d.invoke(fqName).booleanValue()) {
            return this.f64729b.mo1340a(fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final boolean mo1275a() {
        boolean z;
        AbstractC18983g<AbstractC18977c> abstractC18983g = this.f64729b;
        if (!(abstractC18983g instanceof Collection) || !((Collection) abstractC18983g).isEmpty()) {
            for (AbstractC18977c abstractC18977c : abstractC18983g) {
                if (m2700a(abstractC18977c)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return this.f64730c ? !z : z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: b */
    public final boolean mo1338b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        if (this.f64731d.invoke(fqName).booleanValue()) {
            return this.f64729b.mo1338b(fqName);
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC18977c> iterator() {
        AbstractC18983g abstractC18983g = this.f64729b;
        ArrayList arrayList = new ArrayList();
        for (AbstractC18977c abstractC18977c : abstractC18983g) {
            if (m2700a(abstractC18977c)) {
                arrayList.add(abstractC18977c);
            }
        }
        return arrayList.iterator();
    }
}
