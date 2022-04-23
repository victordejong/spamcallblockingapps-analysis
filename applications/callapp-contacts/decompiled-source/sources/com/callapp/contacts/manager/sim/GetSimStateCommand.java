package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/GetSimStateCommand.class */
public abstract class GetSimStateCommand {

    /* renamed from: a  reason: collision with root package name */
    protected final String f15245a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetSimStateCommand(String str) {
        this.f15245a = str;
    }

    protected abstract int a(SubscriptionInfo subscriptionInfo);

    public int a(SubscriptionManager subscriptionManager, SubscriptionInfo subscriptionInfo) {
        try {
            return ((Integer) ReflectionUtils.a(subscriptionManager, this.f15245a, new Class[]{Integer.TYPE}, Integer.valueOf(a(subscriptionInfo)))).intValue();
        } catch (NoSuchMethodException e) {
            if (Prefs.fI.get().booleanValue()) {
                return 5;
            }
            CLog.a(new SimManager.GeminiMethodNotFoundException("Unable to find method to get sim state. Subscription Manager Methods are: " + Arrays.toString(subscriptionManager.getClass().getMethods()).replace(",", "\r\n")));
            Prefs.fI.set(Boolean.TRUE);
            return 5;
        } catch (Exception e2) {
            return 5;
        }
    }
}
