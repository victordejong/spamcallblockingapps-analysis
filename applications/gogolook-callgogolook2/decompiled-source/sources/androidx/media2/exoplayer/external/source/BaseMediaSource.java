package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlayer;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.ArrayList;
import java.util.Iterator;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/BaseMediaSource.class */
public abstract class BaseMediaSource implements MediaSource {
    @Nullable
    public Looper looper;
    @Nullable
    public Object manifest;
    @Nullable
    public Timeline timeline;
    public final ArrayList<MediaSource.SourceInfoRefreshListener> sourceInfoListeners = new ArrayList<>(1);
    public final MediaSourceEventListener.EventDispatcher eventDispatcher = new MediaSourceEventListener.EventDispatcher();

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public final void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        this.eventDispatcher.addEventListener(handler, mediaSourceEventListener);
    }

    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j) {
        return this.eventDispatcher.withParameters(i, mediaPeriodId, j);
    }

    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(@Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        return this.eventDispatcher.withParameters(0, mediaPeriodId, 0L);
    }

    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(MediaSource.MediaPeriodId mediaPeriodId, long j) {
        Assertions.checkArgument(mediaPeriodId != null);
        return this.eventDispatcher.withParameters(0, mediaPeriodId, j);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public Object getTag() {
        return MediaSource$$CC.getTag$$dflt$$(this);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener, TransferListener transferListener) {
        prepareSource(sourceInfoRefreshListener, transferListener);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public final void prepareSource(MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener, @Nullable TransferListener transferListener) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.looper;
        Assertions.checkArgument(looper == null || looper == myLooper);
        this.sourceInfoListeners.add(sourceInfoRefreshListener);
        if (this.looper == null) {
            this.looper = myLooper;
            prepareSourceInternal(transferListener);
            return;
        }
        Timeline timeline = this.timeline;
        if (timeline != null) {
            sourceInfoRefreshListener.onSourceInfoRefreshed(this, timeline, this.manifest);
        }
    }

    public abstract void prepareSourceInternal(@Nullable TransferListener transferListener);

    public final void refreshSourceInfo(Timeline timeline, @Nullable Object obj) {
        this.timeline = timeline;
        this.manifest = obj;
        Iterator<MediaSource.SourceInfoRefreshListener> it = this.sourceInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onSourceInfoRefreshed(this, timeline, obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public final void releaseSource(MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener) {
        this.sourceInfoListeners.remove(sourceInfoRefreshListener);
        if (this.sourceInfoListeners.isEmpty()) {
            this.looper = null;
            this.timeline = null;
            this.manifest = null;
            releaseSourceInternal();
        }
    }

    public abstract void releaseSourceInternal();

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public final void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
        this.eventDispatcher.removeEventListener(mediaSourceEventListener);
    }
}
