package com.mopub.mobileads;

import android.os.AsyncTask;
import com.mopub.common.CacheService;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Streams;
import java.io.BufferedInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoDownloader.class */
public class VideoDownloader {

    /* renamed from: a */
    private static final Deque<WeakReference<AsyncTaskC16845b>> f59642a = new ArrayDeque();

    /* renamed from: com.mopub.mobileads.VideoDownloader$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoDownloader$a.class */
    public interface AbstractC16844a {
        void onComplete(boolean z);
    }

    /* renamed from: com.mopub.mobileads.VideoDownloader$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoDownloader$b.class */
    public static final class AsyncTaskC16845b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private final AbstractC16844a f59643a;

        /* renamed from: b */
        private final WeakReference<AsyncTaskC16845b> f59644b;

        AsyncTaskC16845b(AbstractC16844a abstractC16844a) {
            this.f59643a = abstractC16844a;
            WeakReference<AsyncTaskC16845b> weakReference = new WeakReference<>(this);
            this.f59644b = weakReference;
            VideoDownloader.f59642a.add(weakReference);
        }

        /* JADX WARN: Not initialized variable reg: 15, insn: 0x00f3: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x00f3 */
        /* renamed from: a */
        private static Boolean m6356a(String... strArr) {
            Throwable th;
            HttpURLConnection httpURLConnection;
            BufferedInputStream bufferedInputStream;
            Exception e;
            HttpURLConnection httpURLConnection2;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task tried to execute null or empty url.");
                return Boolean.FALSE;
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
                    httpURLConnection = httpURLConnection2;
                    th = th2;
                }
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader encountered unexpected statusCode: ".concat(String.valueOf(responseCode)));
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
                    BufferedInputStream bufferedInputStream3 = bufferedInputStream;
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

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            return m6356a(strArr);
        }

        @Override // android.os.AsyncTask
        protected final void onCancelled() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task was cancelled.");
            VideoDownloader.f59642a.remove(this.f59644b);
            this.f59643a.onComplete(false);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            if (isCancelled()) {
                onCancelled();
                return;
            }
            VideoDownloader.f59642a.remove(this.f59644b);
            if (bool2 == null) {
                this.f59643a.onComplete(false);
            } else {
                this.f59643a.onComplete(bool2.booleanValue());
            }
        }
    }

    private VideoDownloader() {
    }

    /* renamed from: a */
    private static boolean m6357a(WeakReference<AsyncTaskC16845b> weakReference) {
        AsyncTaskC16845b asyncTaskC16845b;
        if (weakReference == null || (asyncTaskC16845b = weakReference.get()) == null) {
            return false;
        }
        return asyncTaskC16845b.cancel(true);
    }

    public static void cache(String str, AbstractC16844a abstractC16844a) {
        Preconditions.checkNotNull(abstractC16844a);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader attempted to cache video with null url.");
            abstractC16844a.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC16845b(abstractC16844a), str);
        } catch (Exception e) {
            abstractC16844a.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<AsyncTaskC16845b> weakReference : f59642a) {
            m6357a(weakReference);
        }
        f59642a.clear();
    }

    public static void cancelLastDownloadTask() {
        Deque<WeakReference<AsyncTaskC16845b>> deque = f59642a;
        if (deque.isEmpty()) {
            return;
        }
        m6357a(deque.peekLast());
        deque.removeLast();
    }

    @Deprecated
    public static void clearDownloaderTasks() {
        f59642a.clear();
    }

    @Deprecated
    public static Deque<WeakReference<AsyncTaskC16845b>> getDownloaderTasks() {
        return f59642a;
    }
}
