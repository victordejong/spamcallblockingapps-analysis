package com.android.billingclient.p060a;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.android.billingclient.api.C1173f;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
/* renamed from: com.android.billingclient.a.a */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/a/a.class */
public final class C1158a {

    /* renamed from: a */
    public static int f3703a = Runtime.getRuntime().availableProcessors();

    /* renamed from: a */
    public static int m3929a(Intent intent, String str) {
        if (intent == null) {
            m3925b("BillingHelper", "Got null intent!");
            return 6;
        }
        return m3927a(intent.getExtras(), str);
    }

    /* renamed from: a */
    public static int m3927a(Bundle bundle, String str) {
        if (bundle == null) {
            m3925b(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m3926a(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            m3925b(str, "Unexpected type for bundle response code: " + obj.getClass().getName());
            return 6;
        }
    }

    /* renamed from: a */
    public static List<C1173f> m3928a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList == null || stringArrayList2 == null) {
            m3925b("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            C1173f m3924c = m3924c(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (m3924c == null) {
                m3925b("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(m3924c);
        } else {
            for (int i = 0; i < stringArrayList.size() && i < stringArrayList2.size(); i++) {
                C1173f m3924c2 = m3924c(stringArrayList.get(i), stringArrayList2.get(i));
                if (m3924c2 != null) {
                    arrayList.add(m3924c2);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m3926a(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    /* renamed from: b */
    public static void m3925b(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    /* renamed from: c */
    private static C1173f m3924c(String str, String str2) {
        C1173f c1173f;
        if (str == null || str2 == null) {
            m3925b("BillingHelper", "Received a bad purchase data.");
            return null;
        }
        try {
            c1173f = new C1173f(str, str2);
        } catch (JSONException e) {
            m3925b("BillingHelper", "Got JSONException while parsing purchase data: " + e);
            c1173f = null;
        }
        return c1173f;
    }
}
