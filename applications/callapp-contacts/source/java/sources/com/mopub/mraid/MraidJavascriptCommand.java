package com.mopub.mraid;

import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidJavascriptCommand.class */
public enum MraidJavascriptCommand {
    CLOSE(EventConstants.CLOSE),
    EXPAND("expand") { // from class: com.mopub.mraid.MraidJavascriptCommand.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mopub.mraid.MraidJavascriptCommand
        public final boolean requiresClick(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    USE_CUSTOM_CLOSE("usecustomclose"),
    OPEN("open") { // from class: com.mopub.mraid.MraidJavascriptCommand.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mopub.mraid.MraidJavascriptCommand
        public final boolean requiresClick(PlacementType placementType) {
            return true;
        }
    },
    RESIZE("resize") { // from class: com.mopub.mraid.MraidJavascriptCommand.3
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mopub.mraid.MraidJavascriptCommand
        public final boolean requiresClick(PlacementType placementType) {
            return true;
        }
    },
    SET_ORIENTATION_PROPERTIES("setOrientationProperties"),
    PLAY_VIDEO("playVideo") { // from class: com.mopub.mraid.MraidJavascriptCommand.4
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mopub.mraid.MraidJavascriptCommand
        public final boolean requiresClick(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    STORE_PICTURE(MRAIDNativeFeature.STORE_PICTURE) { // from class: com.mopub.mraid.MraidJavascriptCommand.5
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mopub.mraid.MraidJavascriptCommand
        public final boolean requiresClick(PlacementType placementType) {
            return true;
        }
    },
    CREATE_CALENDAR_EVENT("createCalendarEvent") { // from class: com.mopub.mraid.MraidJavascriptCommand.6
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.mopub.mraid.MraidJavascriptCommand
        public final boolean requiresClick(PlacementType placementType) {
            return true;
        }
    },
    UNSPECIFIED("");
    
    private final String mJavascriptString;

    MraidJavascriptCommand(String str) {
        this.mJavascriptString = str;
    }

    public static MraidJavascriptCommand fromJavascriptString(String str) {
        MraidJavascriptCommand[] values;
        for (MraidJavascriptCommand mraidJavascriptCommand : values()) {
            if (mraidJavascriptCommand.mJavascriptString.equals(str)) {
                return mraidJavascriptCommand;
            }
        }
        return UNSPECIFIED;
    }

    public boolean requiresClick(PlacementType placementType) {
        return false;
    }

    public String toJavascriptString() {
        return this.mJavascriptString;
    }
}
