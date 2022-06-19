package androidx.media;

import android.media.AudioManager;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioManagerCompat.class */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    private static final String TAG = "AudioManCompat";

    private AudioManagerCompat() {
    }

    public static int abandonAudioFocusRequest(AudioManager audioManager, AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager != null) {
            if (audioFocusRequestCompat == null) {
                throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
            }
            return Build.VERSION.SDK_INT >= 26 ? audioManager.abandonAudioFocusRequest(audioFocusRequestCompat.getAudioFocusRequest()) : audioManager.abandonAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener());
        }
        throw new IllegalArgumentException("AudioManager must not be null");
    }

    public static int getStreamMaxVolume(AudioManager audioManager, int i) {
        return audioManager.getStreamMaxVolume(i);
    }

    public static int getStreamMinVolume(AudioManager audioManager, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return audioManager.getStreamMinVolume(i);
        }
        return 0;
    }

    public static int requestAudioFocus(AudioManager audioManager, AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager != null) {
            if (audioFocusRequestCompat == null) {
                throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
            }
            return Build.VERSION.SDK_INT >= 26 ? audioManager.requestAudioFocus(audioFocusRequestCompat.getAudioFocusRequest()) : audioManager.requestAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener(), audioFocusRequestCompat.getAudioAttributesCompat().getLegacyStreamType(), audioFocusRequestCompat.getFocusGain());
        }
        throw new IllegalArgumentException("AudioManager must not be null");
    }
}
