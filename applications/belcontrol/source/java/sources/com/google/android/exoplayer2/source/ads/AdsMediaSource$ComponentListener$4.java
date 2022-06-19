package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.source.ads.AdsMediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$4.class */
public class AdsMediaSource$ComponentListener$4 implements Runnable {
    public final /* synthetic */ AdsMediaSource.ComponentListener this$1;
    public final /* synthetic */ AdsMediaSource$AdLoadException val$error;

    public AdsMediaSource$ComponentListener$4(AdsMediaSource.ComponentListener componentListener, AdsMediaSource$AdLoadException adsMediaSource$AdLoadException) {
        this.this$1 = componentListener;
        this.val$error = adsMediaSource$AdLoadException;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!AdsMediaSource.ComponentListener.access$200(this.this$1)) {
            if (this.val$error.type == 3) {
                AdsMediaSource.access$500(this.this$1.this$0).onInternalAdLoadError(this.val$error.getRuntimeExceptionForUnexpected());
            } else {
                AdsMediaSource.access$500(this.this$1.this$0).onAdLoadError(this.val$error);
            }
        }
    }
}
