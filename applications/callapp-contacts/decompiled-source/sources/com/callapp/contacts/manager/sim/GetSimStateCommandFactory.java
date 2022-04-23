package com.callapp.contacts.manager.sim;

import android.os.Build;
import android.telephony.SubscriptionManager;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.util.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateCommandFactory.class */
public class GetSimStateCommandFactory {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static GetSimStateCommand a(SubscriptionManager subscriptionManager) {
        String str = null;
        if (Build.VERSION.SDK_INT >= 24) {
            return new GetSimStateByTelephonyManagerCommand(null);
        }
        for (int i = 0; i < 3; i++) {
            str = new String[]{"getSimStateForSlotIndex", "getSimStateForSlotIdx", "getSimStateForSubscriber"}[i];
            if (ReflectionUtils.a((Object) subscriptionManager, str, Integer.TYPE)) {
                break;
            }
        }
        return StringUtils.b(str, "getSimStateForSlotIndex", "getSimStateForSlotIdx") ? new GetSimStateBySubscriptionIndexCommand(str) : new GetSimStateBySubscriptionIdCommand(str);
    }
}
