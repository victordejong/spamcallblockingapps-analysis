package com.criteo.controller;

import android.content.Context;
import com.criteo.BuildConfig;
import com.criteo.Criteo;
import com.criteo.controller.AppConfigFileTask;
import com.criteo.controller.GlobalConfigFileTask;
import com.criteo.network.ConnectivityInfoUtils;
import com.criteo.utils.PreferenceDataUtils;
import com.criteo.utils.Tracer;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/ConfigController.class */
public class ConfigController implements AppConfigFileTask.AppSpecificRemoteConfigListener, GlobalConfigFileTask.RemoteConfigListener, ConnectivityInfoUtils.OnConnectivityInfoUtilsListener {
    public static final String TAG = "criteo.Stories.ConfigController";
    public String downloadurl;
    public String filename;
    public Context mContext;

    public ConfigController(Context context) {
        this.mContext = context;
    }

    public ConfigController(Context context, String str, String str2) {
        this.mContext = context;
        this.downloadurl = str;
        this.filename = str2;
    }

    @Override // com.criteo.controller.AppConfigFileTask.AppSpecificRemoteConfigListener
    public void onAppSpecificRemoteSuccess(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            sb.toString();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        Criteo.ifConfigExists(this.mContext);
    }

    @Override // com.criteo.network.ConnectivityInfoUtils.OnConnectivityInfoUtilsListener
    public void onConnectivityInfoUtilsNetworkConnected() {
        onRequestMethod();
    }

    @Override // com.criteo.network.ConnectivityInfoUtils.OnConnectivityInfoUtilsListener
    public void onConnectivityInfoUtilsNetworkDisconnected(int i, String str) {
    }

    @Override // com.criteo.controller.GlobalConfigFileTask.RemoteConfigListener
    public void onRemoteFailed(String str) {
        Tracer.debug(TAG, str);
    }

    @Override // com.criteo.controller.GlobalConfigFileTask.RemoteConfigListener
    public void onRemoteSuccess(File file) {
        String readLine;
        String str = null;
        str = null;
        String str2 = null;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            while (true) {
                readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                str2 = readLine;
            }
            str = readLine;
            str = readLine;
            str = sb.toString();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        try {
            PreferenceDataUtils.setConfigExipire(this.mContext, System.currentTimeMillis() + (Long.parseLong(new JSONObject(str).getString("config_expires")) * 1000));
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        new AppConfigFileTask(this.mContext, BuildConfig.APP_SPECIFIC_URL + this.mContext.getPackageName() + "-config.json", this.mContext.getPackageName() + "-config.json", this);
    }

    public void onRequestMethod() {
        new GlobalConfigFileTask(this.mContext, BuildConfig.GLOBAL_URL, "android-global-config.json", this);
    }

    @Override // com.criteo.controller.AppConfigFileTask.AppSpecificRemoteConfigListener
    public void ononAppSpecificRemoteFailed(String str) {
        Tracer.debug(TAG, str);
        Criteo.ifConfigExists(this.mContext);
    }
}
