package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.aa;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefinerKt.class */
public final class KotlinTypeRefinerKt {
    private static final aa<Ref<KotlinTypeRefiner>> REFINER_CAPABILITY = new aa<>("KotlinTypeRefiner");

    public static final aa<Ref<KotlinTypeRefiner>> getREFINER_CAPABILITY() {
        return REFINER_CAPABILITY;
    }

    public static final List<KotlinType> refineTypes(KotlinTypeRefiner kotlinTypeRefiner, Iterable<? extends KotlinType> types) {
        p.d(kotlinTypeRefiner, "<this>");
        p.d(types, "types");
        ArrayList arrayList = new ArrayList(n.a(types, 10));
        for (KotlinType kotlinType : types) {
            arrayList.add(kotlinTypeRefiner.refineType(kotlinType));
        }
        return arrayList;
    }
}
