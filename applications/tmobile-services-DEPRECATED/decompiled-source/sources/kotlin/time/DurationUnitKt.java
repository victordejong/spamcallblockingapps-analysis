package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlin/time/DurationUnitKt__DurationUnitJvmKt", "kotlin/time/DurationUnitKt__DurationUnitKt"}, d2 = {}, k = 4, mv = {1, 4, 0}, pn = "", xi = 1, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/time/DurationUnitKt.class */
public final class DurationUnitKt extends DurationUnitKt__DurationUnitKt {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/time/DurationUnitKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21065a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f21065a = iArr;
            iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            f21065a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            f21065a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            f21065a[TimeUnit.SECONDS.ordinal()] = 4;
            f21065a[TimeUnit.MINUTES.ordinal()] = 5;
            f21065a[TimeUnit.HOURS.ordinal()] = 6;
            f21065a[TimeUnit.DAYS.ordinal()] = 7;
        }
    }

    private DurationUnitKt() {
    }
}
