package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateBySubscriptionIdCommand.class */
public class GetSimStateBySubscriptionIdCommand extends GetSimStateCommand {
    /* JADX INFO: Access modifiers changed from: package-private */
    public GetSimStateBySubscriptionIdCommand(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    protected final int a(SubscriptionInfo subscriptionInfo) {
        return subscriptionInfo.getSubscriptionId();
    }
}
