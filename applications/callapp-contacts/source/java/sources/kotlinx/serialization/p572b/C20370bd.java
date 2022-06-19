package kotlinx.serialization.p572b;

import java.util.Map;
import kotlin.C20126t;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
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
import kotlin.p518a.C18247ai;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.p571a.C20333e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH��\u001a\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\bH\u0002\u001a$\u0010\u0010\u001a\n\u0012\u0004\u0012\u0002H\u0011\u0018\u00010\u0004\"\b\b��\u0010\u0011*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00110\u0002H��\"2\u0010��\u001a\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00040\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"BUILTIN_SERIALIZERS", "", "Lkotlin/reflect/KClass;", "", "Lkotlinx/serialization/KSerializer;", "BUILTIN_SERIALIZERS$annotations", "()V", "message", "", "PrimitiveDescriptorSafe", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "kind", "Lkotlinx/serialization/PrimitiveKind;", "checkName", "", "builtinSerializerOrNull", "T", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.bd */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bd.class */
public final class C20370bd {

    /* renamed from: a */
    private static final Map<AbstractC18551c<? extends Object>, KSerializer<? extends Object>> f66856a = C18247ai.m4251a(C20126t.m1103a(C18496ac.m3882b(String.class), C20333e.m738a(C18500ag.f63594a)), C20126t.m1103a(C18496ac.m3882b(Character.TYPE), C20333e.m735a(C18513f.f63610a)), C20126t.m1103a(C18496ac.m3882b(char[].class), C20399n.f66896a), C20126t.m1103a(C18496ac.m3882b(Double.TYPE), C20333e.m734a(C18518j.f63619a)), C20126t.m1103a(C18496ac.m3882b(double[].class), C20402q.f66901a), C20126t.m1103a(C18496ac.m3882b(Float.TYPE), C20333e.m733a(C18519k.f63620a)), C20126t.m1103a(C18496ac.m3882b(float[].class), C20407u.f66911a), C20126t.m1103a(C18496ac.m3882b(Long.TYPE), C20333e.m740a(LongCompanionObject.f63582a)), C20126t.m1103a(C18496ac.m3882b(long[].class), C20348am.f66822a), C20126t.m1103a(C18496ac.m3882b(Integer.TYPE), C20333e.m732a(C18523o.f63621a)), C20126t.m1103a(C18496ac.m3882b(int[].class), C20338ac.f66809a), C20126t.m1103a(C18496ac.m3882b(Short.TYPE), C20333e.m739a(C18498ae.f63592a)), C20126t.m1103a(C18496ac.m3882b(short[].class), C20375bi.f66863a), C20126t.m1103a(C18496ac.m3882b(Byte.TYPE), C20333e.m736a(C18510d.f63608a)), C20126t.m1103a(C18496ac.m3882b(byte[].class), C20396k.f66891a), C20126t.m1103a(C18496ac.m3882b(Boolean.TYPE), C20333e.m737a(C18509c.f63607a)), C20126t.m1103a(C18496ac.m3882b(boolean[].class), C20393h.f66886a), C20126t.m1103a(C18496ac.m3882b(C20128v.class), C20385bo.f66879a));

    /* renamed from: a */
    public static final <T> KSerializer<T> m717a(AbstractC18551c<T> builtinSerializerOrNull) {
        C18524p.m3841c(builtinSerializerOrNull, "$this$builtinSerializerOrNull");
        return (KSerializer<T>) f66856a.get(builtinSerializerOrNull);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0023  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.serialization.SerialDescriptor m718a(java.lang.String r5, kotlinx.serialization.AbstractC20424j r6) {
        /*
            r0 = r5
            java.lang.String r1 = "serialName"
            kotlin.jvm.internal.C18524p.m3841c(r0, r1)
            r0 = r6
            java.lang.String r1 = "kind"
            kotlin.jvm.internal.C18524p.m3841c(r0, r1)
            java.util.Map<kotlin.reflect.c<? extends java.lang.Object>, kotlinx.serialization.KSerializer<? extends java.lang.Object>> r0 = kotlinx.serialization.p572b.C20370bd.f66856a
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L1a:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L96
            r0 = r7
            java.lang.Object r0 = r0.next()
            kotlin.reflect.c r0 = (kotlin.reflect.AbstractC18551c) r0
            java.lang.String r0 = r0.an_()
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L39
            kotlin.jvm.internal.C18524p.m3855a()
        L39:
            r0 = r8
            java.lang.String r0 = kotlin.p532h.C18425p.m3953g(r0)
            r8 = r0
            r0 = r5
            java.lang.String r1 = "kotlin."
            r2 = r8
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            boolean r0 = kotlin.p532h.C18425p.m3961a(r0, r1)
            if (r0 != 0) goto L5a
            r0 = r5
            r1 = r8
            boolean r0 = kotlin.p532h.C18425p.m3961a(r0, r1)
            if (r0 != 0) goto L5a
            goto L1a
        L5a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name "
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " there already exist "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r8
            java.lang.String r1 = kotlin.p532h.C18425p.m3953g(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = kotlin.p532h.C18425p.m3976b(r2)
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L96:
            kotlinx.serialization.b.bc r0 = new kotlinx.serialization.b.bc
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r2, r3)
            kotlinx.serialization.SerialDescriptor r0 = (kotlinx.serialization.SerialDescriptor) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.p572b.C20370bd.m718a(java.lang.String, kotlinx.serialization.j):kotlinx.serialization.SerialDescriptor");
    }
}
