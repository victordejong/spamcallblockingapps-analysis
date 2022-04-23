package net.pubnative.lite.sdk.utils;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/SoundUtils.class */
public class SoundUtils {
    public boolean isSoundMuted(Context context) {
        AudioManager audioManager;
        return context == null || (audioManager = (AudioManager) context.getSystemService("audio")) == null || audioManager.getStreamVolume(2) == 0;
    }
}
