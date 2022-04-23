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

    /* renamed from: a  reason: collision with root package name */
    private static final Deque<WeakReference<b>> f34359a = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoDownloader$a.class */
    public interface a {
        void onComplete(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoDownloader$b.class */
    public static final class b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final a f34360a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<b> f34361b;

        b(a aVar) {
            this.f34360a = aVar;
            WeakReference<b> weakReference = new WeakReference<>(this);
            this.f34361b = weakReference;
            VideoDownloader.f34359a.add(weakReference);
        }

        /* JADX WARN: Not initialized variable reg: 15, insn: 0x00f3: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:45:0x00f3 */
        private static Boolean a(String... strArr) {
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
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader encountered unexpected statusCode: ".concat(String.valueOf(responseCode)));
                        Boolean bool = Boolean.FALSE;
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return bool;
                    }
                    int contentLength = httpURLConnection.getContentLength();
                    if (contentLength > 26214400) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum).", Integer.valueOf(contentLength), 26214400));
                        Boolean bool2 = Boolean.FALSE;
                        Streams.closeStream(bufferedInputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return bool2;
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
            return a(strArr);
        }

        @Override // android.os.AsyncTask
        protected final void onCancelled() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task was cancelled.");
            VideoDownloader.f34359a.remove(this.f34361b);
            this.f34360a.onComplete(false);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            if (isCancelled()) {
                onCancelled();
                return;
            }
            VideoDownloader.f34359a.remove(this.f34361b);
            if (bool2 == null) {
                this.f34360a.onComplete(false);
            } else {
                this.f34360a.onComplete(bool2.booleanValue());
            }
        }
    }

    private VideoDownloader() {
    }

    private static boolean a(WeakReference<b> weakReference) {
        b bVar;
        if (weakReference == null || (bVar = weakReference.get()) == null) {
            return false;
        }
        return bVar.cancel(true);
    }

    public static void cache(String str, a aVar) {
        Preconditions.checkNotNull(aVar);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader attempted to cache video with null url.");
            aVar.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new b(aVar), str);
        } catch (Exception e) {
            aVar.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<b> weakReference : f34359a) {
            a(weakReference);
        }
        f34359a.clear();
    }

    public static void cancelLastDownloadTask() {
        Deque<WeakReference<b>> deque = f34359a;
        if (!deque.isEmpty()) {
            a(deque.peekLast());
            deque.removeLast();
        }
    }

    @Deprecated
    public static void clearDownloaderTasks() {
        f34359a.clear();
    }

    @Deprecated
    public static Deque<WeakReference<b>> getDownloaderTasks() {
        return f34359a;
    }
}
