package kotlinx.serialization.p571a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18498ae;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18509c;
import kotlin.jvm.internal.C18510d;
import kotlin.jvm.internal.C18513f;
import kotlin.jvm.internal.C18518j;
import kotlin.jvm.internal.C18519k;
import kotlin.jvm.internal.C18523o;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.p572b.C20339ad;
import kotlinx.serialization.p572b.C20349an;
import kotlinx.serialization.p572b.C20371be;
import kotlinx.serialization.p572b.C20376bj;
import kotlinx.serialization.p572b.C20377bk;
import kotlinx.serialization.p572b.C20394i;
import kotlinx.serialization.p572b.C20397l;
import kotlinx.serialization.p572b.C20400o;
import kotlinx.serialization.p572b.C20403r;
import kotlinx.serialization.p572b.C20408v;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u009e\u0001\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0018\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0019\n��\n\u0002\u0010\u0013\n��\n\u0002\u0010\u0014\n��\n\u0002\u0010\u0015\n��\n\u0002\u0010\u0016\n��\n\u0002\u0010\u0017\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\u001aD\u0010��\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\b\b��\u0010\u0004*\u00020\u0005\"\n\b\u0001\u0010\u0003*\u0004\u0018\u0001H\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\u001a=\u0010��\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\n\b��\u0010\u0004\u0018\u0001*\u00020\u0005\"\f\b\u0001\u0010\u0003\u0018\u0001*\u0004\u0018\u0001H\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001H\u0086\b\u001a\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001\u001a\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0001\u001a\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001\u001a\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0001\u001a\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0001\u001a\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0001\u001a\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0001\u001a\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0001\u001a\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0001\u001a\u0015\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0001*\u00020\u001d¢\u0006\u0002\u0010\u001e\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0001*\u00020 \u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020!0\u0001*\u00020\"\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020#0\u0001*\u00020$\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020%0\u0001*\u00020&\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020'0\u0001*\u00020(\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020)0\u0001*\u00020*\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020+0\u0001*\u00020,\u001a\u0010\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020-0\u0001*\u00020.¨\u0006/"}, m4298d2 = {"ArraySerializer", "Lkotlinx/serialization/KSerializer;", "", "E", "T", "", "kClass", "Lkotlin/reflect/KClass;", "elementSerializer", "BooleanArraySerializer", "", "ByteArraySerializer", "", "CharArraySerializer", "", "DoubleArraySerializer", "", "FloatArraySerializer", "", "IntArraySerializer", "", "LongArraySerializer", "", "ShortArraySerializer", "", "UnitSerializer", "", "serializer", "", "Lkotlin/Boolean$Companion;", "(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/KSerializer;", "", "Lkotlin/Byte$Companion;", "", "Lkotlin/Char$Companion;", "", "Lkotlin/Double$Companion;", "", "Lkotlin/Float$Companion;", "", "Lkotlin/Int$Companion;", "", "Lkotlin/Long$Companion;", "", "Lkotlin/Short$Companion;", "", "Lkotlin/String$Companion;", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.a.e */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/e.class */
public final class C20333e {
    /* renamed from: a */
    public static final KSerializer<Long> m740a(LongCompanionObject serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20349an.f66823a;
    }

    /* renamed from: a */
    public static final KSerializer<Short> m739a(C18498ae serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20376bj.f66864a;
    }

    /* renamed from: a */
    public static final KSerializer<String> m738a(C18500ag serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20377bk.f66866a;
    }

    /* renamed from: a */
    public static final KSerializer<Boolean> m737a(C18509c serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20394i.f66887a;
    }

    /* renamed from: a */
    public static final KSerializer<Byte> m736a(C18510d serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20397l.f66892a;
    }

    /* renamed from: a */
    public static final KSerializer<Character> m735a(C18513f serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20400o.f66897a;
    }

    /* renamed from: a */
    public static final KSerializer<Double> m734a(C18518j serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20403r.f66902a;
    }

    /* renamed from: a */
    public static final KSerializer<Float> m733a(C18519k serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20408v.f66912a;
    }

    /* renamed from: a */
    public static final KSerializer<Integer> m732a(C18523o serializer) {
        C18524p.m3841c(serializer, "$this$serializer");
        return C20339ad.f66810a;
    }

    /* renamed from: a */
    public static final <T, E extends T> KSerializer<E[]> m731a(AbstractC18551c<T> kClass, KSerializer<E> elementSerializer) {
        C18524p.m3841c(kClass, "kClass");
        C18524p.m3841c(elementSerializer, "elementSerializer");
        return new C20371be(kClass, elementSerializer);
    }
}
