package com.android.billingclient.api;

import android.os.Bundle;
import android.text.TextUtils;
import com.android.billingclient.api.Purchase;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzu;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONException;
import p122i2.AbstractC3071g;
import p122i2.C3067c;
import p122i2.C3078n;
/* renamed from: com.android.billingclient.api.e */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/e.class */
public final class CallableC0873e implements Callable {

    /* renamed from: a */
    public final /* synthetic */ String f3237a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC3071g f3238b;

    /* renamed from: c */
    public final /* synthetic */ C0870b f3239c;

    public CallableC0873e(C0870b c0870b, String str, AbstractC3071g abstractC3071g) {
        this.f3239c = c0870b;
        this.f3237a = str;
        this.f3238b = abstractC3071g;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        Purchase.C0868a c0868a;
        C0870b c0870b = this.f3239c;
        String str = this.f3237a;
        String valueOf = String.valueOf(str);
        zzb.zzm("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle zzg = zzb.zzg(c0870b.f3220k, c0870b.f3226q, c0870b.f3211b);
        String str2 = null;
        while (true) {
            try {
                Bundle zzj = c0870b.f3220k ? c0870b.f3215f.zzj(9, c0870b.f3214e.getPackageName(), str, str2, zzg) : c0870b.f3215f.zzi(3, c0870b.f3214e.getPackageName(), str, str2);
                C3067c c3067c = C3078n.f10426j;
                if (zzj == null) {
                    zzb.zzn("BillingClient", String.format("%s got null owned items list", "getPurchase()"));
                } else {
                    int zzb = zzb.zzb(zzj, "BillingClient");
                    String zzj2 = zzb.zzj(zzj, "BillingClient");
                    C3067c c3067c2 = new C3067c();
                    c3067c2.f10403a = zzb;
                    c3067c2.f10404b = zzj2;
                    if (zzb != 0) {
                        zzb.zzn("BillingClient", String.format("%s failed. Response code: %s", "getPurchase()", Integer.valueOf(zzb)));
                        c3067c = c3067c2;
                    } else if (!zzj.containsKey("INAPP_PURCHASE_ITEM_LIST") || !zzj.containsKey("INAPP_PURCHASE_DATA_LIST") || !zzj.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                        zzb.zzn("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", "getPurchase()"));
                    } else {
                        ArrayList<String> stringArrayList = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                        ArrayList<String> stringArrayList2 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        ArrayList<String> stringArrayList3 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                        if (stringArrayList == null) {
                            zzb.zzn("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", "getPurchase()"));
                        } else if (stringArrayList2 == null) {
                            zzb.zzn("BillingClient", String.format("Bundle returned from %s contains null purchases list.", "getPurchase()"));
                        } else if (stringArrayList3 == null) {
                            zzb.zzn("BillingClient", String.format("Bundle returned from %s contains null signatures list.", "getPurchase()"));
                        } else {
                            c3067c = C3078n.f10427k;
                        }
                    }
                }
                if (c3067c != C3078n.f10427k) {
                    c0868a = new Purchase.C0868a(c3067c, null);
                    break;
                }
                ArrayList<String> stringArrayList4 = zzj.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList5 = zzj.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList6 = zzj.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i = 0; i < stringArrayList5.size(); i++) {
                    String str3 = stringArrayList5.get(i);
                    String str4 = stringArrayList6.get(i);
                    String valueOf2 = String.valueOf(stringArrayList4.get(i));
                    zzb.zzm("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        if (TextUtils.isEmpty(purchase.m7233b())) {
                            zzb.zzn("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e) {
                        zzb.zzo("BillingClient", "Got an exception trying to decode the purchase!", e);
                        c0868a = new Purchase.C0868a(C3078n.f10426j, null);
                    }
                }
                String string = zzj.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf3 = String.valueOf(string);
                zzb.zzm("BillingClient", valueOf3.length() != 0 ? "Continuation token: ".concat(valueOf3) : new String("Continuation token: "));
                str2 = string;
                if (TextUtils.isEmpty(string)) {
                    c0868a = new Purchase.C0868a(C3078n.f10427k, arrayList);
                    break;
                }
            } catch (Exception e2) {
                zzb.zzo("BillingClient", "Got exception trying to get purchasesm try to reconnect", e2);
                c0868a = new Purchase.C0868a(C3078n.f10428l, null);
            }
        }
        List<Purchase> list = c0868a.f3206a;
        if (list != null) {
            this.f3238b.mo155b(c0868a.f3207b, list);
            return null;
        }
        this.f3238b.mo155b(c0868a.f3207b, zzu.zzh());
        return null;
    }
}
