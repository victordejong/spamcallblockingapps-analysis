package com.privacystar.core.service.network;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.Text;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/WebServices.class */
public class WebServices {
    private static final String CID_DATA_STATUS_URL = "cidDataStatus";
    public static final String MANUAL_TRANSACTION = "manualTrans";
    public static final String MODIFY_TRANSACTION = "modifyTrans";
    private static final String RESYNC_DATA_STATUS_URL = "resyncDataStatus";
    private static final String TRANSACTION_STATUS_URL = "statusInquiryTrans";
    public static final Object uiUpdateLock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/WebServices$IsConnectionValidRunnable.class */
    public static class IsConnectionValidRunnable implements Runnable {
        private boolean ret = false;
        private final int timeout;

        IsConnectionValidRunnable(int i) {
            this.timeout = i;
        }

        public boolean getIsValid() {
            return this.ret;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.ret = WebServices.isConnectionValidImpl(this.timeout);
        }
    }

    public static void addRequestHeaders(String str, HttpURLConnection httpURLConnection, Context context) {
        httpURLConnection.setRequestProperty("accept-encoding", HttpRequest.ENCODING_GZIP);
        httpURLConnection.setRequestProperty("accept", "application/json");
        httpURLConnection.setRequestProperty("user-agent", System.getProperty("http.agent"));
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("extraHeaders");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                httpURLConnection.setRequestProperty(jSONObject.getString("Name"), jSONObject.getString("Value"));
            }
        } catch (JSONException e) {
            Timber.m32e(e, "Error adding headers to request ---> %s", httpURLConnection.getURL().toString());
        }
    }

    private static int getCurrentVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Timber.m32e(e, "NameNotFoundException while attempting to get app version code", new Object[0]);
            return -1;
        }
    }

    @NonNull
    @RequiresApi(api = 21)
    private static NetworkInfo[] getNetworkInfoApi21(@NonNull ConnectivityManager connectivityManager) {
        Network[] allNetworks = connectivityManager.getAllNetworks();
        ArrayList arrayList = new ArrayList();
        NetworkInfo[] networkInfoArr = new NetworkInfo[0];
        if (allNetworks != null) {
            for (Network network : allNetworks) {
                arrayList.add(connectivityManager.getNetworkInfo(network));
            }
            networkInfoArr = (NetworkInfo[]) arrayList.toArray(new NetworkInfo[arrayList.size()]);
        }
        return networkInfoArr;
    }

    public static boolean isConnectionValid(int i) {
        if (i < 0) {
            return false;
        }
        try {
            IsConnectionValidRunnable isConnectionValidRunnable = new IsConnectionValidRunnable(i);
            Thread thread = new Thread(isConnectionValidRunnable);
            thread.start();
            thread.join(i);
            return isConnectionValidRunnable.getIsValid();
        } catch (Exception e) {
            Timber.m32e(e, "Could not check if connection was valid.", new Object[0]);
            return false;
        }
    }

    public static boolean isConnectionValidImpl(int i) {
        Throwable th;
        IOException e;
        Exception e2;
        Context context = PSApplication.context();
        String str = PreferenceUtil.getConnectivityUrl() + "FO.PrivacyStar.Generate204/204";
        String uXSharedPreference = PreferenceUtil.getUXSharedPreference("recordSourceCd");
        String str2 = str;
        if (!Text.isBlank(uXSharedPreference)) {
            str2 = str + "?rscd=" + uXSharedPreference;
        }
        boolean z = true;
        Timber.m31i("204 rscd: " + uXSharedPreference, context);
        r10 = null;
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (Exception e4) {
            e2 = e4;
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setUseCaches(false);
            if (httpURLConnection.getResponseCode() != 204) {
                z = false;
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return z;
        } catch (IOException e5) {
            e = e5;
            Timber.m23w(e, "IOException validating connection.", new Object[0]);
            if (httpURLConnection == null) {
                return false;
            }
            httpURLConnection.disconnect();
            return false;
        } catch (Exception e6) {
            e2 = e6;
            Timber.m23w(e2, "Exception validating connection.", new Object[0]);
            if (httpURLConnection == null) {
                return false;
            }
            httpURLConnection.disconnect();
            return false;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    @NonNull
    public static String isNetworkAvailable(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return "";
        }
        NetworkInfo[] networkInfoApi21 = Build.VERSION.SDK_INT >= 21 ? getNetworkInfoApi21(connectivityManager) : connectivityManager.getAllNetworkInfo();
        if (networkInfoApi21 == null) {
            return "";
        }
        for (NetworkInfo networkInfo : networkInfoApi21) {
            if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                return networkInfo.getTypeName();
            }
        }
        return "";
    }

    public static void storeDomain(String str) {
        PreferenceUtil.putDomainUrl(str.substring(0, str.indexOf(".privacystar.com/") + ".privacystar.com/".length()));
    }
}
