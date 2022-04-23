package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import p131c.p132a.p133a.p134a.C1979a;
import p131c.p132a.p133a.p134a.C1990e0;
import p131c.p132a.p133a.p134a.C1991f;
import p131c.p132a.p133a.p134a.C1994g;
import p131c.p132a.p133a.p134a.C1999i;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zza.class */
public final class zza {

    /* renamed from: a */
    public static final int f29696a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static int m9448a(Bundle bundle, String str) {
        if (bundle == null) {
            m9442b(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m9445a(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            m9442b(str, valueOf.length() != 0 ? "Unexpected type for bundle response code: ".concat(valueOf) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    /* renamed from: a */
    public static Bundle m9451a(int i, boolean z, String str, String str2, ArrayList<C1990e0> arrayList) {
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
    public static Bundle m9447a(C1979a aVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m9446a(C1991f fVar, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (fVar.m31305c() != 0) {
            bundle.putInt("prorationMode", fVar.m31305c());
        }
        if (!TextUtils.isEmpty(fVar.m31300f())) {
            bundle.putString("accountId", fVar.m31300f());
        }
        if (!TextUtils.isEmpty(fVar.m31298h())) {
            bundle.putString("obfuscatedProfileId", fVar.m31298h());
        }
        if (fVar.m31303d()) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(fVar.m31313a())) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(fVar.m31313a())));
        }
        if (!TextUtils.isEmpty(fVar.m31308b())) {
            bundle.putString("oldSkuPurchaseToken", fVar.m31308b());
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("oldSkuPurchaseId", null);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("paymentsSessionData", null);
        }
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m9444a(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: a */
    public static C1994g m9450a(Intent intent, String str) {
        if (intent == null) {
            m9442b("BillingHelper", "Got null intent!");
            C1994g.C1995a c = C1994g.m31290c();
            c.m31288a(6);
            c.m31287a("An internal error occurred.");
            return c.m31289a();
        }
        C1994g.C1995a c2 = C1994g.m31290c();
        c2.m31288a(m9448a(intent.getExtras(), str));
        c2.m31287a(m9443b(intent.getExtras(), str));
        return c2.m31289a();
    }

    /* renamed from: a */
    public static List<C1999i> m9449a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            m9442b("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            C1999i c = m9441c(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (c == null) {
                m9442b("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(c);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                C1999i c2 = m9441c(stringArrayList.get(i), stringArrayList2.get(i));
                if (c2 != null) {
                    arrayList.add(c2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m9445a(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    /* renamed from: b */
    public static String m9443b(Bundle bundle, String str) {
        if (bundle == null) {
            m9442b(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            m9445a(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String valueOf = String.valueOf(obj.getClass().getName());
            m9442b(str, valueOf.length() != 0 ? "Unexpected type for debug message: ".concat(valueOf) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    /* renamed from: b */
    public static void m9442b(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    /* renamed from: c */
    public static C1999i m9441c(String str, String str2) {
        C1999i iVar = null;
        if (str == null || str2 == null) {
            m9442b("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            iVar = new C1999i(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            m9442b("BillingHelper", sb.toString());
        }
        return iVar;
    }
}
