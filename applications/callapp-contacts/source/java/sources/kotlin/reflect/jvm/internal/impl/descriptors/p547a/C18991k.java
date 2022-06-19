package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/k.class */
public final class C18991k implements AbstractC18983g {

    /* renamed from: b */
    private final List<AbstractC18983g> f64726b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/k$a.class */
    static final class C18992a extends AbstractC18526r implements Function1<AbstractC18983g, AbstractC18977c> {

        /* renamed from: a */
        final /* synthetic */ C18961b f64727a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18992a(C18961b c18961b) {
            super(1);
            this.f64727a = c18961b;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18977c invoke(AbstractC18983g abstractC18983g) {
            AbstractC18983g it2 = abstractC18983g;
            C18524p.m3840d(it2, "it");
            return it2.mo1340a(this.f64727a);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/k$b.class */
    static final class C18993b extends AbstractC18526r implements Function1<AbstractC18983g, AbstractC18378h<? extends AbstractC18977c>> {

        /* renamed from: a */
        public static final C18993b f64728a = new C18993b();

        C18993b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18378h<? extends AbstractC18977c> invoke(AbstractC18983g abstractC18983g) {
            AbstractC18983g it2 = abstractC18983g;
            C18524p.m3840d(it2, "it");
            return C18282n.m4106p(it2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18991k(List<? extends AbstractC18983g> delegates) {
        C18524p.m3840d(delegates, "delegates");
        this.f64726b = delegates;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C18991k(AbstractC18983g... delegates) {
        this(C18273i.m4183i(delegates));
        C18524p.m3840d(delegates, "delegates");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final AbstractC18977c mo1340a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        AbstractC18378h firstOrNull = C18381k.m4013e(C18282n.m4106p(this.f64726b), new C18992a(fqName));
        C18524p.m3840d(firstOrNull, "$this$firstOrNull");
        Iterator mo3908a = firstOrNull.mo3908a();
        return (AbstractC18977c) (!mo3908a.hasNext() ? null : mo3908a.next());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final boolean mo1275a() {
        List<AbstractC18983g> list = this.f64726b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (AbstractC18983g abstractC18983g : list) {
                if (!abstractC18983g.mo1275a()) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: b */
    public final boolean mo1338b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        Iterator mo3908a = C18282n.m4106p(this.f64726b).mo3908a();
        while (mo3908a.hasNext()) {
            if (((AbstractC18983g) mo3908a.next()).mo1338b(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC18977c> iterator() {
        return C18381k.m4017c(C18282n.m4106p(this.f64726b), C18993b.f64728a).mo3908a();
    }
}
