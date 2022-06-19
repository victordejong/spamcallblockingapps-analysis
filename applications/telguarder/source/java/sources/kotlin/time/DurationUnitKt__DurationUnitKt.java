package kotlin.time;

import com.pubmatic.sdk.openwrap.core.POBConstants;
import io.realm.com_telguarder_features_numberLookup_dRealmProxy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnitKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0010\u0010��\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0001¨\u0006\u0004"}, m400d2 = {"shortName", "", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/time/DurationUnitKt")
/* loaded from: classes-dex2jar.jar:kotlin/time/DurationUnitKt__DurationUnitKt.class */
class DurationUnitKt__DurationUnitKt extends DurationUnitKt__DurationUnitJvmKt {
    public static final String shortName(TimeUnit shortName) {
        String str;
        Intrinsics.checkNotNullParameter(shortName, "$this$shortName");
        switch (DurationUnitKt.WhenMappings.$EnumSwitchMapping$0[shortName.ordinal()]) {
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
                str = POBConstants.KEY_H;
                break;
            case 7:
                str = com_telguarder_features_numberLookup_dRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return str;
    }
}
