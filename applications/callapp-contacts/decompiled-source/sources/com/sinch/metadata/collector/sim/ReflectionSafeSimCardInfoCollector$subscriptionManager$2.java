package com.sinch.metadata.collector.sim;

import android.content.Context;
import android.telephony.SubscriptionManager;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/telephony/SubscriptionManager;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector$subscriptionManager$2.class */
final class ReflectionSafeSimCardInfoCollector$subscriptionManager$2 extends r implements Function0<SubscriptionManager> {
    final /* synthetic */ Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReflectionSafeSimCardInfoCollector$subscriptionManager$2(Context context) {
        super(0);
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SubscriptionManager invoke() {
        Object systemService = this.$context.getSystemService("telephony_subscription_service");
        if (systemService != null) {
            return (SubscriptionManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.telephony.SubscriptionManager");
    }
}
