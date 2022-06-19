package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.C18998aa;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefinerKt.class */
public final class KotlinTypeRefinerKt {
    private static final C18998aa<Ref<KotlinTypeRefiner>> REFINER_CAPABILITY = new C18998aa<>("KotlinTypeRefiner");

    public static final C18998aa<Ref<KotlinTypeRefiner>> getREFINER_CAPABILITY() {
        return REFINER_CAPABILITY;
    }

    public static final List<KotlinType> refineTypes(KotlinTypeRefiner kotlinTypeRefiner, Iterable<? extends KotlinType> types) {
        C18524p.m3840d(kotlinTypeRefiner, "<this>");
        C18524p.m3840d(types, "types");
        ArrayList arrayList = new ArrayList(C18282n.m4163a(types, 10));
        for (KotlinType kotlinType : types) {
            arrayList.add(kotlinTypeRefiner.refineType(kotlinType));
        }
        return arrayList;
    }
}
