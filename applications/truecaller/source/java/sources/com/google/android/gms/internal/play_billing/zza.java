package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import p193e.p1432d.p1433a.p1434a.C22062b;
import p193e.p1432d.p1433a.p1434a.C22063b0;
import p193e.p1432d.p1433a.p1434a.C22078j;
import p193e.p1432d.p1433a.p1434a.C22080k;
import p193e.p1432d.p1433a.p1434a.C22082l;
import p193e.p1432d.p1433a.p1434a.C22086n;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/play_billing/zza.class */
public final class zza {
    public static final int zza = Runtime.getRuntime().availableProcessors();

    public static int zza(Bundle bundle, String str) {
        if (bundle == null) {
            zzk(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zzj(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String name = obj.getClass().getName();
            zzk(str, name.length() != 0 ? "Unexpected type for bundle response code: ".concat(name) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    public static Bundle zzb(C22062b c22062b, String str) {
        return C22128a.m8654X0("playBillingLibraryVersion", str);
    }

    public static Bundle zzc(C22082l c22082l, boolean z, String str) {
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        return bundle;
    }

    public static Bundle zzd(int i, boolean z, String str, String str2, ArrayList<C22063b0> arrayList) {
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

    public static Bundle zze(C22078j c22078j, boolean z, boolean z2, String str) {
        Bundle m8654X0 = C22128a.m8654X0("playBillingLibraryVersion", str);
        int i = c22078j.f61370e;
        if (i != 0) {
            m8654X0.putInt("prorationMode", i);
        }
        if (!TextUtils.isEmpty(c22078j.f61367b)) {
            m8654X0.putString("accountId", c22078j.f61367b);
        }
        if (!TextUtils.isEmpty(c22078j.f61369d)) {
            m8654X0.putString("obfuscatedProfileId", c22078j.f61369d);
        }
        if (c22078j.f61372g) {
            m8654X0.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(null)) {
            m8654X0.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
        }
        if (!TextUtils.isEmpty(c22078j.f61368c)) {
            m8654X0.putString("oldSkuPurchaseToken", c22078j.f61368c);
        }
        if (!TextUtils.isEmpty(null)) {
            m8654X0.putString("oldSkuPurchaseId", null);
        }
        if (!TextUtils.isEmpty(null)) {
            m8654X0.putString("paymentsPurchaseParams", null);
        }
        if (z && z2) {
            m8654X0.putBoolean("enablePendingPurchases", true);
        }
        return m8654X0;
    }

    public static Bundle zzf(boolean z, boolean z2, String str) {
        Bundle m8654X0 = C22128a.m8654X0("playBillingLibraryVersion", str);
        if (z && z2) {
            m8654X0.putBoolean("enablePendingPurchases", true);
        }
        return m8654X0;
    }

    public static C22080k zzg(Intent intent, String str) {
        if (intent == null) {
            zzk("BillingHelper", "Got null intent!");
            C22080k c22080k = new C22080k();
            c22080k.f61377a = 6;
            c22080k.f61378b = "An internal error occurred.";
            return c22080k;
        }
        int zza2 = zza(intent.getExtras(), str);
        String zzh = zzh(intent.getExtras(), str);
        C22080k c22080k2 = new C22080k();
        c22080k2.f61377a = zza2;
        c22080k2.f61378b = zzh;
        return c22080k2;
    }

    public static String zzh(Bundle bundle, String str) {
        if (bundle == null) {
            zzk(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            zzj(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String name = obj.getClass().getName();
            zzk(str, name.length() != 0 ? "Unexpected type for debug message: ".concat(name) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    public static List<C22086n> zzi(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            zzk("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            C22086n zzl = zzl(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (zzl == null) {
                zzk("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(zzl);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                C22086n zzl2 = zzl(stringArrayList.get(i), stringArrayList2.get(i));
                if (zzl2 != null) {
                    arrayList.add(zzl2);
                }
            }
        }
        return arrayList;
    }

    public static void zzj(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
        }
    }

    public static void zzk(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
        }
    }

    private static C22086n zzl(String str, String str2) {
        C22086n c22086n;
        if (str == null || str2 == null) {
            zzk("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            c22086n = new C22086n(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            zzk("BillingHelper", sb.toString());
            c22086n = null;
        }
        return c22086n;
    }
}
