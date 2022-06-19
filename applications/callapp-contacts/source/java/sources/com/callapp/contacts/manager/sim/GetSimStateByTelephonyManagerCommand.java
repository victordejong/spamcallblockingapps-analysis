package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand.class */
public class GetSimStateByTelephonyManagerCommand extends GetSimStateCommand {

    /* renamed from: b */
    private PhoneManager f26677b = PhoneManager.get();

    public GetSimStateByTelephonyManagerCommand(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    /* renamed from: a */
    protected final int mo28165a(SubscriptionInfo subscriptionInfo) {
        return StringUtils.m26040b(this.f26678a, "getSimStateForSlotIndex", "getSimStateForSlotIdx") ? subscriptionInfo.getSimSlotIndex() : subscriptionInfo.getSubscriptionId();
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    /* renamed from: a */
    public final int mo28164a(SubscriptionManager subscriptionManager, SubscriptionInfo subscriptionInfo) {
        if (subscriptionInfo != null) {
            return this.f26677b.getSimStateForSubscriptionId(subscriptionInfo.getSubscriptionId());
        }
        return 6;
    }
}
