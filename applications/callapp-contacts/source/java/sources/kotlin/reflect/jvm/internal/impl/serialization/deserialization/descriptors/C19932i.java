package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.p537a.C18693a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i.class */
public final class C19932i extends AbstractC19910h {

    /* renamed from: a */
    private final AbstractC19006ae f66206a;

    /* renamed from: d */
    private final C18961b f66207d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C19932i(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae r9, kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18748k r10, kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c r11, kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a r12, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f r13, kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j r14, kotlin.jvm.functions.Function0<? extends java.util.Collection<kotlin.reflect.jvm.internal.impl.p545c.C18966e>> r15) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "packageDescriptor"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r10
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r12
            java.lang.String r1 = "metadataVersion"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r14
            java.lang.String r1 = "components"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r15
            java.lang.String r1 = "classNames"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$s r0 = r0.f64006e
            r16 = r0
            r0 = r16
            java.lang.String r1 = "proto.typeTable"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.b.b.g r0 = new kotlin.reflect.jvm.internal.impl.b.b.g
            r1 = r0
            r2 = r16
            r1.<init>(r2)
            r16 = r0
            kotlin.reflect.jvm.internal.impl.b.b.i$a r0 = kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i.f64325a
            r17 = r0
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$v r0 = r0.f64007f
            r17 = r0
            r0 = r17
            java.lang.String r1 = "proto.versionRequirementTable"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r14
            r1 = r9
            r2 = r11
            r3 = r16
            r4 = r17
            kotlin.reflect.jvm.internal.impl.b.b.i r4 = kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i.C18825a.m3040a(r4)
            r5 = r12
            r6 = r13
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.k r0 = r0.m1260a(r1, r2, r3, r4, r5, r6)
            r12 = r0
            r0 = r10
            java.util.List<kotlin.reflect.jvm.internal.impl.b.a$h> r0 = r0.f64003b
            r11 = r0
            r0 = r11
            java.lang.String r1 = "proto.functionList"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r10
            java.util.List<kotlin.reflect.jvm.internal.impl.b.a$m> r0 = r0.f64004c
            r13 = r0
            r0 = r13
            java.lang.String r1 = "proto.propertyList"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r10
            java.util.List<kotlin.reflect.jvm.internal.impl.b.a$q> r0 = r0.f64005d
            r10 = r0
            r0 = r10
            java.lang.String r1 = "proto.typeAliasList"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r8
            r1 = r12
            r2 = r11
            r3 = r13
            r4 = r10
            r5 = r15
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r8
            r1 = r9
            r0.f66206a = r1
            r0 = r8
            r1 = r9
            kotlin.reflect.jvm.internal.impl.c.b r1 = r1.mo2542c()
            r0.f66207d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19932i.<init>(kotlin.reflect.jvm.internal.impl.descriptors.ae, kotlin.reflect.jvm.internal.impl.b.a$k, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.b.b.a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f, kotlin.reflect.jvm.internal.impl.serialization.deserialization.j, kotlin.jvm.functions.Function0):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
    /* renamed from: a */
    protected final Set<C18966e> mo1293a() {
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
    /* renamed from: a */
    protected final C18960a mo1291a(C18966e name) {
        C18524p.m3840d(name, "name");
        return new C18960a(this.f66207d, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
    /* renamed from: a */
    protected final void mo1292a(Collection<AbstractC19193k> result, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(result, "result");
        C18524p.m3840d(nameFilter, "nameFilter");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
    /* renamed from: b */
    protected final Set<C18966e> mo1290b() {
        return C18240ab.f63351a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
    /* renamed from: b */
    public final boolean mo1289b(C18966e name) {
        boolean z;
        C18524p.m3840d(name, "name");
        if (!super.mo1289b(name)) {
            Iterable<AbstractC19043b> iterable = this.f66154c.f66269a.f66259k;
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                for (AbstractC19043b abstractC19043b : iterable) {
                    if (abstractC19043b.mo2682a(this.f66207d, name)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            return z;
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
    /* renamed from: c */
    protected final Set<C18966e> mo1288c() {
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        return super.getContributedClassifier(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final /* synthetic */ Collection getContributedDescriptors(C19825d kindFilter, Function1 nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        Collection<AbstractC19193k> a = m1330a(kindFilter, nameFilter, EnumC18698d.WHEN_GET_ALL_DESCRIPTORS);
        Iterable<AbstractC19043b> iterable = this.f66154c.f66269a.f66259k;
        ArrayList arrayList = new ArrayList();
        for (AbstractC19043b abstractC19043b : iterable) {
            C18282n.m4158a((Collection) arrayList, (Iterable) abstractC19043b.mo2683a(this.f66207d));
        }
        return C18282n.m4135b((Collection) a, (Iterable) arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final void recordLookup(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        C18693a.m3707a(this.f66154c.f66269a.f66257i, location, this.f66206a, name);
    }
}
