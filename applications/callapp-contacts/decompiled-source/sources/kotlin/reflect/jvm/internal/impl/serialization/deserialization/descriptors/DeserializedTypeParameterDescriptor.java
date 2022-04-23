package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.g;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor.class */
public final class DeserializedTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    private final b annotations;

    /* renamed from: c  reason: collision with root package name */
    private final k f38372c;
    private final a.r proto;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor$a.class */
    static final class a extends r implements Function0<List<? extends c>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends c> invoke() {
            return n.h((Iterable) DeserializedTypeParameterDescriptor.this.f38372c.f38445a.e.a(DeserializedTypeParameterDescriptor.this.getProto(), DeserializedTypeParameterDescriptor.this.f38372c.f38446b));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DeserializedTypeParameterDescriptor(kotlin.reflect.jvm.internal.impl.serialization.deserialization.k r11, kotlin.reflect.jvm.internal.impl.b.a.r r12, int r13) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "c"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r12
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.j r0 = r0.f38445a
            kotlin.reflect.jvm.internal.impl.f.n r0 = r0.f38441a
            r14 = r0
            r0 = r11
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = r0.f38447c
            r15 = r0
            r0 = r11
            kotlin.reflect.jvm.internal.impl.b.b.c r0 = r0.f38446b
            r1 = r12
            int r1 = r1.f37107c
            kotlin.reflect.jvm.internal.impl.c.e r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.u.b(r0, r1)
            r16 = r0
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.x r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.x.f38491a
            r17 = r0
            r0 = r12
            kotlin.reflect.jvm.internal.impl.b.a$r$b r0 = r0.e
            r17 = r0
            r0 = r17
            java.lang.String r1 = "proto.variance"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r10
            r1 = r14
            r2 = r15
            r3 = r16
            r4 = r17
            kotlin.reflect.jvm.internal.impl.types.Variance r4 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.x.a(r4)
            r5 = r12
            boolean r5 = r5.f37108d
            r6 = r13
            kotlin.reflect.jvm.internal.impl.descriptors.at r7 = kotlin.reflect.jvm.internal.impl.descriptors.at.f37401a
            kotlin.reflect.jvm.internal.impl.descriptors.aw$a r8 = kotlin.reflect.jvm.internal.impl.descriptors.aw.a.f37403a
            kotlin.reflect.jvm.internal.impl.descriptors.aw r8 = (kotlin.reflect.jvm.internal.impl.descriptors.aw) r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = r10
            r1 = r11
            r0.f38372c = r1
            r0 = r10
            r1 = r12
            r0.proto = r1
            r0 = r10
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b r1 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b
            r2 = r1
            r3 = r11
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.j r3 = r3.f38445a
            kotlin.reflect.jvm.internal.impl.f.n r3 = r3.f38441a
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor$a r4 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor$a
            r5 = r4
            r6 = r10
            r5.<init>()
            kotlin.jvm.functions.Function0 r4 = (kotlin.jvm.functions.Function0) r4
            r2.<init>(r3, r4)
            r0.annotations = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.k, kotlin.reflect.jvm.internal.impl.b.a$r, int):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.b, kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final b getAnnotations() {
        return this.annotations;
    }

    public final a.r getProto() {
        return this.proto;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final Void reportSupertypeLoopError(KotlinType type) {
        p.d(type, "type");
        throw new IllegalStateException(p.a("There should be no cycles for deserialized type parameters, but found for: ", (Object) this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List<KotlinType> resolveUpperBounds() {
        a.r rVar = this.proto;
        g typeTable = this.f38372c.f38448d;
        p.d(rVar, "<this>");
        p.d(typeTable, "typeTable");
        List<a.p> list = rVar.f;
        if (!(!list.isEmpty())) {
            list = null;
        }
        ArrayList arrayList = list;
        if (list == null) {
            List<Integer> upperBoundIdList = rVar.g;
            p.b(upperBoundIdList, "upperBoundIdList");
            List<Integer> list2 = upperBoundIdList;
            ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
            for (Integer it2 : list2) {
                p.b(it2, "it");
                arrayList2.add(typeTable.a(it2.intValue()));
            }
            arrayList = arrayList2;
        }
        if (arrayList.isEmpty()) {
            return n.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.d(this).i());
        }
        List<a.p> list3 = arrayList;
        aa aaVar = this.f38372c.g;
        ArrayList arrayList3 = new ArrayList(n.a((Iterable) list3, 10));
        for (a.p pVar : list3) {
            arrayList3.add(aaVar.a(pVar));
        }
        return arrayList3;
    }
}
