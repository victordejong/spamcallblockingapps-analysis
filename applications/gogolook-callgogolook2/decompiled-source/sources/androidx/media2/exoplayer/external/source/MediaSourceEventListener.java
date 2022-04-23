package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSourceEventListener.class */
public interface MediaSourceEventListener {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher.class */
    public static final class EventDispatcher {
        public final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;
        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final long mediaTimeOffsetMs;
        public final int windowIndex;

        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler.class */
        public static final class ListenerAndHandler {
            public final Handler handler;
            public final MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        public EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaTimeOffsetMs = j;
        }

        private long adjustMediaTime(long j) {
            long usToMs = C0463C.usToMs(j);
            long j2 = C0463C.TIME_UNSET;
            if (usToMs != C0463C.TIME_UNSET) {
                j2 = this.mediaTimeOffsetMs + usToMs;
            }
            return j2;
        }

        private void postOrRun(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.checkArgument((handler == null || mediaSourceEventListener == null) ? false : true);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public void downstreamFormatChanged(int i, @Nullable Format format, int i2, @Nullable Object obj, long j) {
            downstreamFormatChanged(new MediaLoadData(1, i, format, i2, obj, adjustMediaTime(j), C0463C.TIME_UNSET));
        }

        public void downstreamFormatChanged(final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, mediaLoadData) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$8
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSourceEventListener.MediaLoadData arg$3;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = mediaLoadData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37495x9a021abe(this.arg$2, this.arg$3);
                    }
                });
            }
        }

        /* renamed from: lambda$downstreamFormatChanged$8$MediaSourceEventListener$EventDispatcher */
        public final /* synthetic */ void m37495x9a021abe(MediaSourceEventListener mediaSourceEventListener, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        public final /* synthetic */ void lambda$loadCanceled$4$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public final /* synthetic */ void lambda$loadCompleted$3$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public final /* synthetic */ void lambda$loadError$5$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z);
        }

        public final /* synthetic */ void lambda$loadStarted$2$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* renamed from: lambda$mediaPeriodCreated$0$MediaSourceEventListener$EventDispatcher */
        public final /* synthetic */ void m37494xa9fff584(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId) {
            mediaSourceEventListener.onMediaPeriodCreated(this.windowIndex, mediaPeriodId);
        }

        /* renamed from: lambda$mediaPeriodReleased$1$MediaSourceEventListener$EventDispatcher */
        public final /* synthetic */ void m37493xb596e71e(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId) {
            mediaSourceEventListener.onMediaPeriodReleased(this.windowIndex, mediaPeriodId);
        }

        public final /* synthetic */ void lambda$readingStarted$6$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId) {
            mediaSourceEventListener.onReadingStarted(this.windowIndex, mediaPeriodId);
        }

        /* renamed from: lambda$upstreamDiscarded$7$MediaSourceEventListener$EventDispatcher */
        public final /* synthetic */ void m37492xcce9218(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public void loadCanceled(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, loadEventInfo, mediaLoadData) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$4
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSourceEventListener.LoadEventInfo arg$3;
                    public final MediaSourceEventListener.MediaLoadData arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = loadEventInfo;
                        this.arg$4 = mediaLoadData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$loadCanceled$4$MediaSourceEventListener$EventDispatcher(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        public void loadCanceled(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
            loadCanceled(new LoadEventInfo(dataSpec, uri, map, j3, j4, j5), new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void loadCanceled(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            loadCanceled(dataSpec, uri, map, i, -1, null, 0, null, C0463C.TIME_UNSET, C0463C.TIME_UNSET, j, j2, j3);
        }

        public void loadCompleted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, loadEventInfo, mediaLoadData) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$3
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSourceEventListener.LoadEventInfo arg$3;
                    public final MediaSourceEventListener.MediaLoadData arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = loadEventInfo;
                        this.arg$4 = mediaLoadData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$loadCompleted$3$MediaSourceEventListener$EventDispatcher(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        public void loadCompleted(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
            loadCompleted(new LoadEventInfo(dataSpec, uri, map, j3, j4, j5), new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void loadCompleted(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            loadCompleted(dataSpec, uri, map, i, -1, null, 0, null, C0463C.TIME_UNSET, C0463C.TIME_UNSET, j, j2, j3);
        }

        public void loadError(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, loadEventInfo, mediaLoadData, iOException, z) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$5
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSourceEventListener.LoadEventInfo arg$3;
                    public final MediaSourceEventListener.MediaLoadData arg$4;
                    public final IOException arg$5;
                    public final boolean arg$6;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = loadEventInfo;
                        this.arg$4 = mediaLoadData;
                        this.arg$5 = iOException;
                        this.arg$6 = z;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$loadError$5$MediaSourceEventListener$EventDispatcher(this.arg$2, this.arg$3, this.arg$4, this.arg$5, this.arg$6);
                    }
                });
            }
        }

        public void loadError(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            loadError(new LoadEventInfo(dataSpec, uri, map, j3, j4, j5), new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)), iOException, z);
        }

        public void loadError(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            loadError(dataSpec, uri, map, i, -1, null, 0, null, C0463C.TIME_UNSET, C0463C.TIME_UNSET, j, j2, j3, iOException, z);
        }

        public void loadStarted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, loadEventInfo, mediaLoadData) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$2
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSourceEventListener.LoadEventInfo arg$3;
                    public final MediaSourceEventListener.MediaLoadData arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = loadEventInfo;
                        this.arg$4 = mediaLoadData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$loadStarted$2$MediaSourceEventListener$EventDispatcher(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        public void loadStarted(DataSpec dataSpec, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3) {
            loadStarted(new LoadEventInfo(dataSpec, dataSpec.uri, Collections.emptyMap(), j3, 0L, 0L), new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void loadStarted(DataSpec dataSpec, int i, long j) {
            loadStarted(dataSpec, i, -1, null, 0, null, C0463C.TIME_UNSET, C0463C.TIME_UNSET, j);
        }

        public void mediaPeriodCreated() {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, mediaPeriodId) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$0
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSource.MediaPeriodId arg$3;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = mediaPeriodId;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37494xa9fff584(this.arg$2, this.arg$3);
                    }
                });
            }
        }

        public void mediaPeriodReleased() {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, mediaPeriodId) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$1
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSource.MediaPeriodId arg$3;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = mediaPeriodId;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37493xb596e71e(this.arg$2, this.arg$3);
                    }
                });
            }
        }

        public void readingStarted() {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, mediaPeriodId) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$6
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSource.MediaPeriodId arg$3;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = mediaPeriodId;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$readingStarted$6$MediaSourceEventListener$EventDispatcher(this.arg$2, this.arg$3);
                    }
                });
            }
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                if (next.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(next);
                }
            }
        }

        public void upstreamDiscarded(int i, long j, long j2) {
            upstreamDiscarded(new MediaLoadData(1, i, null, 3, null, adjustMediaTime(j), adjustMediaTime(j2)));
        }

        public void upstreamDiscarded(final MediaLoadData mediaLoadData) {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator<ListenerAndHandler> it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler next = it.next();
                final MediaSourceEventListener mediaSourceEventListener = next.listener;
                postOrRun(next.handler, new Runnable(this, mediaSourceEventListener, mediaPeriodId, mediaLoadData) { // from class: androidx.media2.exoplayer.external.source.MediaSourceEventListener$EventDispatcher$$Lambda$7
                    public final MediaSourceEventListener.EventDispatcher arg$1;
                    public final MediaSourceEventListener arg$2;
                    public final MediaSource.MediaPeriodId arg$3;
                    public final MediaSourceEventListener.MediaLoadData arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = mediaSourceEventListener;
                        this.arg$3 = mediaPeriodId;
                        this.arg$4 = mediaLoadData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37492xcce9218(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        @CheckResult
        public EventDispatcher withParameters(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j) {
            return new EventDispatcher(this.listenerAndHandlers, i, mediaPeriodId, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo.class */
    public static final class LoadEventInfo {
        public final long bytesLoaded;
        public final DataSpec dataSpec;
        public final long elapsedRealtimeMs;
        public final long loadDurationMs;
        public final Map<String, List<String>> responseHeaders;
        public final Uri uri;

        public LoadEventInfo(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.dataSpec = dataSpec;
            this.uri = uri;
            this.responseHeaders = map;
            this.elapsedRealtimeMs = j;
            this.loadDurationMs = j2;
            this.bytesLoaded = j3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData.class */
    public static final class MediaLoadData {
        public final int dataType;
        public final long mediaEndTimeMs;
        public final long mediaStartTimeMs;
        @Nullable
        public final Format trackFormat;
        @Nullable
        public final Object trackSelectionData;
        public final int trackSelectionReason;
        public final int trackType;

        public MediaLoadData(int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2) {
            this.dataType = i;
            this.trackType = i2;
            this.trackFormat = format;
            this.trackSelectionReason = i3;
            this.trackSelectionData = obj;
            this.mediaStartTimeMs = j;
            this.mediaEndTimeMs = j2;
        }
    }

    void onDownstreamFormatChanged(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void onLoadCanceled(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadCompleted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z);

    void onLoadStarted(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onMediaPeriodCreated(int i, MediaSource.MediaPeriodId mediaPeriodId);

    void onMediaPeriodReleased(int i, MediaSource.MediaPeriodId mediaPeriodId);

    void onReadingStarted(int i, MediaSource.MediaPeriodId mediaPeriodId);

    void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);
}
