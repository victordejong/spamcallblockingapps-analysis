package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
@Deprecated
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/DynamicConcatenatingMediaSource.class */
public final class DynamicConcatenatingMediaSource extends ConcatenatingMediaSource {
    @Deprecated
    public DynamicConcatenatingMediaSource() {
        super(new MediaSource[0]);
    }

    @Deprecated
    public DynamicConcatenatingMediaSource(boolean z) {
        super(z, new MediaSource[0]);
    }

    @Deprecated
    public DynamicConcatenatingMediaSource(boolean z, ShuffleOrder shuffleOrder) {
        super(z, shuffleOrder, new MediaSource[0]);
    }
}
