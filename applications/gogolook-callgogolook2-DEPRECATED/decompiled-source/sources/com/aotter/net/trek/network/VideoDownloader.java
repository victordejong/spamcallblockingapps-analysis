package com.aotter.net.trek.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.AsyncTasks;
import com.aotter.net.trek.util.TrekLog;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/VideoDownloader.class */
public class VideoDownloader {

    /* renamed from: a */
    public static final int f1563a = 26214400;

    /* renamed from: b */
    public static final Deque<WeakReference<AsyncTaskC1763i>> f1564b = new ArrayDeque();

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/VideoDownloader$VideoDownloaderListener.class */
    public interface VideoDownloaderListener {
        void onComplete(boolean z);
    }

    /* renamed from: a */
    public static boolean m36333a(@Nullable WeakReference<AsyncTaskC1763i> weakReference) {
        AsyncTaskC1763i iVar;
        if (weakReference == null || (iVar = weakReference.get()) == null) {
            return false;
        }
        return iVar.cancel(true);
    }

    public static void cache(@Nullable String str, @Nullable String str2, @NonNull VideoDownloaderListener videoDownloaderListener) {
        Preconditions.checkNotNull(videoDownloaderListener);
        if (str2 == null) {
            TrekLog.m36319d("VideoDownloader attempted to cache video with null url.");
            videoDownloaderListener.onComplete(false);
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1763i(videoDownloaderListener), str2, str);
        } catch (Exception e) {
            videoDownloaderListener.onComplete(false);
        }
    }

    public static void cancelAllDownloaderTasks() {
        for (WeakReference<AsyncTaskC1763i> weakReference : f1564b) {
            m36333a(weakReference);
        }
        f1564b.clear();
    }

    public static void cancelLastDownloadTask() {
        if (!f1564b.isEmpty()) {
            m36333a(f1564b.peekLast());
            f1564b.removeLast();
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearDownloaderTasks() {
        f1564b.clear();
    }

    @Deprecated
    @VisibleForTesting
    public static Deque<WeakReference<AsyncTaskC1763i>> getDownloaderTasks() {
        return f1564b;
    }
}
