package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder.class */
public final class DefaultBandwidthMeter$Builder {
    private Handler eventHandler;
    private BandwidthMeter.EventListener eventListener;
    private long initialBitrateEstimate = C0515C.MICROS_PER_SECOND;
    private int slidingWindowMaxWeight = CredentialsApi.CREDENTIAL_PICKER_REQUEST_CODE;
    private Clock clock = Clock.DEFAULT;

    public DefaultBandwidthMeter build() {
        return new DefaultBandwidthMeter(this.eventHandler, this.eventListener, this.initialBitrateEstimate, this.slidingWindowMaxWeight, this.clock, (DefaultBandwidthMeter$1) null);
    }

    public DefaultBandwidthMeter$Builder setClock(Clock clock) {
        this.clock = clock;
        return this;
    }

    public DefaultBandwidthMeter$Builder setEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        Assertions.checkArgument((handler == null || eventListener == null) ? false : true);
        this.eventHandler = handler;
        this.eventListener = eventListener;
        return this;
    }

    public DefaultBandwidthMeter$Builder setInitialBitrateEstimate(long j) {
        this.initialBitrateEstimate = j;
        return this;
    }

    public DefaultBandwidthMeter$Builder setSlidingWindowMaxWeight(int i) {
        this.slidingWindowMaxWeight = i;
        return this;
    }
}
