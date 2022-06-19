package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"kotlin/time/DurationUnitKt__DurationUnitJvmKt", "kotlin/time/DurationUnitKt__DurationUnitKt"}, m399k = 4, m398mv = {1, 4, 0}, m396xi = 1)
/* loaded from: classes-dex2jar.jar:kotlin/time/DurationUnitKt.class */
public final class DurationUnitKt extends DurationUnitKt__DurationUnitKt {

    @Metadata(m402bv = {1, 0, 3}, m399k = 3, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/time/DurationUnitKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            iArr[TimeUnit.MICROSECONDS.ordinal()] = 2;
            iArr[TimeUnit.MILLISECONDS.ordinal()] = 3;
            iArr[TimeUnit.SECONDS.ordinal()] = 4;
            iArr[TimeUnit.MINUTES.ordinal()] = 5;
            iArr[TimeUnit.HOURS.ordinal()] = 6;
            iArr[TimeUnit.DAYS.ordinal()] = 7;
        }
    }

    private DurationUnitKt() {
    }
}
