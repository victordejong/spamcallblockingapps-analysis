package com.mopub.common;

import android.net.Uri;
import android.os.AsyncTask;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlResolutionTask.class */
public class UrlResolutionTask extends AsyncTask<String, Void, String> {

    /* renamed from: a */
    public final AbstractC1033a f4326a;

    /* renamed from: com.mopub.common.UrlResolutionTask$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlResolutionTask$a.class */
    public interface AbstractC1033a {
        void onFailure(String str, Throwable th);

        void onSuccess(String str);
    }

    public UrlResolutionTask(AbstractC1033a abstractC1033a) {
        this.f4326a = abstractC1033a;
    }

    @VisibleForTesting
    /* renamed from: d */
    public static String m3907d(String str, HttpURLConnection httpURLConnection) {
        String str2;
        URI uri = new URI(str);
        int responseCode = httpURLConnection.getResponseCode();
        String headerField = httpURLConnection.getHeaderField("location");
        if (responseCode < 300 || responseCode >= 400) {
            str2 = null;
        } else {
            try {
                str2 = uri.resolve(headerField).toString();
            } catch (IllegalArgumentException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
                throw new URISyntaxException(headerField, "Unable to parse invalid URL");
            } catch (NullPointerException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
                throw e2;
            }
        }
        return str2;
    }

    public static void getResolvedUrl(String str, AbstractC1033a abstractC1033a) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(abstractC1033a), str);
        } catch (Exception e) {
            abstractC1033a.onFailure("Failed to resolve url", e);
        }
    }

    /* renamed from: a */
    public String doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        int i = 0;
        String str = strArr[0];
        String str2 = null;
        while (str != null && i < 10) {
            try {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str)) && !UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                    i++;
                    str2 = str;
                    str = m3909b(str);
                }
                return str;
            } catch (IOException | NullPointerException | URISyntaxException e) {
                return null;
            }
        }
        return str2;
    }

    /* renamed from: b */
    public final String m3909b(String str) {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            String m3907d = m3907d(str, httpURLConnection);
            if (httpURLConnection != null) {
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                }
                httpURLConnection.disconnect();
            }
            return m3907d;
        } catch (Throwable th3) {
            th = th3;
            if (httpURLConnection != null) {
                try {
                    InputStream inputStream2 = httpURLConnection.getInputStream();
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                } catch (IOException e2) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                }
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: c */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (isCancelled() || str == null) {
            onCancelled();
        } else {
            this.f4326a.onSuccess(str);
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f4326a.onFailure("Task for resolving url was cancelled", null);
    }
}
