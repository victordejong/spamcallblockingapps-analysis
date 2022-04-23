package p459j.p460a.p582w0;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.flurry.sdk.C3478n;
import com.google.firebase.analytics.FirebaseAnalytics;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.p074ad.AdStatusController;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p182h.C6355a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p459j.p460a.p569u0.C13659c;
/* renamed from: j.a.w0.j */
/* loaded from: classes3-dex2jar.jar:j/a/w0/j.class */
public class C14031j {

    /* renamed from: a */
    public static final String[] f31472a = {"spam_callend_share_tw", "spam_callend_share_kr", "BR_call_identification_activate", "abtesting1_local", "onboarding_DDD_setting", "Global_switch_block_search_page", "onboarding_powersaver", "SMS_dialog", "default_phone_app_enable", "default_phone_test_wording_th", "default_phone_test_wording_br", "default_phone_test_wording_kr", "search_slow_test", "user_research_group", "number_test_customized_sms_1", "personal_db_testing"};

    /* renamed from: b */
    public static final C14033b[] f31473b = {new C14033b("abtesting1_local", new int[]{25, 25, 25, 25})};

    /* renamed from: j.a.w0.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/j$a.class */
    public static final class C14032a extends AbstractC6378d {
        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            C14031j.m2740b(i);
            if (jSONObject != null && !jSONObject.isNull("changed_ab")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("changed_ab");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    C14031j.m2738b(next, jSONObject2.getJSONObject(next).getInt(C3478n.f5989a));
                }
            }
        }
    }

    /* renamed from: j.a.w0.j$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/j$b.class */
    public static class C14033b {

        /* renamed from: a */
        public String f31474a;

        /* renamed from: b */
        public int[] f31475b;

        /* renamed from: c */
        public String[] f31476c;

        public C14033b(String str, int[] iArr) {
            this.f31474a = null;
            this.f31475b = null;
            this.f31474a = str;
            this.f31475b = iArr;
        }
    }

    /* renamed from: a */
    public static int m2745a(C14033b bVar) {
        boolean z;
        if (bVar.f31475b == null) {
            return m2744a(bVar.f31474a);
        }
        if (bVar.f31476c != null) {
            String n = C14017g4.m2810n();
            String[] strArr = bVar.f31476c;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (TextUtils.equals(n, strArr[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                return 0;
            }
        }
        int i2 = 0;
        for (int i3 : bVar.f31475b) {
            i2 += i3;
        }
        int nextInt = new Random().nextInt(i2);
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = bVar.f31475b;
            if (i4 >= iArr.length) {
                return 0;
            }
            if (iArr[i4] + i5 > nextInt) {
                return i4;
            }
            i5 += iArr[i4];
            i4++;
        }
    }

    /* renamed from: a */
    public static int m2744a(String str) {
        return m2742a(str, true);
    }

    /* renamed from: a */
    public static int m2742a(@NonNull String str, boolean z) {
        return m2741b().contains(str) ? m2739b(str) : C6355a.m23056a(str, z);
    }

    /* renamed from: a */
    public static void m2747a() {
        m2741b().edit().clear().apply();
        C6355a.m23043i();
    }

    /* renamed from: b */
    public static int m2739b(String str) {
        return m2741b().getInt(str, 0);
    }

    /* renamed from: b */
    public static SharedPreferences m2741b() {
        return MyApplication.m29013o().getSharedPreferences("ab_pref", 0);
    }

    /* renamed from: b */
    public static void m2740b(int i) {
        C14033b[] bVarArr;
        for (C14033b bVar : f31473b) {
            String str = bVar.f31474a;
            if (!m2741b().contains(str)) {
                int a = m2745a(bVar);
                m2736c(str, a);
                m2738b(str, a);
            }
        }
        AdStatusController.m28827c().m28828b();
    }

    /* renamed from: b */
    public static void m2738b(@NonNull String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("group", i);
        bundle.putString("experiment_key", str);
        FirebaseAnalytics.getInstance(MyApplication.m29013o()).m31116a("a_Experiment_Engaged", bundle);
    }

    /* renamed from: c */
    public static void m2737c() {
        if (C14217x3.m2107z() || C6334a.m23211s().m23215o()) {
            for (String str : f31472a) {
                C6355a.m23060a(str);
            }
            m2735d();
            C6355a.m23061a(new C14032a());
        }
    }

    /* renamed from: c */
    public static void m2736c(String str, int i) {
        m2741b().edit().putInt(str, i).apply();
    }

    /* renamed from: d */
    public static void m2735d() {
        List<String> a = C13659c.m3727a();
        if (!C14217x3.m2173a(a)) {
            for (String str : a) {
                C6355a.m23060a(str);
            }
        }
    }
}
