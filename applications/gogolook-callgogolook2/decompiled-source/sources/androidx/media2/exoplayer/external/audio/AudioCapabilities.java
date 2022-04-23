package androidx.media2.exoplayer.external.audio;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.provider.Settings;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
@TargetApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioCapabilities.class */
public final class AudioCapabilities {
    public static final int DEFAULT_MAX_CHANNEL_COUNT = 8;
    public static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    public final int maxChannelCount;
    public final int[] supportedEncodings;
    public static final AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new AudioCapabilities(new int[]{2}, 8);
    public static final AudioCapabilities EXTERNAL_SURROUND_SOUND_CAPABILITIES = new AudioCapabilities(new int[]{2, 5, 6}, 8);

    public AudioCapabilities(@Nullable int[] iArr, int i) {
        if (iArr != null) {
            this.supportedEncodings = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(this.supportedEncodings);
        } else {
            this.supportedEncodings = new int[0];
        }
        this.maxChannelCount = i;
    }

    public static boolean deviceMaySetExternalSurroundSoundGlobalSetting() {
        return Util.SDK_INT >= 17 && "Amazon".equals(Util.MANUFACTURER);
    }

    public static AudioCapabilities getCapabilities(Context context) {
        return getCapabilities(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    @SuppressLint({"InlinedApi"})
    public static AudioCapabilities getCapabilities(Context context, @Nullable Intent intent) {
        return (!deviceMaySetExternalSurroundSoundGlobalSetting() || Settings.Global.getInt(context.getContentResolver(), EXTERNAL_SURROUND_SOUND_KEY, 0) != 1) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? DEFAULT_AUDIO_CAPABILITIES : new AudioCapabilities(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : EXTERNAL_SURROUND_SOUND_CAPABILITIES;
    }

    @Nullable
    public static Uri getExternalSurroundSoundGlobalSettingUri() {
        return deviceMaySetExternalSurroundSoundGlobalSetting() ? Settings.Global.getUriFor(EXTERNAL_SURROUND_SOUND_KEY) : null;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        if (!Arrays.equals(this.supportedEncodings, audioCapabilities.supportedEncodings) || this.maxChannelCount != audioCapabilities.maxChannelCount) {
            z = false;
        }
        return z;
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public int hashCode() {
        return this.maxChannelCount + (Arrays.hashCode(this.supportedEncodings) * 31);
    }

    public boolean supportsEncoding(int i) {
        return Arrays.binarySearch(this.supportedEncodings, i) >= 0;
    }

    public String toString() {
        int i = this.maxChannelCount;
        String arrays = Arrays.toString(this.supportedEncodings);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
