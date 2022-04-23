package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.h;
import kotlinx.serialization.j;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.t;
import kotlinx.serialization.u;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aP\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001\"\b\b\u0001\u0010\u0002*\u0002H\u0001\"\b\b\u0002\u0010\u0003*\u0002H\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00030\bH\u0080\b¢\u0006\u0002\u0010\n\u001a\u0014\u0010\u000b\u001a\u00020\f*\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H��¨\u0006\u000e"}, d2 = {"selectMapMode", "T", "R1", "R2", "Lkotlinx/serialization/json/Json;", "mapDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "ifMap", "Lkotlin/Function0;", "ifList", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "switchMode", "Lkotlinx/serialization/json/internal/WriteMode;", "desc", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/WriteModeKt.class */
public final class WriteModeKt {
    public static final <T, R1 extends T, R2 extends T> T selectMapMode(Json selectMapMode, SerialDescriptor mapDescriptor, Function0<? extends R1> ifMap, Function0<? extends R2> ifList) {
        p.c(selectMapMode, "$this$selectMapMode");
        p.c(mapDescriptor, "mapDescriptor");
        p.c(ifMap, "ifMap");
        p.c(ifList, "ifList");
        SerialDescriptor b2 = mapDescriptor.b(0);
        kotlinx.serialization.p b3 = b2.b();
        if ((b3 instanceof j) || p.a(b3, u.c.f39026b)) {
            return (T) ifMap.invoke();
        }
        if (selectMapMode.configuration.getAllowStructuredMapKeys$kotlinx_serialization_runtime()) {
            return (T) ifList.invoke();
        }
        throw JsonExceptionsKt.InvalidKeyKindException(b2);
    }

    public static final WriteMode switchMode(Json switchMode, SerialDescriptor desc) {
        p.c(switchMode, "$this$switchMode");
        p.c(desc, "desc");
        kotlinx.serialization.p b2 = desc.b();
        if (b2 instanceof h) {
            return WriteMode.POLY_OBJ;
        }
        if (p.a(b2, t.b.f39020a)) {
            return WriteMode.LIST;
        }
        if (!p.a(b2, t.c.f39021a)) {
            return WriteMode.OBJ;
        }
        SerialDescriptor b3 = desc.b(0);
        kotlinx.serialization.p b4 = b3.b();
        if ((b4 instanceof j) || p.a(b4, u.c.f39026b)) {
            return WriteMode.MAP;
        }
        if (switchMode.configuration.getAllowStructuredMapKeys$kotlinx_serialization_runtime()) {
            return WriteMode.LIST;
        }
        throw JsonExceptionsKt.InvalidKeyKindException(b3);
    }
}
