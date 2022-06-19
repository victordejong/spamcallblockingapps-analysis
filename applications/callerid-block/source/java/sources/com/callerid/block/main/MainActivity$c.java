package com.callerid.block.main;

import com.callerid.block.bean.GameInfosVersionModel;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$c.class */
class MainActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4588b;

    MainActivity$c(MainActivity mainActivity) {
        this.f4588b = mainActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            String str = "https://info.ayamote.com/gonglue_xilie/ping.php?id=" + C1216t0.m9552y(this.f4588b) + "&version=" + C1216t0.m9605G(this.f4588b) + "&is_android=1";
            if (C1227w.f5084a) {
                C1227w.m9527a("testupdate", "path:" + str);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setRequestMethod("GET");
            if (httpURLConnection.getResponseCode() != 200) {
                return;
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            if (C1227w.f5084a) {
                C1227w.m9527a("testupdate", "object:" + jSONObject.toString());
            }
            this.f4588b.v = jSONObject.getInt("status");
            this.f4588b.w = jSONObject.getInt("in_control");
            MainActivity mainActivity = this.f4588b;
            if (mainActivity.v != 1 || mainActivity.w != 0) {
                return;
            }
            GameInfosVersionModel gameInfosVersionModel = new GameInfosVersionModel();
            gameInfosVersionModel.setUpdatePath(jSONObject.getString("update_url"));
            gameInfosVersionModel.setMinMaintenanceVersion(jSONObject.getString("min_version_in_maintenance"));
            MainActivity.L0(this.f4588b).sendMessage(MainActivity.L0(this.f4588b).obtainMessage(970, gameInfosVersionModel));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
