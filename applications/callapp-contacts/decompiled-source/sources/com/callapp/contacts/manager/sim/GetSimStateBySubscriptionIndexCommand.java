package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateBySubscriptionIndexCommand.class */
public class GetSimStateBySubscriptionIndexCommand extends GetSimStateCommand {
    public GetSimStateBySubscriptionIndexCommand(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    protected final int a(SubscriptionInfo subscriptionInfo) {
        return subscriptionInfo.getSimSlotIndex();
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    public final /* bridge */ /* synthetic */ int a(SubscriptionManager subscriptionManager, SubscriptionInfo subscriptionInfo) {
        return super.a(subscriptionManager, subscriptionInfo);
    }
}
