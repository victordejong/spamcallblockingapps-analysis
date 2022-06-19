package com.google.android.gms.internal.p360f;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.C3319ad;
import com.android.billingclient.api.C3339f;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
/* renamed from: com.google.android.gms.internal.f.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/a.class */
public final class C13304a {

    /* renamed from: a */
    public static final int f50539a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static int m13376a(Bundle bundle, String str) {
        if (bundle == null) {
            m13373a(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m13374a(str);
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            m13373a(str, valueOf.length() != 0 ? "Unexpected type for bundle response code: ".concat(valueOf) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    /* renamed from: a */
    public static Bundle m13379a(int i, boolean z, String str, ArrayList<C3319ad> arrayList) {
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

    /* renamed from: a */
    public static Bundle m13375a(C3339f c3339f, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (c3339f.f12599f != 0) {
            bundle.putInt("prorationMode", c3339f.f12599f);
        }
        if (!TextUtils.isEmpty(c3339f.f12595b)) {
            bundle.putString("accountId", c3339f.f12595b);
        }
        if (!TextUtils.isEmpty(c3339f.f12598e)) {
            bundle.putString("obfuscatedProfileId", c3339f.f12598e);
        }
        if (c3339f.f12601h) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(c3339f.f12596c)) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(c3339f.f12596c)));
        }
        if (!TextUtils.isEmpty(c3339f.f12597d)) {
            bundle.putString("oldSkuPurchaseToken", c3339f.f12597d);
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

    /* renamed from: a */
    public static Bundle m13372a(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: a */
    public static C3341g m13378a(Intent intent, String str) {
        if (intent != null) {
            C3341g.C3342a m38191a = C3341g.m38191a();
            m38191a.f12611a = m13376a(intent.getExtras(), str);
            m38191a.f12612b = m13371b(intent.getExtras(), str);
            return m38191a.m38190a();
        }
        m13373a("BillingHelper", "Got null intent!");
        C3341g.C3342a m38191a2 = C3341g.m38191a();
        m38191a2.f12611a = 6;
        m38191a2.f12612b = "An internal error occurred.";
        return m38191a2.m38190a();
    }

    /* renamed from: a */
    public static List<C3344i> m13377a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            m13373a("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            C3344i m13369b = m13369b(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (m13369b == null) {
                m13373a("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(m13369b);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                C3344i m13369b2 = m13369b(stringArrayList.get(i), stringArrayList2.get(i));
                if (m13369b2 != null) {
                    arrayList.add(m13369b2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m13374a(String str) {
        if (Log.isLoggable(str, 2)) {
        }
    }

    /* renamed from: a */
    public static void m13373a(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    /* renamed from: b */
    public static Bundle m13370b(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    /* renamed from: b */
    private static C3344i m13369b(String str, String str2) {
        C3344i c3344i;
        if (str == null || str2 == null) {
            m13373a("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            c3344i = new C3344i(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            m13373a("BillingHelper", sb.toString());
            c3344i = null;
        }
        return c3344i;
    }

    /* renamed from: b */
    public static String m13371b(Bundle bundle, String str) {
        if (bundle == null) {
            m13373a(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            m13374a(str);
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            m13373a(str, valueOf.length() != 0 ? "Unexpected type for debug message: ".concat(valueOf) : new String("Unexpected type for debug message: "));
            return "";
        }
    }
}
