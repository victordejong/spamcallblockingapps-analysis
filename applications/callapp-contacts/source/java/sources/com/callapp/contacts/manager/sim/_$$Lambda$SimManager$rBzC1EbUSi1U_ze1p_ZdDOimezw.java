package com.callapp.contacts.manager.sim;

import android.telephony.SubscriptionInfo;
import com.callapp.contacts.manager.sim.-$;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/_$$Lambda$SimManager$rBzC1EbUSi1U_ze1p_ZdDOimezw.class */
public final /* synthetic */ class _$$Lambda$SimManager$rBzC1EbUSi1U_ze1p_ZdDOimezw implements Comparator {
    public static final /* synthetic */ -$.Lambda.SimManager.rBzC1EbUSi1U_ze1p-ZdDOimezw INSTANCE = new _$$Lambda$SimManager$rBzC1EbUSi1U_ze1p_ZdDOimezw();

    private /* synthetic */ _$$Lambda$SimManager$rBzC1EbUSi1U_ze1p_ZdDOimezw() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int m28153a;
        m28153a = SimManager.m28153a((SubscriptionInfo) obj, (SubscriptionInfo) obj2);
        return m28153a;
    }
}
