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
import p193e.p1432d.p1439c.p1440a.C22128a;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlResolutionTask.class */
public class UrlResolutionTask extends AsyncTask<String, Void, String> {

    /* renamed from: a */
    public final AbstractC2643a f8574a;

    /* renamed from: com.mopub.common.UrlResolutionTask$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/UrlResolutionTask$a.class */
    public interface AbstractC2643a {
        void onFailure(String str, Throwable th);

        void onSuccess(String str);
    }

    public UrlResolutionTask(AbstractC2643a abstractC2643a) {
        this.f8574a = abstractC2643a;
    }

    @VisibleForTesting
    /* renamed from: b */
    public static String m36295b(String str, HttpURLConnection httpURLConnection) throws IOException, URISyntaxException {
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
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8721D2("Invalid URL redirection. baseUrl=", str, "\n redirectUrl=", headerField));
                throw new URISyntaxException(headerField, "Unable to parse invalid URL");
            } catch (NullPointerException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8721D2("Invalid URL redirection. baseUrl=", str, "\n redirectUrl=", headerField));
                throw e2;
            }
        }
        return str2;
    }

    public static void getResolvedUrl(String str, AbstractC2643a abstractC2643a) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(abstractC2643a), str);
        } catch (Exception e) {
            abstractC2643a.onFailure("Failed to resolve url", e);
        }
    }

    /* renamed from: a */
    public final String m36296a(String str) throws IOException, URISyntaxException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                String m36295b = m36295b(str, httpURLConnection);
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                }
                httpURLConnection.disconnect();
                return m36295b;
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

    @Override // android.os.AsyncTask
    public String doInBackground(String[] strArr) {
        String[] strArr2 = strArr;
        String str = null;
        if (strArr2 != null) {
            if (strArr2.length == 0) {
                str = null;
            } else {
                str = strArr2[0];
                String str2 = null;
                int i = 0;
                while (str != null && i < 10) {
                    try {
                        if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str)) && !UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                            i++;
                            str2 = str;
                            str = m36296a(str);
                        }
                        break;
                    } catch (IOException | NullPointerException | URISyntaxException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Exception occurred while resolving redirect URL", e);
                        str = null;
                    }
                }
                str = str2;
            }
        }
        return str;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f8574a.onFailure("Task for resolving url was cancelled", null);
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        if (isCancelled() || str2 == null) {
            onCancelled();
        } else {
            this.f8574a.onSuccess(str2);
        }
    }
}
