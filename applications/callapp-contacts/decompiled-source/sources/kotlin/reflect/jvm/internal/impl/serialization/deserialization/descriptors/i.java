package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.a.ab;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i.class */
public final class i extends h {

    /* renamed from: a  reason: collision with root package name */
    private final ae f38414a;

    /* renamed from: d  reason: collision with root package name */
    private final b f38415d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public i(kotlin.reflect.jvm.internal.impl.descriptors.ae r9, kotlin.reflect.jvm.internal.impl.b.a.k r10, kotlin.reflect.jvm.internal.impl.b.b.c r11, kotlin.reflect.jvm.internal.impl.b.b.a r12, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f r13, kotlin.reflect.jvm.internal.impl.serialization.deserialization.j r14, kotlin.jvm.functions.Function0<? extends java.util.Collection<kotlin.reflect.jvm.internal.impl.c.e>> r15) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "packageDescriptor"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r10
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            java.lang.String r1 = "nameResolver"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r12
            java.lang.String r1 = "metadataVersion"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r14
            java.lang.String r1 = "components"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r15
            java.lang.String r1 = "classNames"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$s r0 = r0.e
            r16 = r0
            r0 = r16
            java.lang.String r1 = "proto.typeTable"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.b.b.g r0 = new kotlin.reflect.jvm.internal.impl.b.b.g
            r1 = r0
            r2 = r16
            r1.<init>(r2)
            r16 = r0
            kotlin.reflect.jvm.internal.impl.b.b.i$a r0 = kotlin.reflect.jvm.internal.impl.b.b.i.f37162a
            r17 = r0
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$v r0 = r0.f
            r17 = r0
            r0 = r17
            java.lang.String r1 = "proto.versionRequirementTable"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r14
            r1 = r9
            r2 = r11
            r3 = r16
            r4 = r17
            kotlin.reflect.jvm.internal.impl.b.b.i r4 = kotlin.reflect.jvm.internal.impl.b.b.i.a.a(r4)
            r5 = r12
            r6 = r13
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.k r0 = r0.a(r1, r2, r3, r4, r5, r6)
            r12 = r0
            r0 = r10
            java.util.List<kotlin.reflect.jvm.internal.impl.b.a$h> r0 = r0.f37045b
            r11 = r0
            r0 = r11
            java.lang.String r1 = "proto.functionList"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r10
            java.util.List<kotlin.reflect.jvm.internal.impl.b.a$m> r0 = r0.f37046c
            r13 = r0
            r0 = r13
            java.lang.String r1 = "proto.propertyList"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r10
            java.util.List<kotlin.reflect.jvm.internal.impl.b.a$q> r0 = r0.f37047d
            r10 = r0
            r0 = r10
            java.lang.String r1 = "proto.typeAliasList"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r8
            r1 = r12
            r2 = r11
            r3 = r13
            r4 = r10
            r5 = r15
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r8
            r1 = r9
            r0.f38414a = r1
            r0 = r8
            r1 = r9
            kotlin.reflect.jvm.internal.impl.c.b r1 = r1.c()
            r0.f38415d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i.<init>(kotlin.reflect.jvm.internal.impl.descriptors.ae, kotlin.reflect.jvm.internal.impl.b.a$k, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.b.b.a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f, kotlin.reflect.jvm.internal.impl.serialization.deserialization.j, kotlin.jvm.functions.Function0):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
    protected final Set<e> a() {
        return ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
    protected final a a(e name) {
        p.d(name, "name");
        return new a(this.f38415d, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
    protected final void a(Collection<k> result, Function1<? super e, Boolean> nameFilter) {
        p.d(result, "result");
        p.d(nameFilter, "nameFilter");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
    protected final Set<e> b() {
        return ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
    protected final boolean b(e name) {
        boolean z;
        p.d(name, "name");
        if (super.b(name)) {
            return true;
        }
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.b.b> iterable = this.f38380c.f38445a.k;
        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
            for (kotlin.reflect.jvm.internal.impl.descriptors.b.b bVar : iterable) {
                if (bVar.a(this.f38415d, name)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
    protected final Set<e> c() {
        return ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final g getContributedClassifier(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        recordLookup(name, location);
        return super.getContributedClassifier(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final /* synthetic */ Collection getContributedDescriptors(d kindFilter, Function1 nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        Collection<k> a2 = a(kindFilter, nameFilter, kotlin.reflect.jvm.internal.impl.a.a.d.WHEN_GET_ALL_DESCRIPTORS);
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.b.b> iterable = this.f38380c.f38445a.k;
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.b.b bVar : iterable) {
            n.a((Collection) arrayList, (Iterable) bVar.a(this.f38415d));
        }
        return n.b((Collection) a2, (Iterable) arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final void recordLookup(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        kotlin.reflect.jvm.internal.impl.a.a.a(this.f38380c.f38445a.i, location, this.f38414a, name);
    }
}
