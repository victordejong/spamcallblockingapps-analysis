package com.sinch.metadata.collector;

import android.content.Context;
import android.os.BatteryManager;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u0002H\u0016R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;", "Lcom/sinch/metadata/collector/MetadataCollector;", "", "Lcom/sinch/metadata/collector/BatteryLevelCollector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "batteryManager", "Landroid/os/BatteryManager;", "getBatteryManager", "()Landroid/os/BatteryManager;", "batteryManager$delegate", "Lkotlin/Lazy;", "collect", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicBatteryLevelCollector.class */
public final class BasicBatteryLevelCollector implements MetadataCollector<String> {
    private final Lazy batteryManager$delegate = C18399h.m3897a(new BasicBatteryLevelCollector$batteryManager$2(this));
    private final Context context;

    public BasicBatteryLevelCollector(Context context) {
        C18524p.m3841c(context, "context");
        this.context = context;
    }

    private final BatteryManager getBatteryManager() {
        return (BatteryManager) this.batteryManager$delegate.mo1102a();
    }

    @Override // com.sinch.metadata.collector.MetadataCollector
    public final String collect() {
        int intProperty = getBatteryManager().getIntProperty(4);
        StringBuilder sb = new StringBuilder();
        sb.append(intProperty);
        sb.append('%');
        return sb.toString();
    }
}
