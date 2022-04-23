package com.sinch.metadata.collector.sim;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.sinch.metadata.collector.MetadataCollector;
import com.sinch.metadata.model.sim.SimState;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;", "Lcom/sinch/metadata/collector/MetadataCollector;", "Lcom/sinch/metadata/model/sim/SimState;", "Lcom/sinch/metadata/collector/SimsStateCollector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "telephonyManager", "Landroid/telephony/TelephonyManager;", "getTelephonyManager", "()Landroid/telephony/TelephonyManager;", "telephonyManager$delegate", "Lkotlin/Lazy;", "collect", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/sim/BasicSimStateCollector.class */
public final class BasicSimStateCollector implements MetadataCollector<SimState> {
    private final Context context;
    private final Lazy telephonyManager$delegate = h.a(new BasicSimStateCollector$telephonyManager$2(this));

    public BasicSimStateCollector(Context context) {
        p.c(context, "context");
        this.context = context;
    }

    private final TelephonyManager getTelephonyManager() {
        return (TelephonyManager) this.telephonyManager$delegate.a();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sinch.metadata.collector.MetadataCollector
    public final SimState collect() {
        return SimState.Companion.basedOn(getTelephonyManager().getSimState());
    }
}
