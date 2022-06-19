package com.google.android.exoplayer2.upstream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/BandwidthMeter.class */
public interface BandwidthMeter {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/BandwidthMeter$EventListener.class */
    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);
    }

    long getBitrateEstimate();
}
