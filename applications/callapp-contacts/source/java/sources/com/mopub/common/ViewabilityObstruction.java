package com.mopub.common;

import com.iab.omid.library.mopub.adsession.EnumC16355f;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ViewabilityObstruction.class */
public enum ViewabilityObstruction {
    VIDEO_CONTROLS(EnumC16355f.VIDEO_CONTROLS),
    CLOSE_BUTTON(EnumC16355f.CLOSE_AD),
    CTA_BUTTON(EnumC16355f.OTHER),
    SKIP_BUTTON(EnumC16355f.OTHER),
    INDUSTRY_ICON(EnumC16355f.OTHER),
    COUNTDOWN_TIMER(EnumC16355f.OTHER),
    OVERLAY(EnumC16355f.OTHER),
    BLUR(EnumC16355f.OTHER),
    PROGRESS_BAR(EnumC16355f.OTHER),
    NOT_VISIBLE(EnumC16355f.NOT_VISIBLE),
    OTHER(EnumC16355f.OTHER);
    
    EnumC16355f value;

    ViewabilityObstruction(EnumC16355f enumC16355f) {
        this.value = enumC16355f;
    }
}
