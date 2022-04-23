package com.callerid.block.main;

import com.callerid.block.bean.GameInfosVersionModel;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$f.class */
class MainActivity$f implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4591b;

    MainActivity$f(MainActivity mainActivity) {
        this.f4591b = mainActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String str = "https://info.ayamote.com/gonglue_xilie/ping.php?id=" + C1216t0.m9552y(this.f4591b) + "&version=" + C1216t0.m9605G(this.f4591b) + "&is_android=1";
            C1227w.m9527a("wwwww", str);
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setRequestMethod("GET");
            if (httpURLConnection.getResponseCode() == 200) {
                StringBuffer stringBuffer = new StringBuffer();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    stringBuffer.append(readLine);
                }
                JSONObject jSONObject = new JSONObject(stringBuffer.toString());
                this.f4591b.v = jSONObject.getInt("status");
                this.f4591b.w = jSONObject.getInt("in_control");
                MainActivity mainActivity = this.f4591b;
                if (mainActivity.v == 1 && mainActivity.w == 0) {
                    GameInfosVersionModel gameInfosVersionModel = new GameInfosVersionModel();
                    gameInfosVersionModel.setUpdatePath(jSONObject.getString("update_url"));
                    gameInfosVersionModel.setMinMaintenanceVersion(jSONObject.getString("min_version_in_maintenance"));
                    MainActivity.P0(this.f4591b).sendMessageDelayed(MainActivity.P0(this.f4591b).obtainMessage(564, gameInfosVersionModel), OkHttpUtils.DEFAULT_MILLISECONDS);
                }
                bufferedReader.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
