package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlayer;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSource.class */
public interface MediaSource {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId.class */
    public static final class MediaPeriodId {
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final int nextAdGroupIndex;
        public final Object periodUid;
        public final long windowSequenceNumber;

        public MediaPeriodId(Object obj) {
            this(obj, -1L);
        }

        public MediaPeriodId(Object obj, int i, int i2, long j) {
            this(obj, i, i2, j, -1);
        }

        public MediaPeriodId(Object obj, int i, int i2, long j, int i3) {
            this.periodUid = obj;
            this.adGroupIndex = i;
            this.adIndexInAdGroup = i2;
            this.windowSequenceNumber = j;
            this.nextAdGroupIndex = i3;
        }

        public MediaPeriodId(Object obj, long j) {
            this(obj, -1, -1, j, -1);
        }

        public MediaPeriodId(Object obj, long j, int i) {
            this(obj, -1, -1, j, i);
        }

        public MediaPeriodId copyWithPeriodUid(Object obj) {
            return this.periodUid.equals(obj) ? this : new MediaPeriodId(obj, this.adGroupIndex, this.adIndexInAdGroup, this.windowSequenceNumber, this.nextAdGroupIndex);
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || MediaPeriodId.class != obj.getClass()) {
                return false;
            }
            MediaPeriodId mediaPeriodId = (MediaPeriodId) obj;
            if (!(this.periodUid.equals(mediaPeriodId.periodUid) && this.adGroupIndex == mediaPeriodId.adGroupIndex && this.adIndexInAdGroup == mediaPeriodId.adIndexInAdGroup && this.windowSequenceNumber == mediaPeriodId.windowSequenceNumber && this.nextAdGroupIndex == mediaPeriodId.nextAdGroupIndex)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((527 + this.periodUid.hashCode()) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup) * 31) + ((int) this.windowSequenceNumber)) * 31) + this.nextAdGroupIndex;
        }

        public boolean isAd() {
            return this.adGroupIndex != -1;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener.class */
    public interface SourceInfoRefreshListener {
        void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline, @Nullable Object obj);
    }

    void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener);

    MediaPeriod createPeriod(MediaPeriodId mediaPeriodId, Allocator allocator, long j);

    @Nullable
    Object getTag();

    void maybeThrowSourceInfoRefreshError() throws IOException;

    @Deprecated
    void prepareSource(ExoPlayer exoPlayer, boolean z, SourceInfoRefreshListener sourceInfoRefreshListener, @Nullable TransferListener transferListener);

    void prepareSource(SourceInfoRefreshListener sourceInfoRefreshListener, @Nullable TransferListener transferListener);

    void releasePeriod(MediaPeriod mediaPeriod);

    void releaseSource(SourceInfoRefreshListener sourceInfoRefreshListener);

    void removeEventListener(MediaSourceEventListener mediaSourceEventListener);
}
