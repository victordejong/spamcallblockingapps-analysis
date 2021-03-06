package com.verizon.ads.support;

import com.verizon.ads.AdSession;
import com.verizon.ads.AdSessionEvent;
import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/ImpressionEvent.class */
public class ImpressionEvent extends AdSessionEvent {
    public static final String IMPRESSION_EVENT_ID = "com.verizon.ads.impression";

    /* renamed from: a */
    static final Logger f61667a = Logger.getInstance(ImpressionEvent.class);
    public final long impressionTime;

    public ImpressionEvent(AdSession adSession) {
        super(adSession);
        if (adSession == null) {
            f61667a.m5565e("Impression event requires an AdSession object");
        }
        this.impressionTime = System.currentTimeMillis();
    }

    @Override // com.verizon.ads.AdSessionEvent
    public String toString() {
        return String.format("ImpressionEvent{impressionTime: %d, %s}", Long.valueOf(this.impressionTime), this.adSession);
    }
}
