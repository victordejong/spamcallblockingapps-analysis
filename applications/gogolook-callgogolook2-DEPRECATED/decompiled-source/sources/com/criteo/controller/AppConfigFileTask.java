package com.criteo.controller;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.Tracer;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes-dex2jar.jar:com/criteo/controller/AppConfigFileTask.class */
public class AppConfigFileTask {
    public static final String TAG = "Download File";
    public Context context;
    public String downloadFileName;
    public String downloadUrl;
    public AppSpecificRemoteConfigListener remoteConfigListener;

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/AppConfigFileTask$AppSpecificRemoteConfigListener.class */
    public interface AppSpecificRemoteConfigListener {
        void onAppSpecificRemoteSuccess(File file);

        void ononAppSpecificRemoteFailed(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/criteo/controller/AppConfigFileTask$DownloadingTask.class */
    public class DownloadingTask extends AsyncTask<Void, Void, Void> {
        public File outputFile;

        public DownloadingTask() {
            this.outputFile = null;
        }

        public Void doInBackground(Void... voidArr) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(AppConfigFileTask.this.downloadUrl).openConnection()));
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() != 200) {
                    Tracer.debug("Download File", "Server returned HTTP " + httpURLConnection.getResponseCode() + " " + httpURLConnection.getResponseMessage());
                    if (AppConfigFileTask.this.remoteConfigListener == null) {
                        return null;
                    }
                    AppConfigFileTask.this.remoteConfigListener.ononAppSpecificRemoteFailed("App Config Download File Error Exception");
                    return null;
                }
                this.outputFile = new File(CriteoCacheHelper.getCacheDirectory(AppConfigFileTask.this.context), AppConfigFileTask.this.downloadFileName);
                FileOutputStream fileOutputStream = new FileOutputStream(this.outputFile);
                InputStream inputStream = httpURLConnection.getInputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                inputStream.close();
                if (AppConfigFileTask.this.remoteConfigListener == null) {
                    return null;
                }
                AppConfigFileTask.this.remoteConfigListener.onAppSpecificRemoteSuccess(this.outputFile);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                this.outputFile = null;
                Tracer.debug("Download File", "App Config Download File Error Exception " + e.getMessage());
                if (AppConfigFileTask.this.remoteConfigListener == null) {
                    return null;
                }
                AppConfigFileTask.this.remoteConfigListener.ononAppSpecificRemoteFailed("App Config Download File Error Exception");
                return null;
            }
        }

        public void onPostExecute(Void r6) {
            try {
                if (this.outputFile == null) {
                    new Handler().postDelayed(new Runnable() { // from class: com.criteo.controller.AppConfigFileTask.DownloadingTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                        }
                    }, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                    Log.e("Download File", "Download Failed");
                }
            } catch (Exception e) {
                e.printStackTrace();
                new Handler().postDelayed(new Runnable() { // from class: com.criteo.controller.AppConfigFileTask.DownloadingTask.2
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                }, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                Tracer.debug("Download File", "Download File Failed with Exception - " + e.getLocalizedMessage());
            }
            super.onPostExecute((DownloadingTask) r6);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
        }
    }

    public AppConfigFileTask(Context context, String str, String str2, AppSpecificRemoteConfigListener appSpecificRemoteConfigListener) {
        this.downloadUrl = "";
        this.downloadFileName = "";
        this.context = context;
        this.downloadUrl = str;
        this.remoteConfigListener = appSpecificRemoteConfigListener;
        this.downloadFileName = str2;
        Log.e("Download File", this.downloadFileName);
        new DownloadingTask().execute(new Void[0]);
    }
}
