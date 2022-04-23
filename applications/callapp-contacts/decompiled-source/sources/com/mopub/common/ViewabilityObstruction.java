package com.mopub.common;

import com.iab.omid.library.mopub.adsession.f;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityObstruction.class */
public enum ViewabilityObstruction {
    VIDEO_CONTROLS(f.VIDEO_CONTROLS),
    CLOSE_BUTTON(f.CLOSE_AD),
    CTA_BUTTON(f.OTHER),
    SKIP_BUTTON(f.OTHER),
    INDUSTRY_ICON(f.OTHER),
    COUNTDOWN_TIMER(f.OTHER),
    OVERLAY(f.OTHER),
    BLUR(f.OTHER),
    PROGRESS_BAR(f.OTHER),
    NOT_VISIBLE(f.NOT_VISIBLE),
    OTHER(f.OTHER);
    
    f value;

    ViewabilityObstruction(f fVar) {
        this.value = fVar;
    }
}
