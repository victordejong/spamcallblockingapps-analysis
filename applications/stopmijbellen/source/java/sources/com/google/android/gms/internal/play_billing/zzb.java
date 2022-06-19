package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.C0872d;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import p122i2.C3065a;
import p122i2.C3067c;
import p122i2.C3068d;
import p122i2.C3070f;
import p122i2.C3080p;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzb.class */
public final class zzb {
    public static final int zza = Runtime.getRuntime().availableProcessors();

    public static int zza(Intent intent, String str) {
        if (intent == null) {
            zzn("ProxyBillingActivity", "Got null intent!");
            return 0;
        }
        return zzp(intent.getExtras(), "ProxyBillingActivity");
    }

    public static int zzb(Bundle bundle, String str) {
        if (bundle == null) {
            zzn(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zzm(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String name = obj.getClass().getName();
            zzn(str, name.length() != 0 ? "Unexpected type for bundle response code: ".concat(name) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    public static Bundle zzc(C3065a c3065a, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    public static Bundle zzd(C3068d c3068d, boolean z, String str) {
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        return bundle;
    }

    public static Bundle zze(int i, boolean z, String str, String str2, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        if (i >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i >= 9 && z) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            ArrayList<String> arrayList3 = new ArrayList<>();
            ArrayList arrayList4 = new ArrayList();
            int size = arrayList.size();
            boolean z2 = false;
            boolean z3 = false;
            for (int i2 = 0; i2 < size; i2++) {
                C3080p c3080p = (C3080p) arrayList.get(i2);
                arrayList2.add(null);
                z2 |= !TextUtils.isEmpty(null);
                arrayList3.add(null);
                z3 |= !TextUtils.isEmpty(null);
                arrayList4.add(0);
            }
            if (z2) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
            if (z3) {
                bundle.putStringArrayList("SKU_OFFER_ID_LIST", arrayList3);
            }
        }
        return bundle;
    }

    public static Bundle zzf(C0872d c0872d, boolean z, boolean z2, boolean z3, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        int i = c0872d.f3233e;
        if (i != 0) {
            bundle.putInt("prorationMode", i);
        }
        if (!TextUtils.isEmpty(c0872d.f3230b)) {
            bundle.putString("accountId", c0872d.f3230b);
        }
        if (!TextUtils.isEmpty(c0872d.f3232d)) {
            bundle.putString("obfuscatedProfileId", c0872d.f3232d);
        }
        if (c0872d.f3236h) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
        }
        if (!TextUtils.isEmpty(c0872d.f3231c)) {
            bundle.putString("oldSkuPurchaseToken", c0872d.f3231c);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("oldSkuPurchaseId", null);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("paymentsPurchaseParams", null);
        }
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (z3) {
            bundle.putBoolean("enableAlternativeBilling", true);
        }
        return bundle;
    }

    public static Bundle zzg(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static C3067c zzh(Intent intent, String str) {
        if (intent == null) {
            zzn("BillingHelper", "Got null intent!");
            C3067c c3067c = new C3067c();
            c3067c.f10403a = 6;
            c3067c.f10404b = "An internal error occurred.";
            return c3067c;
        }
        int zzb = zzb(intent.getExtras(), str);
        String zzj = zzj(intent.getExtras(), str);
        C3067c c3067c2 = new C3067c();
        c3067c2.f10403a = zzb;
        c3067c2.f10404b = zzj;
        return c3067c2;
    }

    public static C3070f zzi(Bundle bundle, String str) {
        return bundle == null ? new C3070f(0, null) : new C3070f(zzp(bundle, "BillingClient"), bundle.getString("IN_APP_MESSAGE_PURCHASE_TOKEN"));
    }

    public static String zzj(Bundle bundle, String str) {
        if (bundle == null) {
            zzn(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            zzm(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String name = obj.getClass().getName();
            zzn(str, name.length() != 0 ? "Unexpected type for debug message: ".concat(name) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    public static String zzk(int i) {
        return zza.zza(i).toString();
    }

    public static List zzl(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            Purchase zzq = zzq(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (zzq == null) {
                zzm("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(zzq);
        } else {
            int size = stringArrayList.size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Found purchase list of ");
            sb.append(size);
            sb.append(" items");
            zzm("BillingHelper", sb.toString());
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                Purchase zzq2 = zzq(stringArrayList.get(i), stringArrayList2.get(i));
                if (zzq2 != null) {
                    arrayList.add(zzq2);
                }
            }
        }
        return arrayList;
    }

    public static void zzm(String str, String str2) {
        Log.isLoggable(str, 2);
    }

    public static void zzn(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static void zzo(String str, String str2, Throwable th) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    private static int zzp(Bundle bundle, String str) {
        if (bundle == null) {
            zzn(str, "Unexpected null bundle received!");
            return 0;
        }
        return bundle.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
    }

    private static Purchase zzq(String str, String str2) {
        Purchase purchase;
        if (str == null || str2 == null) {
            zzm("BillingHelper", "Received a null purchase data.");
            return null;
        }
        try {
            purchase = new Purchase(str, str2);
        } catch (JSONException e) {
            zzn("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e.toString()));
            purchase = null;
        }
        return purchase;
    }
}
