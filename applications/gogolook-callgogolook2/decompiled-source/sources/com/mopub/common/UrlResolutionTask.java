package com.mopub.common;

import android.net.Uri;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
/* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlResolutionTask.class */
public class UrlResolutionTask extends AsyncTask<String, Void, String> {
    @NonNull

    /* renamed from: a */
    public final AbstractC3784a f8167a;

    /* renamed from: com.mopub.common.UrlResolutionTask$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlResolutionTask$a.class */
    public interface AbstractC3784a {
        void onFailure(@NonNull String str, @Nullable Throwable th);

        void onSuccess(@NonNull String str);
    }

    public UrlResolutionTask(@NonNull AbstractC3784a aVar) {
        this.f8167a = aVar;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: a */
    public static String m30749a(@NonNull String str, @NonNull HttpURLConnection httpURLConnection) throws IOException, URISyntaxException {
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

    public static void getResolvedUrl(@NonNull String str, @NonNull AbstractC3784a aVar) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(aVar), str);
        } catch (Exception e) {
            aVar.onFailure("Failed to resolve url", e);
        }
    }

    @Nullable
    /* renamed from: a */
    public final String m30750a(@NonNull String str) throws IOException, URISyntaxException {
        Throwable th;
        URL url = new URL(str);
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            try {
                httpURLConnection2.setInstanceFollowRedirects(false);
                String a = m30749a(str, httpURLConnection2);
                if (httpURLConnection2 != null) {
                    InputStream inputStream = httpURLConnection2.getInputStream();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                        }
                    }
                    httpURLConnection2.disconnect();
                }
                return a;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    InputStream inputStream2 = httpURLConnection.getInputStream();
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e2) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "IOException when closing httpUrlConnection. Ignoring.");
                        }
                    }
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Nullable
    /* renamed from: a */
    public String doInBackground(@Nullable String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        int i = 0;
        String str = strArr[0];
        String str2 = null;
        while (str != null && i < 10) {
            try {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str)) && !UrlAction.OPEN_NATIVE_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                    str = m30750a(str);
                    i++;
                    str2 = str;
                }
                return str;
            } catch (IOException | NullPointerException | URISyntaxException e) {
                return null;
            }
        }
        return str2;
    }

    /* renamed from: b */
    public void onPostExecute(@Nullable String str) {
        super.onPostExecute(str);
        if (isCancelled() || str == null) {
            onCancelled();
        } else {
            this.f8167a.onSuccess(str);
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f8167a.onFailure("Task for resolving url was cancelled", null);
    }
}
