package androidx.media;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.util.ObjectsCompat;
import androidx.media.AudioAttributesCompat;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioFocusRequestCompat.class */
public class AudioFocusRequestCompat {
    static final AudioAttributesCompat FOCUS_DEFAULT_ATTR = new AudioAttributesCompat.Builder().setUsage(1).build();
    private final AudioAttributesCompat mAudioAttributesCompat;
    private final Handler mFocusChangeHandler;
    private final int mFocusGain;
    private final Object mFrameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
    private final boolean mPauseOnDuck;

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioFocusRequestCompat$Builder.class */
    public static final class Builder {
        private AudioAttributesCompat mAudioAttributesCompat;
        private Handler mFocusChangeHandler;
        private int mFocusGain;
        private AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
        private boolean mPauseOnDuck;

        public Builder(int i) {
            this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
            setFocusGain(i);
        }

        public Builder(AudioFocusRequestCompat audioFocusRequestCompat) {
            this.mAudioAttributesCompat = AudioFocusRequestCompat.FOCUS_DEFAULT_ATTR;
            if (audioFocusRequestCompat != null) {
                this.mFocusGain = audioFocusRequestCompat.getFocusGain();
                this.mOnAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
                this.mFocusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
                this.mAudioAttributesCompat = audioFocusRequestCompat.getAudioAttributesCompat();
                this.mPauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
                return;
            }
            throw new IllegalArgumentException("AudioFocusRequestCompat to copy must not be null");
        }

        private static boolean isValidFocusGain(int i) {
            return i == 1 || i == 2 || i == 3 || i == 4;
        }

        public AudioFocusRequestCompat build() {
            if (this.mOnAudioFocusChangeListener != null) {
                return new AudioFocusRequestCompat(this.mFocusGain, this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, this.mPauseOnDuck);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        public Builder setAudioAttributes(AudioAttributesCompat audioAttributesCompat) {
            Objects.requireNonNull(audioAttributesCompat, "Illegal null AudioAttributes");
            this.mAudioAttributesCompat = audioAttributesCompat;
            return this;
        }

        public Builder setFocusGain(int i) {
            if (!isValidFocusGain(i)) {
                throw new IllegalArgumentException("Illegal audio focus gain type " + i);
            }
            int i2 = i;
            if (Build.VERSION.SDK_INT < 19) {
                i2 = i;
                if (i == 4) {
                    i2 = 2;
                }
            }
            this.mFocusGain = i2;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            return setOnAudioFocusChangeListener(onAudioFocusChangeListener, new Handler(Looper.getMainLooper()));
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            if (onAudioFocusChangeListener != null) {
                if (handler == null) {
                    throw new IllegalArgumentException("Handler must not be null");
                }
                this.mOnAudioFocusChangeListener = onAudioFocusChangeListener;
                this.mFocusChangeHandler = handler;
                return this;
            }
            throw new IllegalArgumentException("OnAudioFocusChangeListener must not be null");
        }

        public Builder setWillPauseWhenDucked(boolean z) {
            this.mPauseOnDuck = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat.class */
    public static class OnAudioFocusChangeListenerHandlerCompat implements Handler.Callback, AudioManager.OnAudioFocusChangeListener {
        private static final int FOCUS_CHANGE = 2782386;
        private final Handler mHandler;
        private final AudioManager.OnAudioFocusChangeListener mListener;

        OnAudioFocusChangeListenerHandlerCompat(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.mListener = onAudioFocusChangeListener;
            this.mHandler = new Handler(handler.getLooper(), this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == FOCUS_CHANGE) {
                this.mListener.onAudioFocusChange(message.arg1);
                return true;
            }
            return false;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            Handler handler = this.mHandler;
            handler.sendMessage(Message.obtain(handler, FOCUS_CHANGE, i, 0));
        }
    }

    AudioFocusRequestCompat(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributesCompat audioAttributesCompat, boolean z) {
        this.mFocusGain = i;
        this.mFocusChangeHandler = handler;
        this.mAudioAttributesCompat = audioAttributesCompat;
        this.mPauseOnDuck = z;
        if (Build.VERSION.SDK_INT >= 26 || handler.getLooper() == Looper.getMainLooper()) {
            this.mOnAudioFocusChangeListener = onAudioFocusChangeListener;
        } else {
            this.mOnAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(onAudioFocusChangeListener, handler);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.mFrameworkAudioFocusRequest = new AudioFocusRequest.Builder(i).setAudioAttributes(getAudioAttributes()).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(this.mOnAudioFocusChangeListener, handler).build();
        } else {
            this.mFrameworkAudioFocusRequest = null;
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        if (this.mFocusGain != audioFocusRequestCompat.mFocusGain || this.mPauseOnDuck != audioFocusRequestCompat.mPauseOnDuck || !ObjectsCompat.equals(this.mOnAudioFocusChangeListener, audioFocusRequestCompat.mOnAudioFocusChangeListener) || !ObjectsCompat.equals(this.mFocusChangeHandler, audioFocusRequestCompat.mFocusChangeHandler) || !ObjectsCompat.equals(this.mAudioAttributesCompat, audioFocusRequestCompat.mAudioAttributesCompat)) {
            z = false;
        }
        return z;
    }

    AudioAttributes getAudioAttributes() {
        AudioAttributesCompat audioAttributesCompat = this.mAudioAttributesCompat;
        return audioAttributesCompat != null ? (AudioAttributes) audioAttributesCompat.unwrap() : null;
    }

    public AudioAttributesCompat getAudioAttributesCompat() {
        return this.mAudioAttributesCompat;
    }

    public AudioFocusRequest getAudioFocusRequest() {
        return (AudioFocusRequest) this.mFrameworkAudioFocusRequest;
    }

    public Handler getFocusChangeHandler() {
        return this.mFocusChangeHandler;
    }

    public int getFocusGain() {
        return this.mFocusGain;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.mOnAudioFocusChangeListener;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Integer.valueOf(this.mFocusGain), this.mOnAudioFocusChangeListener, this.mFocusChangeHandler, this.mAudioAttributesCompat, Boolean.valueOf(this.mPauseOnDuck));
    }

    public boolean willPauseWhenDucked() {
        return this.mPauseOnDuck;
    }
}
