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

    /* renamed from: a */
    private final AbstractC16706a f58807a;

    /* renamed from: com.mopub.common.UrlResolutionTask$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/UrlResolutionTask$a.class */
    public interface AbstractC16706a {
        void onFailure(String str, Throwable th);

        void onSuccess(String str);
    }

    UrlResolutionTask(AbstractC16706a abstractC16706a) {
        this.f58807a = abstractC16706a;
    }

    /* renamed from: a */
    private static String m6712a(String str) throws IOException, URISyntaxException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                String m6711a = m6711a(str, httpURLConnection);
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
                return m6711a;
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
            httpURLConnection = null;
        }
    }

    /* renamed from: a */
    private static String m6711a(String str, HttpURLConnection httpURLConnection) throws IOException, URISyntaxException {
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

    /* renamed from: a */
    private static String m6710a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        String str = strArr[0];
        String str2 = null;
        int i = 0;
        while (str != null && i < 10) {
            try {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str)) && !UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                    i++;
                    str2 = str;
                    str = m6712a(str);
                }
                return str;
            } catch (IOException | NullPointerException | URISyntaxException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Exception occurred while resolving redirect URL", e);
                return null;
            }
        }
        return str2;
    }

    public static void getResolvedUrl(String str, AbstractC16706a abstractC16706a) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(abstractC16706a), str);
        } catch (Exception e) {
            abstractC16706a.onFailure("Failed to resolve url", e);
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ String doInBackground(String[] strArr) {
        return m6710a(strArr);
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        this.f58807a.onFailure("Task for resolving url was cancelled", null);
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        if (isCancelled() || str2 == null) {
            onCancelled();
        } else {
            this.f58807a.onSuccess(str2);
        }
    }
}
