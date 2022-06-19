package com.sinch.metadata.collector.sim;

import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.sinch.metadata.collector.PermissionProtectedMetadataCollector;
import com.sinch.metadata.model.sim.OperatorInfo;
import com.sinch.metadata.model.sim.SimCardInfo;
import com.sinch.verification.utils.api.ApiLevelUtils;
import com.sinch.verification.utils.permission.Permission;
import java.util.ArrayList;
import java.util.List;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0003J\u0010\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m4298d2 = {"Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;", "Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;", "", "Lcom/sinch/metadata/model/sim/SimCardInfo;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "metadataDescriptiveName", "", "getMetadataDescriptiveName", "()Ljava/lang/String;", "subscriptionManager", "Landroid/telephony/SubscriptionManager;", "getSubscriptionManager", "()Landroid/telephony/SubscriptionManager;", "subscriptionManager$delegate", "Lkotlin/Lazy;", "collectOperatorSimCardData", "collectWithPermissionsGranted", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector.class */
public final class ReflectionSafeSimCardInfoCollector extends PermissionProtectedMetadataCollector<List<? extends SimCardInfo>> {
    private final String metadataDescriptiveName = "Sim Card information";
    private final Lazy subscriptionManager$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReflectionSafeSimCardInfoCollector(Context context) {
        super(context, Permission.READ_PHONE_STATE);
        C18524p.m3841c(context, "context");
        this.subscriptionManager$delegate = C18399h.m3897a(new ReflectionSafeSimCardInfoCollector$subscriptionManager$2(context));
    }

    private final List<SimCardInfo> collectOperatorSimCardData() {
        List<SubscriptionInfo> activeSubscriptionInfoList = getSubscriptionManager().getActiveSubscriptionInfoList();
        if (activeSubscriptionInfoList != null) {
            List<SubscriptionInfo> list = activeSubscriptionInfoList;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (SubscriptionInfo it2 : list) {
                C18524p.m3849a((Object) it2, "it");
                String countryIso = it2.getCountryIso();
                C18524p.m3849a((Object) countryIso, "it.countryIso");
                arrayList.add(new SimCardInfo(null, new OperatorInfo(countryIso, it2.getCarrierName().toString(), getSubscriptionManager().isNetworkRoaming(it2.getSubscriptionId()), ApiLevelUtils.INSTANCE.isApi29OrLater() ? it2.getMccString() : String.valueOf(it2.getMcc()), ApiLevelUtils.INSTANCE.isApi29OrLater() ? it2.getMncString() : String.valueOf(it2.getMnc()))));
            }
            return arrayList;
        }
        return C18297z.f63400a;
    }

    private final SubscriptionManager getSubscriptionManager() {
        return (SubscriptionManager) this.subscriptionManager$delegate.mo1102a();
    }

    @Override // com.sinch.metadata.collector.PermissionProtectedMetadataCollector
    public final List<? extends SimCardInfo> collectWithPermissionsGranted() {
        return collectOperatorSimCardData();
    }

    @Override // com.sinch.metadata.collector.PermissionProtectedMetadataCollector
    public final String getMetadataDescriptiveName() {
        return this.metadataDescriptiveName;
    }
}
