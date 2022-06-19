package com.callapp.contacts.inCallService;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/inCallService/InCallScreenStateReceiver.class */
public class InCallScreenStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public List<Object> f25207a = new ArrayList();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().isEmpty() || !CollectionUtils.m26068b(this.f25207a)) {
            return;
        }
        Iterator<Object> it2 = this.f25207a.iterator();
        while (it2.hasNext()) {
            it2.next();
            intent.getAction();
        }
    }
}
