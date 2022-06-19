package com.callerid.block.util;

import android.os.AsyncTask;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.callerid.block.main.EZCallApplication;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.callerid.block.util.d0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/d0.class */
public class C1171d0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.util.d0$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/d0$b.class */
    public static class AsyncTaskC1173b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private String f4995a;

        /* renamed from: b */
        private String f4996b;

        private AsyncTaskC1173b() {
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String optString;
            String optString2;
            String optString3;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL("https://info.ayamote.com/gonglue_xilie/ping.php?id=" + C1216t0.m9552y(EZCallApplication.m10163c()) + "&version=" + C1216t0.m9605G(EZCallApplication.m10163c()) + "&is_android=1").openConnection()));
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                if (httpURLConnection.getResponseCode() != 200) {
                    return null;
                }
                StringBuffer stringBuffer = new StringBuffer();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuffer.append(readLine);
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("neitui", "content:" + stringBuffer.toString());
                }
                JSONObject jSONObject = new JSONObject(stringBuffer.toString());
                String string = jSONObject.getString("ad_banner");
                if ("admob".equals(string)) {
                    C1171d0.m9896B(true);
                } else {
                    C1171d0.m9896B(false);
                }
                if ("iad".equals(string)) {
                    C1171d0.m9895C(true);
                } else {
                    C1171d0.m9895C(false);
                }
                if ("facebook".equals(string)) {
                    C1171d0.m9894D(true);
                } else {
                    C1171d0.m9894D(false);
                }
                JSONArray optJSONArray = jSONObject.optJSONArray("neitui_list");
                if (optJSONArray == null || optJSONArray.length() <= 0) {
                    C1171d0.m9893E(false);
                    return null;
                }
                JSONObject jSONObject2 = optJSONArray.getJSONObject(0);
                if (jSONObject2.has("url_scheme") && (optString3 = jSONObject2.optString("url_scheme")) != null && !"".equals(optString3)) {
                    if (!optString3.equals(C1171d0.m9891a())) {
                        C1199n0.m9702g1(EZCallApplication.m10163c(), true);
                    }
                    C1171d0.m9885g(optString3);
                }
                if (jSONObject2.has("headline") && (optString2 = jSONObject2.optString("headline")) != null && !"".equals(optString2)) {
                    C1171d0.m9883i(optString2);
                }
                if (jSONObject2.has("description") && (optString = jSONObject2.optString("description")) != null && !"".equals(optString)) {
                    C1171d0.m9884h(optString);
                }
                if (jSONObject2.has("thumb_url")) {
                    String optString4 = jSONObject2.optString("thumb_url");
                    this.f4995a = optString4;
                    if (optString4 != null && !"".equals(optString4)) {
                        C1171d0.m9881k(this.f4995a);
                    }
                }
                if (!jSONObject2.has("img_url")) {
                    return null;
                }
                String optString5 = jSONObject2.optString("img_url");
                this.f4996b = optString5;
                if (optString5 == null || "".equals(optString5)) {
                    return null;
                }
                C1171d0.m9882j(this.f4996b);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                if (!C1227w.f5084a) {
                    return null;
                }
                C1227w.m9527a("neitui", "Exception:" + e.getMessage());
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            C1171d0.m9880l(System.currentTimeMillis());
            ComponentCallbacks2C0700b.m11330u(EZCallApplication.m10163c()).s(this.f4995a).I0();
            ComponentCallbacks2C0700b.m11330u(EZCallApplication.m10163c()).s(this.f4996b).I0();
        }
    }

    /* renamed from: A */
    public static boolean m9897A() {
        return C1235y.m9499a("isOpenNeituiAd", false);
    }

    /* renamed from: B */
    public static void m9896B(boolean z) {
        C1235y.m9494f("isOpenAd", z);
    }

    /* renamed from: C */
    public static void m9895C(boolean z) {
        C1235y.m9494f("isOpenMissedAd", z);
    }

    /* renamed from: D */
    public static void m9894D(boolean z) {
        C1235y.m9494f("isOpenMissedBannerAd", z);
    }

    /* renamed from: E */
    public static void m9893E(boolean z) {
        C1235y.m9494f("isOpenNeituiAd", z);
    }

    /* renamed from: F */
    public static void m9892F(boolean z) {
        C1235y.m9494f("isShowFenfa", z);
    }

    /* renamed from: a */
    public static String m9891a() {
        return C1235y.m9495e("mr_ntapp", "com.colorflash.callerscreen");
    }

    /* renamed from: b */
    public static String m9890b() {
        return C1235y.m9495e("nt_description", "");
    }

    /* renamed from: c */
    public static String m9889c() {
        return C1235y.m9495e("head_line", "");
    }

    /* renamed from: d */
    public static String m9888d() {
        return C1235y.m9495e("nt_image", "");
    }

    /* renamed from: e */
    public static String m9887e() {
        return C1235y.m9495e("nt_thumb", "");
    }

    /* renamed from: f */
    public static void m9886f() {
        try {
            AsyncTaskC1173b asyncTaskC1173b = new AsyncTaskC1173b();
            if (asyncTaskC1173b.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC1173b.cancel(true);
            new AsyncTaskC1173b().executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m9885g(String str) {
        C1235y.m9491i("mr_ntapp", str);
    }

    /* renamed from: h */
    public static void m9884h(String str) {
        C1235y.m9491i("nt_description", str);
    }

    /* renamed from: i */
    public static void m9883i(String str) {
        C1235y.m9491i("head_line", str);
    }

    /* renamed from: j */
    public static void m9882j(String str) {
        C1235y.m9491i("nt_image", str);
    }

    /* renamed from: k */
    public static void m9881k(String str) {
        C1235y.m9491i("nt_thumb", str);
    }

    /* renamed from: l */
    public static void m9880l(long j) {
        C1235y.m9492h("search_ntapp_time", j);
    }

    /* renamed from: w */
    public static boolean m9869w() {
        return C1235y.m9499a("isShowFenfa", true);
    }

    /* renamed from: x */
    public static boolean m9868x() {
        return C1235y.m9499a("isOpenAd", false);
    }

    /* renamed from: y */
    public static boolean m9867y() {
        return C1235y.m9499a("isOpenMissedAd", false);
    }

    /* renamed from: z */
    public static boolean m9866z() {
        return C1235y.m9499a("isOpenMissedBannerAd", false);
    }
}
