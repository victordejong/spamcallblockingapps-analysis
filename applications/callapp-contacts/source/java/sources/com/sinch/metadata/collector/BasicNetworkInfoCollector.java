package com.sinch.metadata.collector;

import android.content.Context;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.metadata.model.network.NetworkData;
import com.sinch.metadata.model.network.NetworkInfo;
import com.sinch.verification.utils.api.ApiLevelUtils;
import com.sinch.verification.utils.permission.Permission;
import com.sinch.verification.utils.permission.PermissionUtils;
import com.sinch.verification.utils.permission.PermissionUtilsKt;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0002R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\f\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0014\u001a\u00020\u0015*\u00020\b8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u0019*\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001a¨\u0006 "}, m4298d2 = {"Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;", "Lcom/sinch/metadata/collector/MetadataCollector;", "Lcom/sinch/metadata/model/network/NetworkInfo;", "Lcom/sinch/metadata/collector/NetworkInfoCollector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "connectivityManager", "Landroid/net/ConnectivityManager;", "getConnectivityManager", "()Landroid/net/ConnectivityManager;", "connectivityManager$delegate", "Lkotlin/Lazy;", "logger", "Lcom/sinch/logging/Logger;", "telephonyManager", "Landroid/telephony/TelephonyManager;", "getTelephonyManager", "()Landroid/telephony/TelephonyManager;", "telephonyManager$delegate", "activeNetworkType", "Lcom/sinch/metadata/model/network/NetworkType;", "getActiveNetworkType", "(Landroid/net/ConnectivityManager;)Lcom/sinch/metadata/model/network/NetworkType;", "isVoiceCapableSafe", "", "(Landroid/telephony/TelephonyManager;)Ljava/lang/Boolean;", "collect", "collectNetworkData", "Lcom/sinch/metadata/model/network/NetworkData;", "emitPermissionWarning", "", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicNetworkInfoCollector.class */
public final class BasicNetworkInfoCollector implements MetadataCollector<NetworkInfo> {
    private final Context context;
    private final Logger logger = LogKt.logger(this);
    private final Lazy telephonyManager$delegate = C18399h.m3897a(new BasicNetworkInfoCollector$telephonyManager$2(this));
    private final Lazy connectivityManager$delegate = C18399h.m3897a(new BasicNetworkInfoCollector$connectivityManager$2(this));

    public BasicNetworkInfoCollector(Context context) {
        C18524p.m3841c(context, "context");
        this.context = context;
    }

    public final NetworkData collectNetworkData() {
        return new NetworkData(getActiveNetworkType(getConnectivityManager()));
    }

    public final void emitPermissionWarning() {
        Logger.DefaultImpls.warn$default(this.logger, PermissionUtils.INSTANCE.permissionMetadataWarning(Permission.ACCESS_NETWORK_STATE, "NetworkData"), null, 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
        if (r0 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.sinch.metadata.model.network.NetworkType getActiveNetworkType(android.net.ConnectivityManager r4) {
        /*
            r3 = this;
            com.sinch.verification.utils.api.ApiLevelUtils r0 = com.sinch.verification.utils.api.ApiLevelUtils.INSTANCE
            boolean r0 = r0.isApi23OrLater()
            if (r0 == 0) goto L28
            r0 = r4
            r1 = r4
            android.net.Network r1 = r1.getActiveNetwork()
            android.net.NetworkCapabilities r0 = r0.getNetworkCapabilities(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L24
            com.sinch.metadata.model.network.NetworkType$Companion r0 = com.sinch.metadata.model.network.NetworkType.Companion
            r1 = r4
            com.sinch.metadata.model.network.NetworkType r0 = r0.basedOn(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            if (r0 != 0) goto L43
        L24:
            com.sinch.metadata.model.network.NetworkType r0 = com.sinch.metadata.model.network.NetworkType.NONE
            return r0
        L28:
            r0 = r4
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L3f
            com.sinch.metadata.model.network.NetworkType$Companion r0 = com.sinch.metadata.model.network.NetworkType.Companion
            r1 = r4
            com.sinch.metadata.model.network.NetworkType r0 = r0.basedOn(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            if (r0 != 0) goto L43
        L3f:
            com.sinch.metadata.model.network.NetworkType r0 = com.sinch.metadata.model.network.NetworkType.NONE
            r4 = r0
        L43:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sinch.metadata.collector.BasicNetworkInfoCollector.getActiveNetworkType(android.net.ConnectivityManager):com.sinch.metadata.model.network.NetworkType");
    }

    private final ConnectivityManager getConnectivityManager() {
        return (ConnectivityManager) this.connectivityManager$delegate.mo1102a();
    }

    private final TelephonyManager getTelephonyManager() {
        return (TelephonyManager) this.telephonyManager$delegate.mo1102a();
    }

    private final Boolean isVoiceCapableSafe(TelephonyManager telephonyManager) {
        if (ApiLevelUtils.INSTANCE.isApi22OrLater()) {
            return Boolean.valueOf(telephonyManager.isVoiceCapable());
        }
        return null;
    }

    @Override // com.sinch.metadata.collector.MetadataCollector
    public final NetworkInfo collect() {
        BasicNetworkInfoCollector basicNetworkInfoCollector = this;
        return new NetworkInfo(isVoiceCapableSafe(getTelephonyManager()), (NetworkData) PermissionUtilsKt.runIfPermissionGranted(this.context, Permission.ACCESS_NETWORK_STATE, new BasicNetworkInfoCollector$collect$networkData$1(basicNetworkInfoCollector), new BasicNetworkInfoCollector$collect$networkData$2(basicNetworkInfoCollector)));
    }
}
