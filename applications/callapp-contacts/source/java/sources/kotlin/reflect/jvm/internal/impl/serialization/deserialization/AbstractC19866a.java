package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/a.class */
public abstract class AbstractC19866a implements AbstractC19012ai {

    /* renamed from: a */
    protected C19948j f66073a;

    /* renamed from: b */
    private final AbstractC19302n f66074b;

    /* renamed from: c */
    private final AbstractC19960r f66075c;

    /* renamed from: d */
    private final AbstractC18999ab f66076d;

    /* renamed from: e */
    private final AbstractC19295h<C18961b, AbstractC19006ae> f66077e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/a$a.class */
    public static final class C19867a extends AbstractC18526r implements Function1<C18961b, AbstractC19006ae> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19867a() {
            super(1);
            AbstractC19866a.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19006ae invoke(C18961b c18961b) {
            C18961b fqName = c18961b;
            C18524p.m3840d(fqName, "fqName");
            AbstractC19951m mo1390a = AbstractC19866a.this.mo1390a(fqName);
            if (mo1390a == null) {
                mo1390a = null;
            } else {
                mo1390a.mo1256a(AbstractC19866a.this.m1383d());
            }
            return mo1390a;
        }
    }

    public AbstractC19866a(AbstractC19302n storageManager, AbstractC19960r finder, AbstractC18999ab moduleDescriptor) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(finder, "finder");
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        this.f66074b = storageManager;
        this.f66075c = finder;
        this.f66076d = moduleDescriptor;
        this.f66077e = storageManager.mo2307b(new C19867a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: a */
    public final Collection<C18961b> mo1388a(C18961b fqName, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(nameFilter, "nameFilter");
        return C18240ab.f63351a;
    }

    /* renamed from: a */
    public final AbstractC19302n m1391a() {
        return this.f66074b;
    }

    /* renamed from: a */
    protected abstract AbstractC19951m mo1390a(C18961b c18961b);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai
    /* renamed from: a */
    public final void mo1389a(C18961b fqName, Collection<AbstractC19006ae> packageFragments) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(packageFragments, "packageFragments");
        C19999a.m1208a(packageFragments, this.f66077e.invoke(fqName));
    }

    /* renamed from: a */
    public final void m1387a(C19948j c19948j) {
        C18524p.m3840d(c19948j, "<set-?>");
        this.f66073a = c19948j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: b */
    public final List<AbstractC19006ae> mo1385b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return C18282n.m4169b(this.f66077e.invoke(fqName));
    }

    /* renamed from: b */
    public final AbstractC19960r m1386b() {
        return this.f66075c;
    }

    /* renamed from: c */
    public final AbstractC18999ab m1384c() {
        return this.f66076d;
    }

    /* renamed from: d */
    protected final C19948j m1383d() {
        C19948j c19948j = this.f66073a;
        if (c19948j != null) {
            return c19948j;
        }
        C18524p.m3848a("components");
        throw null;
    }
}
