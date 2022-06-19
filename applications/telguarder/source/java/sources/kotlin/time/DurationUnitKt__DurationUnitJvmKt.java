package kotlin.time;

import com.facebook.internal.ServerProtocol;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��$\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a(\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0001*\u001e\b\u0007\u0010\u0007\"\u00020\u00042\u00020\u0004B\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\nB\u0002\b\u000b¨\u0006\f"}, m400d2 = {"convertDurationUnit", "", "value", "sourceUnit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "targetUnit", "DurationUnit", "Lkotlin/SinceKotlin;", ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "1.3", "Lkotlin/time/ExperimentalTime;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/time/DurationUnitKt")
/* loaded from: classes-dex2jar.jar:kotlin/time/DurationUnitKt__DurationUnitJvmKt.class */
class DurationUnitKt__DurationUnitJvmKt {
    public static /* synthetic */ void DurationUnit$annotations() {
    }

    public static final double convertDurationUnit(double d, TimeUnit sourceUnit, TimeUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        long convert = targetUnit.convert(1L, sourceUnit);
        return convert > 0 ? d * convert : d / sourceUnit.convert(1L, targetUnit);
    }
}
