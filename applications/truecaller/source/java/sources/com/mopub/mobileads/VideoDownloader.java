package com.mopub.mobileads;

import android.os.AsyncTask;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoDownloader.class */
public class VideoDownloader {

    /* renamed from: a */
    public static final Deque<WeakReference<AsyncTaskC2676b>> f8958a = new ArrayDeque();

    /* renamed from: com.mopub.mobileads.VideoDownloader$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoDownloader$a.class */
    public interface AbstractC2675a {
        void onComplete(boolean z);
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mobileads.VideoDownloader$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VideoDownloader$b.class */
    public static class AsyncTaskC2676b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        public final AbstractC2675a f8959a;

        /* renamed from: b */
        public final WeakReference<AsyncTaskC2676b> f8960b;

        @VisibleForTesting
        public AsyncTaskC2676b(AbstractC2675a abstractC2675a) {
            this.f8959a = abstractC2675a;
            WeakReference<AsyncTaskC2676b> weakReference = new WeakReference<>(this);
            this.f8960b = weakReference;
            VideoDownloader.f8958a.add(weakReference);
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x0130, code lost:
            if (r11 == null) goto L50;
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.String[] r11) {
            /*
                Method dump skipped, instructions count: 353
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VideoDownloader.AsyncTaskC2676b.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader task was cancelled.");
            VideoDownloader.f8958a.remove(this.f8960b);
            this.f8959a.onComplete(false);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            if (isCancelled()) {
                onCancelled();
                return;
            }
            VideoDownloader.f8958a.remove(this.f8960b);
            if (bool2 == null) {
                this.f8959a.onComplete(false);
            } else {
                this.f8959a.onComplete(bool2.booleanValue());
            }
        }
    }

    private VideoDownloader() {
    }

    /* renamed from: a */
    public static boolean m36214a(WeakReference<AsyncTaskC2676b> weakReference) {
        AsyncTaskC2676b asyncTaskC2676b;
        if (weakReference == null || (asyncTaskC2676b = weakReference.get()) == null) {
            return false;
        }
        return asyncTaskC2676b.cancel(true);
    }

    public static void cache(String str, AbstractC2675a abstractC2675a) {
        Preconditions.checkNotNull(abstractC2675a);
        if (str == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VideoDownloader attempted to cache video with null url.");
            abstractC2675a.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC2676b(abstractC2675a), str);
        } catch (Exception e) {
            abstractC2675a.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<AsyncTaskC2676b> weakReference : f8958a) {
            m36214a(weakReference);
        }
        f8958a.clear();
    }

    public static void cancelLastDownloadTask() {
        Deque<WeakReference<AsyncTaskC2676b>> deque = f8958a;
        if (deque.isEmpty()) {
            return;
        }
        m36214a(deque.peekLast());
        deque.removeLast();
    }

    @Deprecated
    @VisibleForTesting
    public static void clearDownloaderTasks() {
        f8958a.clear();
    }

    @Deprecated
    @VisibleForTesting
    public static Deque<WeakReference<AsyncTaskC2676b>> getDownloaderTasks() {
        return f8958a;
    }
}
