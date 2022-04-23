package kotlin.time;

import com.apptentive.android.sdk.Apptentive;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a/\u0010\u0006\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��2\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001¢\u0006\u0004\b\u0006\u0010\u0007*\u001e\b\u0007\u0010\f\"\u00020\u00022\u00020\u0002B\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\nB\u0002\b\u000b¨\u0006\r"}, d2 = {"", FirebaseAnalytics.Param.VALUE, "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "convertDurationUnit", "(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D", "Lkotlin/SinceKotlin;", Apptentive.Version.TYPE, "1.3", "Lkotlin/time/ExperimentalTime;", "DurationUnit", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/time/DurationUnitKt")
/* loaded from: classes2-dex2jar.jar:kotlin/time/DurationUnitKt__DurationUnitJvmKt.class */
class DurationUnitKt__DurationUnitJvmKt {
    @SinceKotlin
    @ExperimentalTime
    /* renamed from: a */
    public static final double m1393a(double d, @NotNull TimeUnit sourceUnit, @NotNull TimeUnit targetUnit) {
        Intrinsics.m1830e(sourceUnit, "sourceUnit");
        Intrinsics.m1830e(targetUnit, "targetUnit");
        long convert = targetUnit.convert(1L, sourceUnit);
        return convert > 0 ? d * convert : d / sourceUnit.convert(1L, targetUnit);
    }
}
