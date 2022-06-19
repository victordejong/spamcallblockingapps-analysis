package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC18552d;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.C18620ab;
import kotlin.reflect.jvm.internal.C20094w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010\u001d\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001c\n\u0002\b\u0002\u0010��\u001a$\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00040\u00012\u000e\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/KType;", "kotlin.jvm.PlatformType", "", "current", "getNeighbors"}, m4297k = 3, m4296mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/KClasses$allSupertypes$1.class */
final class KClasses$allSupertypes$1<N> implements C20000b.AbstractC20004c<KType> {
    public static final KClasses$allSupertypes$1 INSTANCE = new KClasses$allSupertypes$1();

    KClasses$allSupertypes$1() {
    }

    public final Iterable<KType> getNeighbors(KType kType) {
        AbstractC18552d mo1126a = kType.mo1126a();
        AbstractC18552d abstractC18552d = mo1126a;
        if (!(mo1126a instanceof AbstractC18551c)) {
            abstractC18552d = null;
        }
        AbstractC18551c abstractC18551c = (AbstractC18551c) abstractC18552d;
        if (abstractC18551c != null) {
            List<KType> mo3721d = abstractC18551c.mo3721d();
            if (kType.mo1123b().isEmpty()) {
                return mo3721d;
            }
            Objects.requireNonNull(kType, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            TypeSubstitutor create = TypeSubstitutor.create(((C20094w) kType).f66488b);
            List<KType> list = mo3721d;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (KType kType2 : list) {
                Objects.requireNonNull(kType2, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
                KotlinType substitute = create.substitute(((C20094w) kType2).f66488b, Variance.INVARIANT);
                if (substitute == null) {
                    throw new C18620ab("Type substitution failed: " + kType2 + " (" + kType + ')');
                }
                C18524p.m3843b(substitute, "substitutor.substitute((…: $supertype ($current)\")");
                arrayList.add(new C20094w(substitute, null, 2, null));
            }
            return arrayList;
        }
        throw new C18620ab("Supertype not a class: ".concat(String.valueOf(kType)));
    }
}
