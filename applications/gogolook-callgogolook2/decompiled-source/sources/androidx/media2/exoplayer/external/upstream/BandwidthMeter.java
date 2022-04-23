package androidx.media2.exoplayer.external.upstream;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/BandwidthMeter.class */
public interface BandwidthMeter {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener.class */
    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);
    }

    void addEventListener(Handler handler, EventListener eventListener);

    long getBitrateEstimate();

    @Nullable
    TransferListener getTransferListener();

    void removeEventListener(EventListener eventListener);
}
