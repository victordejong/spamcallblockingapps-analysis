package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p531g.C18381k;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ag */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ag.class */
public final class C19008ag implements AbstractC19012ai {

    /* renamed from: a */
    private final Collection<AbstractC19006ae> f64744a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ag$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ag$a.class */
    static final class C19009a extends AbstractC18526r implements Function1<AbstractC19006ae, C18961b> {

        /* renamed from: a */
        public static final C19009a f64745a = new C19009a();

        C19009a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C18961b invoke(AbstractC19006ae abstractC19006ae) {
            AbstractC19006ae it2 = abstractC19006ae;
            C18524p.m3840d(it2, "it");
            return it2.mo2542c();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ag$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ag$b.class */
    static final class C19010b extends AbstractC18526r implements Function1<C18961b, Boolean> {

        /* renamed from: a */
        final /* synthetic */ C18961b f64746a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19010b(C18961b c18961b) {
            super(1);
            this.f64746a = c18961b;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(C18961b c18961b) {
            C18961b it2 = c18961b;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(!it2.f64686b.f64691a.isEmpty() && C18524p.m3850a(it2.m2739d(), this.f64746a));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C19008ag(Collection<? extends AbstractC19006ae> packageFragments) {
        C18524p.m3840d(packageFragments, "packageFragments");
        this.f64744a = packageFragments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: a */
    public final Collection<C18961b> mo1388a(C18961b fqName, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(nameFilter, "nameFilter");
        return C18381k.m4012f(C18381k.m4020a(C18381k.m4015d(C18282n.m4106p(this.f64744a), C19009a.f64745a), (Function1) new C19010b(fqName)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai
    /* renamed from: a */
    public final void mo1389a(C18961b fqName, Collection<AbstractC19006ae> packageFragments) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(packageFragments, "packageFragments");
        for (Object obj : this.f64744a) {
            if (C18524p.m3850a(((AbstractC19006ae) obj).mo2542c(), fqName)) {
                packageFragments.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: b */
    public final List<AbstractC19006ae> mo1385b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        Collection<AbstractC19006ae> collection = this.f64744a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (C18524p.m3850a(((AbstractC19006ae) obj).mo2542c(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
