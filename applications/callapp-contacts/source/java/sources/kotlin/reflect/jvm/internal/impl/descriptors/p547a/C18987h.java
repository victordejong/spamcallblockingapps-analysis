package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/h.class */
public final class C18987h implements AbstractC18983g {

    /* renamed from: b */
    private final List<AbstractC18977c> f64720b;

    /* JADX WARN: Multi-variable type inference failed */
    public C18987h(List<? extends AbstractC18977c> annotations) {
        C18524p.m3840d(annotations, "annotations");
        this.f64720b = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final AbstractC18977c mo1340a(C18961b c18961b) {
        return AbstractC18983g.C18986b.m2703a(this, c18961b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final boolean mo1275a() {
        return this.f64720b.isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: b */
    public final boolean mo1338b(C18961b c18961b) {
        return AbstractC18983g.C18986b.m2702b(this, c18961b);
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC18977c> iterator() {
        return this.f64720b.iterator();
    }

    public final String toString() {
        return this.f64720b.toString();
    }
}
