package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.C19011ah;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19820b;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19832g;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.o */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/o.class */
public final class C19174o extends AbstractC19162h implements AbstractC19013aj {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f64944a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19174o.class), "fragments", "getFragments()Ljava/util/List;"))};

    /* renamed from: b */
    final C19183t f64945b;

    /* renamed from: c */
    final C18961b f64946c;

    /* renamed from: d */
    private final AbstractC19296i f64947d;

    /* renamed from: e */
    private final AbstractC19834h f64948e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.o$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/o$a.class */
    public static final class C19175a extends AbstractC18526r implements Function0<List<? extends AbstractC19006ae>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19175a() {
            super(0);
            C19174o.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC19006ae> invoke() {
            return C19011ah.m2698a(C19174o.this.f64945b.m2552c(), C19174o.this.f64946c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.o$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/o$b.class */
    public static final class C19176b extends AbstractC18526r implements Function0<AbstractC19834h> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19176b() {
            super(0);
            C19174o.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19834h invoke() {
            if (C19174o.this.mo2568d().isEmpty()) {
                return AbstractC19834h.C19838c.f66035a;
            }
            List<AbstractC19006ae> mo2568d = C19174o.this.mo2568d();
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) mo2568d, 10));
            for (AbstractC19006ae abstractC19006ae : mo2568d) {
                arrayList.add(abstractC19006ae.mo1257a());
            }
            List a = C18282n.m4143a((Collection<? extends C19143ab>) arrayList, new C19143ab(C19174o.this.f64945b, C19174o.this.f64946c));
            C19820b.C19821a c19821a = C19820b.f65988a;
            return C19820b.C19821a.m1432a("package view scope for " + C19174o.this.f64946c + " in " + C19174o.this.f64945b.getName(), (Iterable<? extends AbstractC19834h>) a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19174o(C19183t module, C18961b fqName, AbstractC19302n storageManager) {
        super(AbstractC18983g.C18984a.m2705a(), fqName.m2737f());
        C18524p.m3840d(module, "module");
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(storageManager, "storageManager");
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        this.f64945b = module;
        this.f64946c = fqName;
        this.f64947d = storageManager.mo2313a(new C19175a());
        this.f64948e = new C19832g(storageManager, new C19176b());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj
    /* renamed from: a */
    public final C18961b mo2571a() {
        return this.f64946c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final <R, D> R accept(AbstractC19195m<R, D> visitor, D d) {
        C18524p.m3840d(visitor, "visitor");
        return visitor.mo2386a((AbstractC19013aj) this, (C19174o) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj
    /* renamed from: b */
    public final AbstractC19834h mo2570b() {
        return this.f64948e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC18999ab mo2569c() {
        return this.f64945b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj
    /* renamed from: d */
    public final List<AbstractC19006ae> mo2568d() {
        return (List) C19301m.m2316a(this.f64947d, f64944a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj
    /* renamed from: e */
    public final boolean mo2567e() {
        C18524p.m3840d(this, "this");
        return mo2568d().isEmpty();
    }

    public final boolean equals(Object obj) {
        AbstractC19013aj abstractC19013aj = obj instanceof AbstractC19013aj ? (AbstractC19013aj) obj : null;
        return abstractC19013aj != null && C18524p.m3850a(this.f64946c, abstractC19013aj.mo2571a()) && C18524p.m3850a(this.f64945b, abstractC19013aj.mo2569c());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final /* synthetic */ AbstractC19193k getContainingDeclaration() {
        AbstractC19013aj abstractC19013aj;
        if (this.f64946c.f64686b.f64691a.isEmpty()) {
            abstractC19013aj = null;
        } else {
            C19183t c19183t = this.f64945b;
            C18961b m2739d = this.f64946c.m2739d();
            C18524p.m3843b(m2739d, "fqName.parent()");
            abstractC19013aj = c19183t.getPackage(m2739d);
        }
        return abstractC19013aj;
    }

    public final int hashCode() {
        return (this.f64945b.hashCode() * 31) + this.f64946c.hashCode();
    }
}
