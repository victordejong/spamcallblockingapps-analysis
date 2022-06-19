package com.mopub.common;

import com.iab.omid.library.mopub.adsession.FriendlyObstructionPurpose;
/* JADX WARN: Init of enum BLUR can be incorrect */
/* JADX WARN: Init of enum COUNTDOWN_TIMER can be incorrect */
/* JADX WARN: Init of enum CTA_BUTTON can be incorrect */
/* JADX WARN: Init of enum INDUSTRY_ICON can be incorrect */
/* JADX WARN: Init of enum OTHER can be incorrect */
/* JADX WARN: Init of enum OVERLAY can be incorrect */
/* JADX WARN: Init of enum PROGRESS_BAR can be incorrect */
/* JADX WARN: Init of enum SKIP_BUTTON can be incorrect */
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ViewabilityObstruction.class */
public enum ViewabilityObstruction {
    VIDEO_CONTROLS(FriendlyObstructionPurpose.VIDEO_CONTROLS),
    CLOSE_BUTTON(FriendlyObstructionPurpose.CLOSE_AD),
    CTA_BUTTON(r0),
    SKIP_BUTTON(r0),
    INDUSTRY_ICON(r0),
    COUNTDOWN_TIMER(r0),
    OVERLAY(r0),
    BLUR(r0),
    PROGRESS_BAR(r0),
    NOT_VISIBLE(FriendlyObstructionPurpose.NOT_VISIBLE),
    OTHER(r0);
    

    /* renamed from: a */
    public FriendlyObstructionPurpose f8581a;

    static {
        FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
    }

    ViewabilityObstruction(FriendlyObstructionPurpose friendlyObstructionPurpose) {
        this.f8581a = friendlyObstructionPurpose;
    }
}
