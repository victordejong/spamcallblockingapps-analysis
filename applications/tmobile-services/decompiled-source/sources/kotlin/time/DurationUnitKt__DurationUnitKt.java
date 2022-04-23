package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnitKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u0002*\u00060��j\u0002`\u0001H\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "", "shortName", "(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/time/DurationUnitKt")
/* loaded from: classes2-dex2jar.jar:kotlin/time/DurationUnitKt__DurationUnitKt.class */
class DurationUnitKt__DurationUnitKt extends DurationUnitKt__DurationUnitJvmKt {
    @SinceKotlin
    @ExperimentalTime
    @NotNull
    /* renamed from: b */
    public static final String m1392b(@NotNull TimeUnit shortName) {
        String str;
        Intrinsics.m1830e(shortName, "$this$shortName");
        switch (DurationUnitKt.WhenMappings.f21065a[shortName.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "us";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "m";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return str;
    }
}
