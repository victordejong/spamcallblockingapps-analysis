package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19868aa;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19949k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor.class */
public final class DeserializedTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    private final C19902b annotations;

    /* renamed from: c */
    private final C19949k f66142c;
    private final C18702a.C18779r proto;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor$a.class */
    public static final class C19900a extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19900a() {
            super(0);
            DeserializedTypeParameterDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            return C18282n.m4118h((Iterable) DeserializedTypeParameterDescriptor.this.f66142c.f66269a.f66253e.mo1363a(DeserializedTypeParameterDescriptor.this.getProto(), DeserializedTypeParameterDescriptor.this.f66142c.f66270b));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DeserializedTypeParameterDescriptor(kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19949k r11, kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18779r r12, int r13) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "c"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r12
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.j r0 = r0.f66269a
            kotlin.reflect.jvm.internal.impl.f.n r0 = r0.f66249a
            r14 = r0
            r0 = r11
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = r0.f66271c
            r15 = r0
            r0 = r11
            kotlin.reflect.jvm.internal.impl.b.b.c r0 = r0.f66270b
            r1 = r12
            int r1 = r1.f64170c
            kotlin.reflect.jvm.internal.impl.c.e r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19970u.m1228b(r0, r1)
            r16 = r0
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.x r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19975x.f66329a
            r17 = r0
            r0 = r12
            kotlin.reflect.jvm.internal.impl.b.a$r$b r0 = r0.f64172e
            r17 = r0
            r0 = r17
            java.lang.String r1 = "proto.variance"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r10
            r1 = r14
            r2 = r15
            r3 = r16
            r4 = r17
            kotlin.reflect.jvm.internal.impl.types.Variance r4 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19975x.m1222a(r4)
            r5 = r12
            boolean r5 = r5.f64171d
            r6 = r13
            kotlin.reflect.jvm.internal.impl.descriptors.at r7 = kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at.f64759a
            kotlin.reflect.jvm.internal.impl.descriptors.aw$a r8 = kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw.C19032a.f64761a
            kotlin.reflect.jvm.internal.impl.descriptors.aw r8 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw) r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = r10
            r1 = r11
            r0.f66142c = r1
            r0 = r10
            r1 = r12
            r0.proto = r1
            r0 = r10
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b r1 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b
            r2 = r1
            r3 = r11
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.j r3 = r3.f66269a
            kotlin.reflect.jvm.internal.impl.f.n r3 = r3.f66249a
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

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18976b, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final C19902b getAnnotations() {
        return this.annotations;
    }

    public final C18702a.C18779r getProto() {
        return this.proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final Void reportSupertypeLoopError(KotlinType type) {
        C18524p.m3840d(type, "type");
        throw new IllegalStateException(C18524p.m3847a("There should be no cycles for deserialized type parameters, but found for: ", (Object) this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List<KotlinType> resolveUpperBounds() {
        C18702a.C18779r c18779r = this.proto;
        C18818g typeTable = this.f66142c.f66272d;
        C18524p.m3840d(c18779r, "<this>");
        C18524p.m3840d(typeTable, "typeTable");
        List<C18702a.C18768p> list = c18779r.f64173f;
        if (!(!list.isEmpty())) {
            list = null;
        }
        ArrayList arrayList = list;
        if (list == null) {
            List<Integer> upperBoundIdList = c18779r.f64174g;
            C18524p.m3843b(upperBoundIdList, "upperBoundIdList");
            List<Integer> list2 = upperBoundIdList;
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (Integer it2 : list2) {
                C18524p.m3843b(it2, "it");
                arrayList2.add(typeTable.m3043a(it2.intValue()));
            }
            arrayList = arrayList2;
        }
        if (arrayList.isEmpty()) {
            return C18282n.m4176a(C19756a.m1526d(this).m2794i());
        }
        List<C18702a.C18768p> list3 = arrayList;
        C19868aa c19868aa = this.f66142c.f66275g;
        ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list3, 10));
        for (C18702a.C18768p c18768p : list3) {
            arrayList3.add(c19868aa.m1380a(c18768p));
        }
        return arrayList3;
    }
}
