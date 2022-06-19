package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonExceptionsKt;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aP\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001\"\b\b\u0001\u0010\u0002*\u0002H\u0001\"\b\b\u0002\u0010\u0003*\u0002H\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00030\bH\u0080\b¢\u0006\u0002\u0010\n\u001a\u0014\u0010\u000b\u001a\u00020\f*\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H��¨\u0006\u000e"}, m4298d2 = {"selectMapMode", "T", "R1", "R2", "Lkotlinx/serialization/json/Json;", "mapDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "ifMap", "Lkotlin/Function0;", "ifList", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "switchMode", "Lkotlinx/serialization/json/internal/WriteMode;", "desc", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/WriteModeKt.class */
public final class WriteModeKt {
    /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v21, types: [T, java.lang.Object] */
    public static final <T, R1 extends T, R2 extends T> T selectMapMode(Json selectMapMode, SerialDescriptor mapDescriptor, Function0<? extends R1> ifMap, Function0<? extends R2> ifList) {
        C18524p.m3841c(selectMapMode, "$this$selectMapMode");
        C18524p.m3841c(mapDescriptor, "mapDescriptor");
        C18524p.m3841c(ifMap, "ifMap");
        C18524p.m3841c(ifList, "ifList");
        SerialDescriptor mo661b = mapDescriptor.mo661b(0);
        AbstractC20458p mo662b = mo661b.mo662b();
        if ((mo662b instanceof AbstractC20424j) || C18524p.m3850a(mo662b, AbstractC20467u.C20470c.f66975b)) {
            return ifMap.invoke();
        }
        if (!selectMapMode.configuration.getAllowStructuredMapKeys$kotlinx_serialization_runtime()) {
            throw JsonExceptionsKt.InvalidKeyKindException(mo661b);
        }
        return ifList.invoke();
    }

    public static final WriteMode switchMode(Json switchMode, SerialDescriptor desc) {
        C18524p.m3841c(switchMode, "$this$switchMode");
        C18524p.m3841c(desc, "desc");
        AbstractC20458p mo662b = desc.mo662b();
        if (mo662b instanceof AbstractC20419h) {
            return WriteMode.POLY_OBJ;
        }
        if (C18524p.m3850a(mo662b, AbstractC20462t.C20464b.f66969a)) {
            return WriteMode.LIST;
        }
        if (!C18524p.m3850a(mo662b, AbstractC20462t.C20465c.f66970a)) {
            return WriteMode.OBJ;
        }
        SerialDescriptor mo661b = desc.mo661b(0);
        AbstractC20458p mo662b2 = mo661b.mo662b();
        if ((mo662b2 instanceof AbstractC20424j) || C18524p.m3850a(mo662b2, AbstractC20467u.C20470c.f66975b)) {
            return WriteMode.MAP;
        }
        if (!switchMode.configuration.getAllowStructuredMapKeys$kotlinx_serialization_runtime()) {
            throw JsonExceptionsKt.InvalidKeyKindException(mo661b);
        }
        return WriteMode.LIST;
    }
}
