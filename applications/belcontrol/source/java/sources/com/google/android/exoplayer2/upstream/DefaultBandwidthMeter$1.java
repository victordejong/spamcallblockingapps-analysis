package com.google.android.exoplayer2.upstream;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1.class */
public class DefaultBandwidthMeter$1 implements Runnable {
    public final /* synthetic */ DefaultBandwidthMeter this$0;
    public final /* synthetic */ long val$bitrate;
    public final /* synthetic */ long val$bytes;
    public final /* synthetic */ int val$elapsedMs;

    public DefaultBandwidthMeter$1(DefaultBandwidthMeter defaultBandwidthMeter, int i, long j, long j2) {
        this.this$0 = defaultBandwidthMeter;
        this.val$elapsedMs = i;
        this.val$bytes = j;
        this.val$bitrate = j2;
    }

    @Override // java.lang.Runnable
    public void run() {
        DefaultBandwidthMeter.access$100(this.this$0).onBandwidthSample(this.val$elapsedMs, this.val$bytes, this.val$bitrate);
    }
}
