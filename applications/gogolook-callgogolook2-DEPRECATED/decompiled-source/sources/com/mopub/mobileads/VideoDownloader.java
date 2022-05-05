package com.mopub.mobileads;

import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    public static final Deque<WeakReference<AsyncTaskC3870b>> f8811a = new ArrayDeque();

    /* renamed from: com.mopub.mobileads.VideoDownloader$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoDownloader$a.class */
    public interface AbstractC3869a {
        void onComplete(boolean z);
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mobileads.VideoDownloader$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoDownloader$b.class */
    public static class AsyncTaskC3870b extends AsyncTask<String, Void, Boolean> {
        @NonNull

        /* renamed from: a */
        public final AbstractC3869a f8812a;
        @NonNull

        /* renamed from: b */
        public final WeakReference<AsyncTaskC3870b> f8813b = new WeakReference<>(this);

        @VisibleForTesting
        public AsyncTaskC3870b(@NonNull AbstractC3869a aVar) {
            this.f8812a = aVar;
            VideoDownloader.f8811a.add(this.f8813b);
        }

        /* JADX WARN: Not initialized variable reg: 16, insn: 0x010a: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x0107 */
        /* JADX WARN: Not initialized variable reg: 17, insn: 0x0107: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x0107 */
        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            BufferedInputStream bufferedInputStream;
            Throwable th;
            HttpURLConnection httpURLConnection;
            BufferedInputStream bufferedInputStream2;
            Exception e;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task tried to execute null or empty url.");
                return false;
            }
            String str = strArr[0];
            try {
                try {
                    httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                    try {
                        bufferedInputStream2 = new BufferedInputStream(httpURLConnection.getInputStream());
                    } catch (Exception e2) {
                        e = e2;
                        bufferedInputStream2 = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader encountered unexpected statusCode: " + responseCode);
                        Streams.closeStream(bufferedInputStream2);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return false;
                    }
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength > 26214400) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), Integer.valueOf((int) com.aotter.net.trek.network.VideoDownloader.f1563a)));
                        Streams.closeStream(bufferedInputStream2);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return false;
                    }
                    boolean putToDiskCache = CacheService.putToDiskCache(str, bufferedInputStream2);
                    Streams.closeStream(bufferedInputStream2);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return Boolean.valueOf(putToDiskCache);
                } catch (Exception e3) {
                    e = e3;
                    MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "VideoDownloader task threw an internal exception.", e);
                    Streams.closeStream(bufferedInputStream2);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream = bufferedInputStream2;
                    Streams.closeStream(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                httpURLConnection = null;
                bufferedInputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
                bufferedInputStream = null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (isCancelled()) {
                onCancelled();
                return;
            }
            VideoDownloader.f8811a.remove(this.f8813b);
            if (bool == null) {
                this.f8812a.onComplete(false);
            } else {
                this.f8812a.onComplete(bool.booleanValue());
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task was cancelled.");
            VideoDownloader.f8811a.remove(this.f8813b);
            this.f8812a.onComplete(false);
        }
    }

    /* renamed from: a */
    public static boolean m30359a(@Nullable WeakReference<AsyncTaskC3870b> weakReference) {
        AsyncTaskC3870b bVar;
        if (weakReference == null || (bVar = weakReference.get()) == null) {
            return false;
        }
        return bVar.cancel(true);
    }

    public static void cache(@Nullable String str, @NonNull AbstractC3869a aVar) {
        Preconditions.checkNotNull(aVar);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader attempted to cache video with null url.");
            aVar.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC3870b(aVar), str);
        } catch (Exception e) {
            aVar.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<AsyncTaskC3870b> weakReference : f8811a) {
            m30359a(weakReference);
        }
        f8811a.clear();
    }

    public static void cancelLastDownloadTask() {
        if (!f8811a.isEmpty()) {
            m30359a(f8811a.peekLast());
            f8811a.removeLast();
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearDownloaderTasks() {
        f8811a.clear();
    }

    @Deprecated
    @VisibleForTesting
    public static Deque<WeakReference<AsyncTaskC3870b>> getDownloaderTasks() {
        return f8811a;
    }
}
