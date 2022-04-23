package kotlinx.serialization.b;

import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.ae;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlin.t;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.a.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH��\u001a\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\bH\u0002\u001a$\u0010\u0010\u001a\n\u0012\u0004\u0012\u0002H\u0011\u0018\u00010\u0004\"\b\b��\u0010\u0011*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00110\u0002H��\"2\u0010��\u001a\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00040\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"BUILTIN_SERIALIZERS", "", "Lkotlin/reflect/KClass;", "", "Lkotlinx/serialization/KSerializer;", "BUILTIN_SERIALIZERS$annotations", "()V", "message", "", "PrimitiveDescriptorSafe", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "kind", "Lkotlinx/serialization/PrimitiveKind;", "checkName", "", "builtinSerializerOrNull", "T", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bd.class */
public final class bd {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<c<? extends Object>, KSerializer<? extends Object>> f38918a = ai.a(t.a(ac.b(String.class), e.a(ag.f36785a)), t.a(ac.b(Character.TYPE), e.a(f.f36799a)), t.a(ac.b(char[].class), n.f38958a), t.a(ac.b(Double.TYPE), e.a(j.f36805a)), t.a(ac.b(double[].class), q.f38963a), t.a(ac.b(Float.TYPE), e.a(k.f36806a)), t.a(ac.b(float[].class), u.f38973a), t.a(ac.b(Long.TYPE), e.a(LongCompanionObject.f36773a)), t.a(ac.b(long[].class), am.f38888a), t.a(ac.b(Integer.TYPE), e.a(o.f36807a)), t.a(ac.b(int[].class), ac.f38875a), t.a(ac.b(Short.TYPE), e.a(ae.f36783a)), t.a(ac.b(short[].class), bi.f38925a), t.a(ac.b(Byte.TYPE), e.a(d.f36797a)), t.a(ac.b(byte[].class), k.f38953a), t.a(ac.b(Boolean.TYPE), e.a(kotlin.jvm.internal.c.f36796a)), t.a(ac.b(boolean[].class), h.f38948a), t.a(ac.b(v.class), bo.f38941a));

    public static final <T> KSerializer<T> a(c<T> builtinSerializerOrNull) {
        p.c(builtinSerializerOrNull, "$this$builtinSerializerOrNull");
        return (KSerializer<T>) f38918a.get(builtinSerializerOrNull);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.serialization.SerialDescriptor a(java.lang.String r5, kotlinx.serialization.j r6) {
        /*
            r0 = r5
            java.lang.String r1 = "serialName"
            kotlin.jvm.internal.p.c(r0, r1)
            r0 = r6
            java.lang.String r1 = "kind"
            kotlin.jvm.internal.p.c(r0, r1)
            java.util.Map<kotlin.reflect.c<? extends java.lang.Object>, kotlinx.serialization.KSerializer<? extends java.lang.Object>> r0 = kotlinx.serialization.b.bd.f38918a
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x001a:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0096
            r0 = r7
            java.lang.Object r0 = r0.next()
            kotlin.reflect.c r0 = (kotlin.reflect.c) r0
            java.lang.String r0 = r0.an_()
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0039
            kotlin.jvm.internal.p.a()
        L_0x0039:
            r0 = r8
            java.lang.String r0 = kotlin.h.p.g(r0)
            r8 = r0
            r0 = r5
            java.lang.String r1 = "kotlin."
            r2 = r8
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            boolean r0 = kotlin.h.p.a(r0, r1)
            if (r0 != 0) goto L_0x005a
            r0 = r5
            r1 = r8
            boolean r0 = kotlin.h.p.a(r0, r1)
            if (r0 != 0) goto L_0x005a
            goto L_0x001a
        L_0x005a:
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
            java.lang.String r1 = kotlin.h.p.g(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = kotlin.h.p.b(r2)
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x0096:
            kotlinx.serialization.b.bc r0 = new kotlinx.serialization.b.bc
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r2, r3)
            kotlinx.serialization.SerialDescriptor r0 = (kotlinx.serialization.SerialDescriptor) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.b.bd.a(java.lang.String, kotlinx.serialization.j):kotlinx.serialization.SerialDescriptor");
    }
}
