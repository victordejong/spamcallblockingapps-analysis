package com.mopub.mobileads;

import androidx.annotation.NonNull;
import com.mopub.common.Constants;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker.class */
public class VideoViewabilityTracker extends VastTracker {
    @AbstractC10120c(Constants.VAST_TRACKER_PLAYTIME_MS)
    @AbstractC10118a

    /* renamed from: e */
    public final int f8816e;
    @AbstractC10120c(Constants.VAST_TRACKER_PERCENT_VIEWABLE)
    @AbstractC10118a

    /* renamed from: f */
    public final int f8817f;

    public VideoViewabilityTracker(int i, int i2, @NonNull String str) {
        super(str);
        this.f8816e = i;
        this.f8817f = i2;
    }

    public int getPercentViewable() {
        return this.f8817f;
    }

    public int getViewablePlaytimeMS() {
        return this.f8816e;
    }
}
