package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\\\n\u0002\b\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a1\u0010��\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007\u001a1\u0010\b\u001a\u0002H\u0001\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000b\u001a(\u0010\f\u001a\n\u0012\u0004\u0012\u0002H\u000e\u0018\u00010\r\"\b\b��\u0010\u000e*\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0011H\u0002\u001a\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004H��\u001a\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019\u001a$\u0010\u001a\u001a\n\u0012\u0004\u0012\u0002H\u000e\u0018\u00010\r\"\b\b��\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u0004H\u0001\u001aM\u0010\u001b\u001a\n\u0012\u0004\u0012\u0002H\u000e\u0018\u00010\r\"\b\b��\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00042\"\u0010\u001c\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\r0\u001d\"\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rH\u0001¢\u0006\u0002\u0010\u001e\u001a \u0010\u001f\u001a\u00020\u0006\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0004\u001a+\u0010 \u001a\b\u0012\u0004\u0012\u0002H\u00010\u001d\"\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0004¢\u0006\u0002\u0010!\u001a\u0018\u0010\"\u001a\u00020\u0013*\u00020\u000f2\n\u0010#\u001a\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u001e\u0010$\u001a\u0004\u0018\u00010\u0006\"\b\b��\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u0004H��\u001aK\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u00010\u001d\"\b\b��\u0010\u000e*\u00020\u000f\"\n\b\u0001\u0010\u0001*\u0004\u0018\u0001H\u000e*\u0012\u0012\u0004\u0012\u0002H\u00010&j\b\u0012\u0004\u0012\u0002H\u0001`'2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0004H��¢\u0006\u0002\u0010)\u001a\n\u0010*\u001a\u00020\u0019*\u00020\u0006¨\u0006+"}, m4298d2 = {"enumFromName", "E", "", "enumClass", "Lkotlin/reflect/KClass;", "value", "", "(Lkotlin/reflect/KClass;Ljava/lang/String;)Ljava/lang/Enum;", "enumFromOrdinal", "ordinal", "", "(Lkotlin/reflect/KClass;I)Ljava/lang/Enum;", "findObjectSerializer", "Lkotlinx/serialization/KSerializer;", "T", "", "jClass", "Ljava/lang/Class;", "isReferenceArray", "", "type", "Lkotlin/reflect/KType;", "rootClass", "stringFromUtf8Bytes", "bytes", "", "compiledSerializerImpl", "constructSerializerForGivenTypeArgs", "args", "", "(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "enumClassName", "enumMembers", "(Lkotlin/reflect/KClass;)[Ljava/lang/Enum;", "isInstanceOf", "kclass", "simpleName", "toNativeArrayImpl", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "eClass", "(Ljava/util/ArrayList;Lkotlin/reflect/KClass;)[Ljava/lang/Object;", "toUtf8Bytes", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.q */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/q.class */
public final class C20459q {
    /* renamed from: a */
    public static final <T> KSerializer<T> m654a(AbstractC18551c<T> compiledSerializerImpl) {
        C18524p.m3841c(compiledSerializerImpl, "$this$compiledSerializerImpl");
        return m653a(compiledSerializerImpl, new KSerializer[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x026c, code lost:
        if (r12 == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x026f, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02ef, code lost:
        if (r12 == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006a, code lost:
        if (r12 == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006d, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ca, code lost:
        if (r14 == false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x029c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0124 A[EDGE_INSN: B:152:0x0124->B:45:0x0124 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011b A[LOOP:1: B:23:0x00a3->B:43:0x011b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0253  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> kotlinx.serialization.KSerializer<T> m653a(kotlin.reflect.AbstractC18551c<T> r5, kotlinx.serialization.KSerializer<java.lang.Object>... r6) {
        /*
            Method dump skipped, instructions count: 807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.C20459q.m653a(kotlin.reflect.c, kotlinx.serialization.KSerializer[]):kotlinx.serialization.KSerializer");
    }

    /* renamed from: a */
    public static final boolean m655a(Object isInstanceOf, AbstractC18551c<?> kclass) {
        C18524p.m3841c(isInstanceOf, "$this$isInstanceOf");
        C18524p.m3841c(kclass, "kclass");
        return C18458a.m3891c(kclass).isInstance(isInstanceOf);
    }

    /* renamed from: b */
    public static final <T> String m652b(AbstractC18551c<T> simpleName) {
        C18524p.m3841c(simpleName, "$this$simpleName");
        return C18458a.m3893a(simpleName).getSimpleName();
    }
}
