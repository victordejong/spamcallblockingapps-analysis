package androidx.media2.exoplayer.external.trackselection;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.trackselection.FixedTrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/FixedTrackSelection.class */
public final class FixedTrackSelection extends BaseTrackSelection {
    @Nullable
    public final Object data;
    public final int reason;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/FixedTrackSelection$Factory.class */
    public static final class Factory implements TrackSelection.Factory {
        @Nullable
        public final Object data;
        public final int reason;

        public Factory() {
            this.reason = 0;
            this.data = null;
        }

        public Factory(int i, @Nullable Object obj) {
            this.reason = i;
            this.data = obj;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr) {
            return TrackSelection$Factory$$CC.createTrackSelection$$dflt$$(this, trackGroup, bandwidthMeter, iArr);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection[] createTrackSelections(TrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter) {
            return TrackSelectionUtil.createTrackSelectionsForDefinitions(definitionArr, new TrackSelectionUtil.AdaptiveTrackSelectionFactory(this) { // from class: androidx.media2.exoplayer.external.trackselection.FixedTrackSelection$Factory$$Lambda$0
                public final FixedTrackSelection.Factory arg$1;

                {
                    this.arg$1 = this;
                }

                @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
                public TrackSelection createAdaptiveTrackSelection(TrackSelection.Definition definition) {
                    return this.arg$1.lambda$createTrackSelections$0$FixedTrackSelection$Factory(definition);
                }
            });
        }

        public final /* synthetic */ TrackSelection lambda$createTrackSelections$0$FixedTrackSelection$Factory(TrackSelection.Definition definition) {
            return new FixedTrackSelection(definition.group, definition.tracks[0], this.reason, this.data);
        }
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i) {
        this(trackGroup, i, 0, null);
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i, int i2, @Nullable Object obj) {
        super(trackGroup, i);
        this.reason = i2;
        this.data = obj;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int getSelectedIndex() {
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    @Nullable
    public Object getSelectionData() {
        return this.data;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
    }
}
