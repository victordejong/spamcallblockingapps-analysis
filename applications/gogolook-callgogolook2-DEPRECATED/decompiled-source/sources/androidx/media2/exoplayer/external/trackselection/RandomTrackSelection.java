package androidx.media2.exoplayer.external.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.trackselection.RandomTrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import java.util.List;
import java.util.Random;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/RandomTrackSelection.class */
public final class RandomTrackSelection extends BaseTrackSelection {
    public final Random random;
    public int selectedIndex;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/RandomTrackSelection$Factory.class */
    public static final class Factory implements TrackSelection.Factory {
        public final Random random;

        public Factory() {
            this.random = new Random();
        }

        public Factory(int i) {
            this.random = new Random(i);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr) {
            return TrackSelection$Factory$$CC.createTrackSelection$$dflt$$(this, trackGroup, bandwidthMeter, iArr);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection[] createTrackSelections(TrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter) {
            return TrackSelectionUtil.createTrackSelectionsForDefinitions(definitionArr, new TrackSelectionUtil.AdaptiveTrackSelectionFactory(this) { // from class: androidx.media2.exoplayer.external.trackselection.RandomTrackSelection$Factory$$Lambda$0
                public final RandomTrackSelection.Factory arg$1;

                {
                    this.arg$1 = this;
                }

                @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
                public TrackSelection createAdaptiveTrackSelection(TrackSelection.Definition definition) {
                    return this.arg$1.lambda$createTrackSelections$0$RandomTrackSelection$Factory(definition);
                }
            });
        }

        public final /* synthetic */ TrackSelection lambda$createTrackSelections$0$RandomTrackSelection$Factory(TrackSelection.Definition definition) {
            return new RandomTrackSelection(definition.group, definition.tracks, this.random);
        }
    }

    public RandomTrackSelection(TrackGroup trackGroup, int... iArr) {
        super(trackGroup, iArr);
        this.random = new Random();
        this.selectedIndex = this.random.nextInt(this.length);
    }

    public RandomTrackSelection(TrackGroup trackGroup, int[] iArr, long j) {
        this(trackGroup, iArr, new Random(j));
    }

    public RandomTrackSelection(TrackGroup trackGroup, int[] iArr, Random random) {
        super(trackGroup, iArr);
        this.random = random;
        this.selectedIndex = random.nextInt(this.length);
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    @Nullable
    public Object getSelectionData() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int getSelectionReason() {
        return 3;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            i = i;
            if (!isBlacklisted(i2, elapsedRealtime)) {
                i++;
            }
        }
        this.selectedIndex = this.random.nextInt(i);
        if (i != this.length) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.length; i4++) {
                i3 = i3;
                if (!isBlacklisted(i4, elapsedRealtime)) {
                    if (this.selectedIndex == i3) {
                        this.selectedIndex = i4;
                        return;
                    }
                    i3++;
                }
            }
        }
    }
}
