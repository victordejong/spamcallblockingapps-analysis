package com.sinch.metadata.collector;

import android.content.Context;
import android.os.BatteryManager;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Landroid/os/BatteryManager;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicBatteryLevelCollector$batteryManager$2.class */
public final class BasicBatteryLevelCollector$batteryManager$2 extends AbstractC18526r implements Function0<BatteryManager> {
    final /* synthetic */ BasicBatteryLevelCollector this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicBatteryLevelCollector$batteryManager$2(BasicBatteryLevelCollector basicBatteryLevelCollector) {
        super(0);
        this.this$0 = basicBatteryLevelCollector;
    }

    @Override // kotlin.jvm.functions.Function0
    public final BatteryManager invoke() {
        Context context;
        context = this.this$0.context;
        Object systemService = context.getSystemService("batterymanager");
        if (systemService != null) {
            return (BatteryManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.os.BatteryManager");
    }
}
