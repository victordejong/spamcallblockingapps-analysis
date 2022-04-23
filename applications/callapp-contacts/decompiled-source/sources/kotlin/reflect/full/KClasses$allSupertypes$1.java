package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.KType;
import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.jvm.internal.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.b;
import kotlin.reflect.jvm.internal.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u001d\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001c\n\u0002\b\u0002\u0010��\u001a$\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00040\u00012\u000e\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/KType;", "kotlin.jvm.PlatformType", "", "current", "getNeighbors"}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/KClasses$allSupertypes$1.class */
final class KClasses$allSupertypes$1<N> implements b.c<KType> {
    public static final KClasses$allSupertypes$1 INSTANCE = new KClasses$allSupertypes$1();

    KClasses$allSupertypes$1() {
    }

    public final Iterable<KType> getNeighbors(KType kType) {
        d a2 = kType.a();
        d dVar = a2;
        if (!(a2 instanceof c)) {
            dVar = null;
        }
        c cVar = (c) dVar;
        if (cVar != null) {
            List<KType> d2 = cVar.d();
            if (kType.b().isEmpty()) {
                return d2;
            }
            Objects.requireNonNull(kType, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            TypeSubstitutor create = TypeSubstitutor.create(((w) kType).f38615b);
            List<KType> list = d2;
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            for (KType kType2 : list) {
                Objects.requireNonNull(kType2, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
                KotlinType substitute = create.substitute(((w) kType2).f38615b, Variance.INVARIANT);
                if (substitute != null) {
                    p.b(substitute, "substitutor.substitute((…: $supertype ($current)\")");
                    arrayList.add(new w(substitute, null, 2, null));
                } else {
                    throw new ab("Type substitution failed: " + kType2 + " (" + kType + ')');
                }
            }
            return arrayList;
        }
        throw new ab("Supertype not a class: ".concat(String.valueOf(kType)));
    }
}
