package com.verizon.ads.support;

import com.verizon.ads.AdSession;
import com.verizon.ads.AdSessionEvent;
import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/ClickEvent.class */
public class ClickEvent extends AdSessionEvent {
    public static final String CLICK_EVENT_ID = "com.verizon.ads.click";

    /* renamed from: a */
    static final Logger f61655a = Logger.getInstance(ClickEvent.class);
    public final long clickTime;

    public ClickEvent(AdSession adSession) {
        super(adSession);
        if (adSession == null) {
            f61655a.m5565e("Click event requires an AdSession object");
        }
        this.clickTime = System.currentTimeMillis();
    }

    @Override // com.verizon.ads.AdSessionEvent
    public String toString() {
        return String.format("ClickEvent{clickTime: %d, %s}", Long.valueOf(this.clickTime), this.adSession);
    }
}
