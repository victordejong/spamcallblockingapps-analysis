package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.C0633g;
import e.c.a.a.a.e.a;
import java.util.ArrayList;
/* renamed from: com.android.billingclient.api.a0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a0.class */
final class C0621a0 {
    /* renamed from: a */
    static C0633g m11529a(Bundle bundle, String str, String str2) {
        String format;
        C0633g c0633g = C0672y.f3277j;
        if (bundle == null) {
            format = String.format("%s got null owned items list", str2);
        } else {
            int d = a.d(bundle, "BillingClient");
            String e = a.e(bundle, "BillingClient");
            C0633g.C0634a m11487c = C0633g.m11487c();
            m11487c.m11482c(d);
            m11487c.m11483b(e);
            C0633g m11484a = m11487c.m11484a();
            if (d != 0) {
                a.b("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(d)));
                return m11484a;
            } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                format = String.format("Bundle returned from %s doesn't contain required fields.", str2);
            } else {
                ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                if (stringArrayList == null) {
                    format = String.format("Bundle returned from %s contains null SKUs list.", str2);
                } else if (stringArrayList2 == null) {
                    format = String.format("Bundle returned from %s contains null purchases list.", str2);
                } else if (stringArrayList3 != null) {
                    return C0672y.f3278k;
                } else {
                    format = String.format("Bundle returned from %s contains null signatures list.", str2);
                }
            }
        }
        a.b("BillingClient", format);
        return c0633g;
    }
}
