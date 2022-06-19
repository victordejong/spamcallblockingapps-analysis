package p078c.p084c.p085a.p086a.p088b.p093e;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.billingclient.api.C3890a;
import com.android.billingclient.api.C3902f;
import com.android.billingclient.api.C3904f0;
import com.android.billingclient.api.C3905g;
import com.android.billingclient.api.C3908h;
import com.android.billingclient.api.Purchase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
/* renamed from: c.c.a.a.b.e.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/e/a.class */
public final class C1870a {

    /* renamed from: a */
    public static final int f6771a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static void m28780a(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    /* renamed from: b */
    public static void m28779b(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    /* renamed from: c */
    public static C3905g m28778c(Intent intent, String str) {
        if (intent != null) {
            C3905g.C3906a m23778c = C3905g.m23778c();
            m23778c.m23773c(m28777d(intent.getExtras(), str));
            m23778c.m23774b(m28776e(intent.getExtras(), str));
            return m23778c.m23775a();
        }
        m28779b("BillingHelper", "Got null intent!");
        C3905g.C3906a m23778c2 = C3905g.m23778c();
        m23778c2.m23773c(6);
        m23778c2.m23774b("An internal error occurred.");
        return m23778c2.m23775a();
    }

    /* renamed from: d */
    public static int m28777d(Bundle bundle, String str) {
        if (bundle == null) {
            m28779b(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m28780a(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String name = obj.getClass().getName();
            m28779b(str, name.length() != 0 ? "Unexpected type for bundle response code: ".concat(name) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    /* renamed from: e */
    public static String m28776e(Bundle bundle, String str) {
        if (bundle == null) {
            m28779b(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            m28780a(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String name = obj.getClass().getName();
            m28779b(str, name.length() != 0 ? "Unexpected type for debug message: ".concat(name) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    /* renamed from: f */
    public static List<Purchase> m28775f(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            m28779b("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            Purchase m28769l = m28769l(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (m28769l == null) {
                m28779b("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(m28769l);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                Purchase m28769l2 = m28769l(stringArrayList.get(i), stringArrayList2.get(i));
                if (m28769l2 != null) {
                    arrayList.add(m28769l2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public static Bundle m28774g(C3902f c3902f, boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (c3902f.m23798c() != 0) {
            bundle.putInt("prorationMode", c3902f.m23798c());
        }
        if (!TextUtils.isEmpty(c3902f.m23794g())) {
            bundle.putString("accountId", c3902f.m23794g());
        }
        if (!TextUtils.isEmpty(c3902f.m23792i())) {
            bundle.putString("obfuscatedProfileId", c3902f.m23792i());
        }
        if (c3902f.m23797d()) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(c3902f.m23800a())) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(c3902f.m23800a())));
        }
        if (!TextUtils.isEmpty(c3902f.m23799b())) {
            bundle.putString("oldSkuPurchaseToken", c3902f.m23799b());
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

    /* renamed from: h */
    public static Bundle m28773h(boolean z, boolean z2, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z && z2) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    /* renamed from: i */
    public static Bundle m28772i(int i, boolean z, String str, String str2, ArrayList<C3904f0> arrayList) {
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

    /* renamed from: j */
    public static Bundle m28771j(C3908h c3908h, boolean z, String str) {
        Bundle bundle = new Bundle();
        if (z) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        return bundle;
    }

    /* renamed from: k */
    public static Bundle m28770k(C3890a c3890a, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        return bundle;
    }

    /* renamed from: l */
    private static Purchase m28769l(String str, String str2) {
        Purchase purchase;
        if (str == null || str2 == null) {
            m28779b("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            purchase = new Purchase(str, str2);
        } catch (JSONException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 47);
            sb.append("Got JSONException while parsing purchase data: ");
            sb.append(valueOf);
            m28779b("BillingHelper", sb.toString());
            purchase = null;
        }
        return purchase;
    }
}
