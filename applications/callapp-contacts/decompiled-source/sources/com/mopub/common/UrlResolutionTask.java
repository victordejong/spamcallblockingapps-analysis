package com.mopub.common;

import android.net.Uri;
import android.os.AsyncTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlResolutionTask.class */
public class UrlResolutionTask extends AsyncTask<String, Void, String> {

    /* renamed from: a  reason: collision with root package name */
    private final a f33874a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlResolutionTask$a.class */
    public interface a {
        void onFailure(String str, Throwable th);

        void onSuccess(String str);
    }

    UrlResolutionTask(a aVar) {
        this.f33874a = aVar;
    }

    private static String a(String str) throws IOException, URISyntaxException {
        Throwable th;
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                String a2 = a(str, httpURLConnection);
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
                return a2;
            } catch (Throwable th2) {
                th = th2;
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
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String a(String str, HttpURLConnection httpURLConnection) throws IOException, URISyntaxException {
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
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
                throw new URISyntaxException(headerField, "Unable to parse invalid URL");
            } catch (NullPointerException e2) {
                MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent2, "Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
                throw e2;
            }
        }
        return str2;
    }

    private static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        String str = strArr[0];
        String str2 = null;
        int i = 0;
        while (str != null && i < 10) {
            try {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str)) && !UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                    str = a(str);
                    i++;
                    str2 = str;
                }
                return str;
            } catch (IOException | NullPointerException | URISyntaxException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Exception occurred while resolving redirect URL", e);
                return null;
            }
        }
        return str2;
    }

    public static void getResolvedUrl(String str, a aVar) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(aVar), str);
        } catch (Exception e) {
            aVar.onFailure("Failed to resolve url", e);
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ String doInBackground(String[] strArr) {
        return a(strArr);
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        this.f33874a.onFailure("Task for resolving url was cancelled", null);
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        if (isCancelled() || str2 == null) {
            onCancelled();
        } else {
            this.f33874a.onSuccess(str2);
        }
    }
}
