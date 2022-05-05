package androidx.media;

import android.media.AudioManager;
import android.os.Build;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioManagerCompat.class */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    public static final String TAG = "AudioManCompat";

    public static int abandonAudioFocusRequest(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager == null) {
            throw new IllegalArgumentException("AudioManager must not be null");
        } else if (audioFocusRequestCompat != null) {
            return Build.VERSION.SDK_INT >= 26 ? audioManager.abandonAudioFocusRequest(audioFocusRequestCompat.getAudioFocusRequest()) : audioManager.abandonAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener());
        } else {
            throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
        }
    }

    public static int requestAudioFocus(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager == null) {
            throw new IllegalArgumentException("AudioManager must not be null");
        } else if (audioFocusRequestCompat != null) {
            return Build.VERSION.SDK_INT >= 26 ? audioManager.requestAudioFocus(audioFocusRequestCompat.getAudioFocusRequest()) : audioManager.requestAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener(), audioFocusRequestCompat.getAudioAttributesCompat().getLegacyStreamType(), audioFocusRequestCompat.getFocusGain());
        } else {
            throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
        }
    }
}
