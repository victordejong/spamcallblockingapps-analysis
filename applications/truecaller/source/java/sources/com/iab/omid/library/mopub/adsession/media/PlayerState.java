package com.iab.omid.library.mopub.adsession.media;

import com.amazon.device.ads.DTBAdActivity;
import com.mopub.common.AdType;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/media/PlayerState.class */
public enum PlayerState {
    MINIMIZED("minimized"),
    COLLAPSED("collapsed"),
    NORMAL("normal"),
    EXPANDED(DTBAdActivity.EXPANDED),
    FULLSCREEN(AdType.FULLSCREEN);
    
    private final String playerState;

    PlayerState(String str) {
        this.playerState = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.playerState;
    }
}
