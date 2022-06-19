package com.callapp.contacts.manager.sim;

import android.os.Build;
import android.telephony.SubscriptionManager;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateCommandFactory.class */
public class GetSimStateCommandFactory {
    /* renamed from: a */
    public static GetSimStateCommand m28163a(SubscriptionManager subscriptionManager) {
        String str;
        if (Build.VERSION.SDK_INT >= 24) {
            return new GetSimStateByTelephonyManagerCommand(null);
        }
        int i = 0;
        while (true) {
            str = null;
            if (i >= 3) {
                break;
            }
            str = new String[]{"getSimStateForSlotIndex", "getSimStateForSlotIdx", "getSimStateForSubscriber"}[i];
            if (ReflectionUtils.m27420a((Object) subscriptionManager, str, Integer.TYPE)) {
                break;
            }
            i++;
        }
        return StringUtils.m26040b(str, "getSimStateForSlotIndex", "getSimStateForSlotIdx") ? new GetSimStateBySubscriptionIndexCommand(str) : new GetSimStateBySubscriptionIdCommand(str);
    }
}
