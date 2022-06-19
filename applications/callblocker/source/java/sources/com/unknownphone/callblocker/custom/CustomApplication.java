package com.unknownphone.callblocker.custom;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.C2343k;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.p189g.C5329a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/CustomApplication.class */
public class CustomApplication extends Application {

    /* renamed from: a */
    private static FirebaseAnalytics f22108a;

    /* renamed from: b */
    private SharedPreferences f22109b;

    /* renamed from: com.unknownphone.callblocker.custom.CustomApplication$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/CustomApplication$a.class */
    public static class AsyncTaskC5278a extends AsyncTask<Void, Void, List<C5329a>> {

        /* renamed from: a */
        private AbstractC5279a f22113a;

        /* renamed from: b */
        private Map<String, String> f22114b;

        /* renamed from: com.unknownphone.callblocker.custom.CustomApplication$a$a */
        /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/CustomApplication$a$a.class */
        public interface AbstractC5279a {
            /* renamed from: a */
            void mo1104a(List<C5329a> list);
        }

        AsyncTaskC5278a(Map<String, String> map, AbstractC5279a abstractC5279a) {
            this.f22113a = abstractC5279a;
            this.f22114b = map;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0078 -> B:15:0x0068). Please submit an issue!!! */
        /* renamed from: a */
        public List<C5329a> doInBackground(Void... voidArr) {
            JSONArray jSONArray;
            Pair<String, Boolean> m1043a = C5292d.m1044a().m1043a(this.f22114b);
            ArrayList arrayList = null;
            if (!TextUtils.isEmpty((CharSequence) m1043a.first)) {
                arrayList = null;
                if (!((Boolean) m1043a.second).booleanValue()) {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        jSONArray = new JSONArray((String) m1043a.first);
                    } catch (JSONException e) {
                        jSONArray = null;
                    }
                    for (int i = 0; jSONArray != null && i < jSONArray.length(); i++) {
                        try {
                            arrayList2.add(new C5329a(jSONArray.getJSONObject(i)));
                        } catch (JSONException e2) {
                        }
                    }
                    arrayList = arrayList2;
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public void onPostExecute(List<C5329a> list) {
            if (this.f22113a != null) {
                this.f22113a.mo1104a(list);
            }
        }
    }

    /* renamed from: a */
    public static FirebaseAnalytics m1112a() {
        return f22108a;
    }

    /* renamed from: a */
    public static void m1110a(String str) {
        if (f22108a == null) {
            return;
        }
        f22108a.m2182a(C5287g.m1070e(str), null);
    }

    /* renamed from: b */
    public void m1109b() {
        final C5290b c5290b = new C5290b(getApplicationContext());
        HashMap hashMap = new HashMap();
        hashMap.put("_action", "_get_dangerous_phones_list");
        hashMap.put("api_key", C5287g.m1076c(this.f22109b.getString("api_key", "")));
        hashMap.put("region", C5287g.m1076c(this.f22109b.getString("region_code", C5287g.m1095a(this))).toUpperCase());
        hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(Locale.getDefault().getLanguage()).first));
        hashMap.put("user_type", "free");
        hashMap.put("device", "Android");
        hashMap.put("country_code", C5287g.m1075c(this.f22109b.getString("region_code", C5287g.m1095a(this)), "O1"));
        new AsyncTaskC5278a(hashMap, new AsyncTaskC5278a.AbstractC5279a() { // from class: com.unknownphone.callblocker.custom.CustomApplication.1
            @Override // com.unknownphone.callblocker.custom.CustomApplication.AsyncTaskC5278a.AbstractC5279a
            /* renamed from: a */
            public void mo1104a(List<C5329a> list) {
                if (list == null || list.isEmpty()) {
                    return;
                }
                c5290b.m1051b(list);
                CustomApplication.this.f22109b.edit().putLong("spam_numbers_last_update", System.currentTimeMillis()).apply();
            }
        }).execute(new Void[0]);
        this.f22109b.edit().putBoolean("just_became_aware", true).putBoolean("first_launch", false).putInt("credits", 75).apply();
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: c */
    private void m1107c() {
        C5292d m1044a = C5292d.m1044a();
        HashMap hashMap = new HashMap();
        hashMap.put("os_version", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("user_id", Settings.Secure.getString(getContentResolver(), "android_id"));
        hashMap.put("_action", "_get_new_api_key");
        hashMap.put("device", "Android");
        m1044a.m1042a(hashMap, new C5292d.AbstractC5295b() { // from class: com.unknownphone.callblocker.custom.CustomApplication.2
            @Override // com.unknownphone.callblocker.p186d.C5292d.AbstractC5295b
            /* renamed from: a */
            public void mo951a(int i, String str, boolean z) {
                if (str == null || z) {
                    return;
                }
                CustomApplication.this.f22109b.edit().putString("api_key", new JSONObject(str).getString("api_key")).apply();
                if (!CustomApplication.this.f22109b.getBoolean("first_launch", true)) {
                    return;
                }
                CustomApplication.this.m1109b();
            }
        });
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f22108a = FirebaseAnalytics.getInstance(this);
        C2343k.m14719a(this, "ca-app-pub-4660838923216567~5881892979");
        this.f22109b = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        if (TextUtils.isEmpty(this.f22109b.getString("api_key", null))) {
            m1107c();
        } else if (!this.f22109b.getBoolean("first_launch", true)) {
        } else {
            m1109b();
        }
    }
}
