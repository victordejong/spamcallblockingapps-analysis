package com.google.android.gms.internal.f;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.ad;
import com.android.billingclient.api.f;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f28879a = Runtime.getRuntime().availableProcessors();

    public static int a(Bundle bundle, String str) {
        if (bundle == null) {
            a(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            a(str);
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            a(str, valueOf.length() != 0 ? "Unexpected type for bundle response code: ".concat(valueOf) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    public static Bundle a(int i, boolean z, String str, ArrayList<ad> arrayList) {
        Bundle bundle = new Bundle();
        if (i >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i >= 9 && z) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            boolean z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.get(i2);
                arrayList2.add(null);
                z2 |= !TextUtils.isEmpty(null);
            }
            if (z2) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
        }
        return bundle;
    }

    public static Bundle a(f fVar, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (fVar.f != 0) {
            bundle.putInt("prorationMode", fVar.f);
        }
        if (!TextUtils.isEmpty(fVar.f6979b)) {
            bundle.putString("accountId", fVar.f6979b);
        }
        if (!TextUtils.isEmpty(fVar.e)) {
            bundle.putString("obfuscatedProfileId", fVar.e);
        }
        if (fVar.h) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(fVar.f6980c)) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(fVar.f6980c)));
        }
        if (!TextUtils.isEmpty(fVar.f6981d)) {
            bundle.putString("oldSkuPurchaseToken", fVar.f6981d);
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
        return bundle;
    }

    public static Bundle a(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static g a(Intent intent, String str) {
        if (intent == null) {
            a("BillingHelper", "Got null intent!");
            g.a a2 = g.a();
            a2.f6988a = 6;
            a2.f6989b = "An internal error occurred.";
            return a2.a();
        }
        g.a a3 = g.a();
        a3.f6988a = a(intent.getExtras(), str);
        a3.f6989b = b(intent.getExtras(), str);
        return a3.a();
    }

    public static List<i> a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            a("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            i b2 = b(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (b2 == null) {
                a("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(b2);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                i b3 = b(stringArrayList.get(i), stringArrayList2.get(i));
                if (b3 != null) {
                    arrayList.add(b3);
                }
            }
        }
        return arrayList;
    }

    public static void a(String str) {
        if (Log.isLoggable(str, 2)) {
        }
    }

    public static void a(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static Bundle b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    private static i b(String str, String str2) {
        i iVar = null;
        if (str == null || str2 == null) {
            a("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            iVar = new i(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            a("BillingHelper", sb.toString());
        }
        return iVar;
    }

    public static String b(Bundle bundle, String str) {
        if (bundle == null) {
            a(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            a(str);
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            a(str, valueOf.length() != 0 ? "Unexpected type for debug message: ".concat(valueOf) : new String("Unexpected type for debug message: "));
            return "";
        }
    }
}
