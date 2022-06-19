package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.C3905g;
import java.util.ArrayList;
import p078c.p084c.p085a.p086a.p088b.p093e.C1870a;
/* renamed from: com.android.billingclient.api.a0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a0.class */
public final class C3892a0 {
    /* renamed from: a */
    public static C3905g m23848a(Bundle bundle, String str, String str2) {
        C3905g c3905g = C3944y.f12398l;
        if (bundle == null) {
            C1870a.m28779b("BillingClient", String.format("%s got null owned items list", str2));
            return c3905g;
        }
        int m28777d = C1870a.m28777d(bundle, "BillingClient");
        String m28776e = C1870a.m28776e(bundle, "BillingClient");
        C3905g.C3906a m23778c = C3905g.m23778c();
        m23778c.m23773c(m28777d);
        m23778c.m23774b(m28776e);
        C3905g m23775a = m23778c.m23775a();
        if (m28777d != 0) {
            C1870a.m28779b("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(m28777d)));
            return m23775a;
        } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            C1870a.m28779b("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return c3905g;
        } else {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                C1870a.m28779b("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
                return c3905g;
            } else if (stringArrayList2 == null) {
                C1870a.m28779b("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
                return c3905g;
            } else if (stringArrayList3 != null) {
                return C3944y.f12402p;
            } else {
                C1870a.m28779b("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
                return c3905g;
            }
        }
    }
}
