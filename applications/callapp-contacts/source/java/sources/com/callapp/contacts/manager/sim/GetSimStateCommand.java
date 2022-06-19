package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateCommand.class */
public abstract class GetSimStateCommand {

    /* renamed from: a */
    protected final String f26678a;

    public GetSimStateCommand(String str) {
        this.f26678a = str;
    }

    /* renamed from: a */
    protected abstract int mo28165a(SubscriptionInfo subscriptionInfo);

    /* renamed from: a */
    public int mo28164a(SubscriptionManager subscriptionManager, SubscriptionInfo subscriptionInfo) {
        try {
            return ((Integer) ReflectionUtils.m27419a(subscriptionManager, this.f26678a, new Class[]{Integer.TYPE}, Integer.valueOf(mo28165a(subscriptionInfo)))).intValue();
        } catch (NoSuchMethodException e) {
            if (Prefs.f26497fI.get().booleanValue()) {
                return 5;
            }
            CLog.m27599a(new SimManager.GeminiMethodNotFoundException("Unable to find method to get sim state. Subscription Manager Methods are: " + Arrays.toString(subscriptionManager.getClass().getMethods()).replace(",", "\r\n")));
            Prefs.f26497fI.set(Boolean.TRUE);
            return 5;
        } catch (Exception e2) {
            return 5;
        }
    }
}
