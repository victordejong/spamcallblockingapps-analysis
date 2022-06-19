package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p531g.C18381k;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.C19349c;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/d.class */
public final class C19436d implements AbstractC18983g {

    /* renamed from: b */
    private final C19501g f65343b;

    /* renamed from: c */
    private final AbstractC19395d f65344c;

    /* renamed from: d */
    private final boolean f65345d;

    /* renamed from: e */
    private final AbstractC19295h<AbstractC19389a, AbstractC18977c> f65346e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/d$a.class */
    public static final class C19437a extends AbstractC18526r implements Function1<AbstractC19389a, AbstractC18977c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19437a() {
            super(1);
            C19436d.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18977c invoke(AbstractC19389a abstractC19389a) {
            AbstractC19389a annotation = abstractC19389a;
            C18524p.m3840d(annotation, "annotation");
            C19349c c19349c = C19349c.f65245a;
            return C19349c.m2280a(annotation, C19436d.this.f65343b, C19436d.this.f65345d);
        }
    }

    public C19436d(C19501g c, AbstractC19395d annotationOwner, boolean z) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(annotationOwner, "annotationOwner");
        this.f65343b = c;
        this.f65344c = annotationOwner;
        this.f65345d = z;
        this.f65346e = c.f65480a.f65318a.mo2307b(new C19437a());
    }

    public /* synthetic */ C19436d(C19501g c19501g, AbstractC19395d abstractC19395d, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19501g, abstractC19395d, (i & 4) != 0 ? false : z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final AbstractC18977c mo1340a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        AbstractC19389a mo2221a = this.f65344c.mo2221a(fqName);
        AbstractC18977c invoke = mo2221a == null ? null : this.f65346e.invoke(mo2221a);
        return invoke == null ? C19349c.f65245a.m2281a(fqName, this.f65344c, this.f65343b) : invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final boolean mo1275a() {
        return this.f65344c.mo2220b().isEmpty() && !this.f65344c.mo2219c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: b */
    public final boolean mo1338b(C18961b c18961b) {
        return AbstractC18983g.C18986b.m2702b(this, c18961b);
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC18977c> iterator() {
        return C18381k.m4014e(C18381k.m4022a(C18381k.m4015d(C18282n.m4106p(this.f65344c.mo2220b()), this.f65346e), C19349c.f65245a.m2281a(C18954j.C18955a.f64670y, this.f65344c, this.f65343b))).mo3908a();
    }
}
