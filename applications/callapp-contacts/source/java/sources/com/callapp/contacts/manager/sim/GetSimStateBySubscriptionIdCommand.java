package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateBySubscriptionIdCommand.class */
public class GetSimStateBySubscriptionIdCommand extends GetSimStateCommand {
    public GetSimStateBySubscriptionIdCommand(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    /* renamed from: a */
    protected final int mo28165a(SubscriptionInfo subscriptionInfo) {
        return subscriptionInfo.getSubscriptionId();
    }
}
