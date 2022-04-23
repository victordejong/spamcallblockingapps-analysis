package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand.class */
public class GetSimStateByTelephonyManagerCommand extends GetSimStateCommand {

    /* renamed from: b  reason: collision with root package name */
    private PhoneManager f15244b = PhoneManager.get();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetSimStateByTelephonyManagerCommand(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    protected final int a(SubscriptionInfo subscriptionInfo) {
        return StringUtils.b(this.f15245a, "getSimStateForSlotIndex", "getSimStateForSlotIdx") ? subscriptionInfo.getSimSlotIndex() : subscriptionInfo.getSubscriptionId();
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    public final int a(SubscriptionManager subscriptionManager, SubscriptionInfo subscriptionInfo) {
        if (subscriptionInfo != null) {
            return this.f15244b.getSimStateForSubscriptionId(subscriptionInfo.getSubscriptionId());
        }
        return 6;
    }
}
