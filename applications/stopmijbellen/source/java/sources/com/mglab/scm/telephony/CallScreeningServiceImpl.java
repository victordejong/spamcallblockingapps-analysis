package com.mglab.scm.telephony;

import android.os.Bundle;
import android.telecom.Call;
import android.telecom.CallScreeningService;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/telephony/CallScreeningServiceImpl.class */
public class CallScreeningServiceImpl extends CallScreeningService {
    /* renamed from: a */
    public static String m3962a(Bundle bundle) {
        String next;
        if (bundle == null) {
            return null;
        }
        Iterator<String> it2 = bundle.keySet().iterator();
        String str = "Bundle{";
        while (true) {
            String str2 = str;
            if (!it2.hasNext()) {
                return C1676a.m4789h(str2, " }Bundle");
            }
            str = str2 + " " + it2.next() + " => " + bundle.get(next) + ";";
        }
    }

    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        CallScreeningService.CallResponse.Builder builder = new CallScreeningService.CallResponse.Builder();
        builder.setRejectCall(true);
        builder.setDisallowCall(true);
        builder.setSkipNotification(true);
        Bundle intentExtras = details.getIntentExtras();
        m3962a(details.getExtras());
        m3962a(intentExtras);
        if (ForegroundService.f7323l) {
            respondToCall(details, builder.build());
            ForegroundService.f7323l = false;
        }
        ForegroundService.f7322k = this;
        String str = ForegroundService.f7319h;
        details.toString();
        ForegroundService.f7322k.toString();
    }
}
