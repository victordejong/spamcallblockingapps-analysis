package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.CompositeMediaSource;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.TransferListener;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/DurationProvidingMediaSource.class */
public class DurationProvidingMediaSource extends CompositeMediaSource<Void> {
    public Timeline mCurrentTimeline;
    public final MediaSource mMediaSource;

    public DurationProvidingMediaSource(MediaSource mediaSource) {
        this.mMediaSource = mediaSource;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return this.mMediaSource.createPeriod(mediaPeriodId, allocator, j);
    }

    public long getDurationMs() {
        Timeline timeline = this.mCurrentTimeline;
        return timeline == null ? C0463C.TIME_UNSET : timeline.getWindow(0, new Timeline.Window()).getDurationMs();
    }

    public void onChildSourceInfoRefreshed(Void r5, MediaSource mediaSource, Timeline timeline, @Nullable Object obj) {
        this.mCurrentTimeline = timeline;
        refreshSourceInfo(timeline, obj);
    }

    @Override // androidx.media2.exoplayer.external.source.CompositeMediaSource, androidx.media2.exoplayer.external.source.BaseMediaSource
    public void prepareSourceInternal(TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareChildSource(null, this.mMediaSource);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        this.mMediaSource.releasePeriod(mediaPeriod);
    }
}
