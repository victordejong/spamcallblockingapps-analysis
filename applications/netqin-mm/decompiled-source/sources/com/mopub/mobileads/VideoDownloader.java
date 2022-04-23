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
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoDownloader.class */
public class VideoDownloader {

    /* renamed from: a */
    public static final Deque<WeakReference<AsyncTaskC8839b>> f34421a = new ArrayDeque();

    /* renamed from: com.mopub.mobileads.VideoDownloader$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoDownloader$a.class */
    public interface AbstractC8838a {
        void onComplete(boolean z);
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mobileads.VideoDownloader$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoDownloader$b.class */
    public static class AsyncTaskC8839b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        public final AbstractC8838a f34422a;

        /* renamed from: b */
        public final WeakReference<AsyncTaskC8839b> f34423b = new WeakReference<>(this);

        @VisibleForTesting
        public AsyncTaskC8839b(AbstractC8838a aVar) {
            this.f34422a = aVar;
            VideoDownloader.f34421a.add(this.f34423b);
        }

        /* JADX WARN: Not initialized variable reg: 17, insn: 0x010a: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x010a */
        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            Throwable th;
            HttpURLConnection httpURLConnection;
            BufferedInputStream bufferedInputStream;
            Exception e;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task tried to execute null or empty url.");
                return false;
            }
            String str = strArr[0];
            BufferedInputStream bufferedInputStream2 = null;
            try {
                try {
                    httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                    try {
                        bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    } catch (Exception e2) {
                        e = e2;
                        bufferedInputStream = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader encountered unexpected statusCode: " + responseCode);
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return false;
                    }
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength > 26214400) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), 26214400));
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return false;
                    }
                    boolean putToDiskCache = CacheService.putToDiskCache(str, bufferedInputStream);
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return Boolean.valueOf(putToDiskCache);
                } catch (Exception e3) {
                    e = e3;
                    MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "VideoDownloader task threw an internal exception.", e);
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return false;
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

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (isCancelled()) {
                onCancelled();
                return;
            }
            VideoDownloader.f34421a.remove(this.f34423b);
            if (bool == null) {
                this.f34422a.onComplete(false);
            } else {
                this.f34422a.onComplete(bool.booleanValue());
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task was cancelled.");
            VideoDownloader.f34421a.remove(this.f34423b);
            this.f34422a.onComplete(false);
        }
    }

    /* renamed from: a */
    public static boolean m4167a(WeakReference<AsyncTaskC8839b> weakReference) {
        AsyncTaskC8839b bVar;
        if (weakReference == null || (bVar = weakReference.get()) == null) {
            return false;
        }
        return bVar.cancel(true);
    }

    public static void cache(String str, AbstractC8838a aVar) {
        Preconditions.checkNotNull(aVar);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader attempted to cache video with null url.");
            aVar.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC8839b(aVar), str);
        } catch (Exception e) {
            aVar.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<AsyncTaskC8839b> weakReference : f34421a) {
            m4167a(weakReference);
        }
        f34421a.clear();
    }

    public static void cancelLastDownloadTask() {
        if (!f34421a.isEmpty()) {
            m4167a(f34421a.peekLast());
            f34421a.removeLast();
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearDownloaderTasks() {
        f34421a.clear();
    }

    @Deprecated
    @VisibleForTesting
    public static Deque<WeakReference<AsyncTaskC8839b>> getDownloaderTasks() {
        return f34421a;
    }
}
