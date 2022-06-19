package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateBySubscriptionIndexCommand.class */
public class GetSimStateBySubscriptionIndexCommand extends GetSimStateCommand {
    public GetSimStateBySubscriptionIndexCommand(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    /* renamed from: a */
    protected final int mo28165a(SubscriptionInfo subscriptionInfo) {
        return subscriptionInfo.getSimSlotIndex();
    }

    @Override // com.callapp.contacts.manager.sim.GetSimStateCommand
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ int mo28164a(SubscriptionManager subscriptionManager, SubscriptionInfo subscriptionInfo) {
        return super.mo28164a(subscriptionManager, subscriptionInfo);
    }
}
