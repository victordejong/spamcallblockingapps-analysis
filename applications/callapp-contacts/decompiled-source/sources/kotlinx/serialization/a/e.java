package kotlinx.serialization.a;

import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ae;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.c;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.b.ad;
import kotlinx.serialization.b.an;
import kotlinx.serialization.b.be;
import kotlinx.serialization.b.bj;
import kotlinx.serialization.b.bk;
import kotlinx.serialization.b.i;
import kotlinx.serialization.b.l;
import kotlinx.serialization.b.o;
import kotlinx.serialization.b.r;
import kotlinx.serialization.b.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u009e\u0001\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0018\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0019\n��\n\u0002\u0010\u0013\n��\n\u0002\u0010\u0014\n��\n\u0002\u0010\u0015\n��\n\u0002\u0010\u0016\n��\n\u0002\u0010\u0017\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\u001aD\u0010��\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\b\b��\u0010\u0004*\u00020\u0005\"\n\b\u0001\u0010\u0003*\u0004\u0018\u0001H\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\u001a=\u0010��\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\n\b��\u0010\u0004\u0018\u0001*\u00020\u0005\"\f\b\u0001\u0010\u0003\u0018\u0001*\u0004\u0018\u0001H\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0086\b\u001a\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001\u001a\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0001\u001a\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001\u001a\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0001\u001a\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0001\u001a\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0001\u001a\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0001\u001a\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0001\u001a\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0001\u001a\u0015\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0001*\u00020\u001d¢\u0006\u0002\u0010\u001e\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020 \u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020!0\u0001*\u00020\"\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020#0\u0001*\u00020$\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020%0\u0001*\u00020&\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020'0\u0001*\u00020(\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020)0\u0001*\u00020*\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020+0\u0001*\u00020,\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020-0\u0001*\u00020.¨\u0006/"}, d2 = {"ArraySerializer", "Lkotlinx/serialization/KSerializer;", "", "E", "T", "", "kClass", "Lkotlin/reflect/KClass;", "elementSerializer", "BooleanArraySerializer", "", "ByteArraySerializer", "", "CharArraySerializer", "", "DoubleArraySerializer", "", "FloatArraySerializer", "", "IntArraySerializer", "", "LongArraySerializer", "", "ShortArraySerializer", "", "UnitSerializer", "", "serializer", "", "Lkotlin/Boolean$Companion;", "(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/KSerializer;", "", "Lkotlin/Byte$Companion;", "", "Lkotlin/Char$Companion;", "", "Lkotlin/Double$Companion;", "", "Lkotlin/Float$Companion;", "", "Lkotlin/Int$Companion;", "", "Lkotlin/Long$Companion;", "", "Lkotlin/Short$Companion;", "", "Lkotlin/String$Companion;", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/e.class */
public final class e {
    public static final KSerializer<Long> a(LongCompanionObject serializer) {
        p.c(serializer, "$this$serializer");
        return an.f38889a;
    }

    public static final KSerializer<Short> a(ae serializer) {
        p.c(serializer, "$this$serializer");
        return bj.f38926a;
    }

    public static final KSerializer<String> a(ag serializer) {
        p.c(serializer, "$this$serializer");
        return bk.f38928a;
    }

    public static final KSerializer<Boolean> a(c serializer) {
        p.c(serializer, "$this$serializer");
        return i.f38949a;
    }

    public static final KSerializer<Byte> a(d serializer) {
        p.c(serializer, "$this$serializer");
        return l.f38954a;
    }

    public static final KSerializer<Character> a(f serializer) {
        p.c(serializer, "$this$serializer");
        return o.f38959a;
    }

    public static final KSerializer<Double> a(j serializer) {
        p.c(serializer, "$this$serializer");
        return r.f38964a;
    }

    public static final KSerializer<Float> a(k serializer) {
        p.c(serializer, "$this$serializer");
        return v.f38974a;
    }

    public static final KSerializer<Integer> a(kotlin.jvm.internal.o serializer) {
        p.c(serializer, "$this$serializer");
        return ad.f38876a;
    }

    public static final <T, E extends T> KSerializer<E[]> a(kotlin.reflect.c<T> kClass, KSerializer<E> elementSerializer) {
        p.c(kClass, "kClass");
        p.c(elementSerializer, "elementSerializer");
        return new be(kClass, elementSerializer);
    }
}
