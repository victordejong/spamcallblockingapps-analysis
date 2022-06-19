package com.mopub.mobileads;

import android.os.AsyncTask;
import com.mopub.common.CacheService;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Streams;
import java.io.BufferedInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoDownloader.class */
public class VideoDownloader {

    /* renamed from: a */
    public static final Deque<WeakReference<AsyncTaskC1119b>> f4970a = new ArrayDeque();

    /* renamed from: com.mopub.mobileads.VideoDownloader$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoDownloader$a.class */
    public interface AbstractC1118a {
        void onComplete(boolean z);
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mobileads.VideoDownloader$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoDownloader$b.class */
    public static class AsyncTaskC1119b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        public final AbstractC1118a f4971a;

        /* renamed from: b */
        public final WeakReference<AsyncTaskC1119b> f4972b;

        @VisibleForTesting
        public AsyncTaskC1119b(AbstractC1118a abstractC1118a) {
            this.f4971a = abstractC1118a;
            WeakReference<AsyncTaskC1119b> weakReference = new WeakReference<>(this);
            this.f4972b = weakReference;
            VideoDownloader.f4970a.add(weakReference);
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            Throwable th;
            HttpURLConnection httpURLConnection;
            BufferedInputStream bufferedInputStream;
            Exception e;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task tried to execute null or empty url.");
                return Boolean.FALSE;
            }
            String str = strArr[0];
            BufferedInputStream bufferedInputStream2 = null;
            try {
                httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                bufferedInputStream2 = null;
                HttpURLConnection httpURLConnection2 = httpURLConnection;
                try {
                    try {
                        bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    } catch (Exception e2) {
                        e = e2;
                        bufferedInputStream = null;
                    }
                } catch (Throwable th2) {
                    httpURLConnection = httpURLConnection2;
                    th = th2;
                }
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader encountered unexpected statusCode: " + responseCode);
                        Boolean bool = Boolean.FALSE;
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return bool;
                    }
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength <= 26214400) {
                        boolean putToDiskCache = CacheService.putToDiskCache(str, bufferedInputStream);
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return Boolean.valueOf(putToDiskCache);
                    }
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), 26214400));
                    Boolean bool2 = Boolean.FALSE;
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return bool2;
                } catch (Exception e3) {
                    e = e3;
                    MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "VideoDownloader task threw an internal exception.", e);
                    bufferedInputStream2 = bufferedInputStream;
                    httpURLConnection2 = httpURLConnection;
                    Boolean bool3 = Boolean.FALSE;
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return bool3;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream2 = bufferedInputStream;
                    Streams.closeStream(bufferedInputStream2);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                httpURLConnection = null;
                bufferedInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            if (isCancelled()) {
                onCancelled();
                return;
            }
            VideoDownloader.f4970a.remove(this.f4972b);
            if (bool == null) {
                this.f4971a.onComplete(false);
            } else {
                this.f4971a.onComplete(bool.booleanValue());
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task was cancelled.");
            VideoDownloader.f4970a.remove(this.f4972b);
            this.f4971a.onComplete(false);
        }
    }

    private VideoDownloader() {
    }

    /* renamed from: b */
    public static boolean m3512b(WeakReference<AsyncTaskC1119b> weakReference) {
        AsyncTaskC1119b asyncTaskC1119b;
        if (weakReference == null || (asyncTaskC1119b = weakReference.get()) == null) {
            return false;
        }
        return asyncTaskC1119b.cancel(true);
    }

    public static void cache(String str, AbstractC1118a abstractC1118a) {
        Preconditions.checkNotNull(abstractC1118a);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader attempted to cache video with null url.");
            abstractC1118a.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1119b(abstractC1118a), str);
        } catch (Exception e) {
            abstractC1118a.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<AsyncTaskC1119b> weakReference : f4970a) {
            m3512b(weakReference);
        }
        f4970a.clear();
    }

    public static void cancelLastDownloadTask() {
        Deque<WeakReference<AsyncTaskC1119b>> deque = f4970a;
        if (deque.isEmpty()) {
            return;
        }
        m3512b(deque.peekLast());
        deque.removeLast();
    }

    @Deprecated
    @VisibleForTesting
    public static void clearDownloaderTasks() {
        f4970a.clear();
    }

    @Deprecated
    @VisibleForTesting
    public static Deque<WeakReference<AsyncTaskC1119b>> getDownloaderTasks() {
        return f4970a;
    }
}
