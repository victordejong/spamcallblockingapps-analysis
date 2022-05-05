package androidx.media2.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media.AudioAttributesCompat;
import androidx.media2.exoplayer.external.util.MimeTypes;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@VisibleForTesting(otherwise = 3)
/* loaded from: classes-dex2jar.jar:androidx/media2/player/AudioFocusHandler.class */
public class AudioFocusHandler {
    public static final boolean DEBUG = true;
    public static final String TAG = "AudioFocusHandler";
    public final AudioFocusHandlerImpl mImpl;

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/AudioFocusHandler$AudioFocusHandlerImpl.class */
    public interface AudioFocusHandlerImpl {
        void close();

        void onPause();

        boolean onPlay();

        void onReset();

        void sendIntent(Intent intent);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase.class */
    public static class AudioFocusHandlerImplBase implements AudioFocusHandlerImpl {
        public static final float VOLUME_DUCK_FACTOR = 0.2f;
        @GuardedBy("mLock")
        public AudioAttributesCompat mAudioAttributes;
        public final AudioManager mAudioManager;
        @GuardedBy("mLock")
        public boolean mBecomingNoisyReceiverRegistered;
        public final Context mContext;
        @GuardedBy("mLock")
        public int mCurrentFocusGainType;
        public final MediaPlayer mPlayer;
        @GuardedBy("mLock")
        public boolean mResumeWhenAudioFocusGain;
        public final BroadcastReceiver mBecomingNoisyReceiver = new BecomingNoisyReceiver();
        public final IntentFilter mIntentFilter = new IntentFilter("android.media.AUDIO_BECOMING_NOISY");
        public final AudioManager.OnAudioFocusChangeListener mAudioFocusListener = new AudioFocusListener();
        public final Object mLock = new Object();

        /* loaded from: classes-dex2jar.jar:androidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener.class */
        public class AudioFocusListener implements AudioManager.OnAudioFocusChangeListener {
            public float mPlayerDuckingVolume;
            public float mPlayerVolumeBeforeDucking;

            public AudioFocusListener() {
            }

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                boolean z = false;
                if (i == -3) {
                    Object obj = AudioFocusHandlerImplBase.this.mLock;
                    synchronized (obj) {
                        if (AudioFocusHandlerImplBase.this.mAudioAttributes != null) {
                            if (AudioFocusHandlerImplBase.this.mAudioAttributes.getContentType() == 1) {
                                z = true;
                            }
                            if (z) {
                                AudioFocusHandlerImplBase.this.mPlayer.pause();
                            } else {
                                float playerVolume = AudioFocusHandlerImplBase.this.mPlayer.getPlayerVolume();
                                float f = 0.2f * playerVolume;
                                obj = AudioFocusHandlerImplBase.this.mLock;
                                synchronized (obj) {
                                    this.mPlayerVolumeBeforeDucking = playerVolume;
                                    this.mPlayerDuckingVolume = f;
                                }
                                AudioFocusHandlerImplBase.this.mPlayer.setPlayerVolume(f);
                            }
                        }
                    }
                } else if (i == -2) {
                    AudioFocusHandlerImplBase.this.mPlayer.pause();
                    synchronized (AudioFocusHandlerImplBase.this.mLock) {
                        AudioFocusHandlerImplBase.this.mResumeWhenAudioFocusGain = true;
                    }
                } else if (i == -1) {
                    AudioFocusHandlerImplBase.this.mPlayer.pause();
                    synchronized (AudioFocusHandlerImplBase.this.mLock) {
                        AudioFocusHandlerImplBase.this.mResumeWhenAudioFocusGain = false;
                    }
                } else if (i == 1) {
                    if (AudioFocusHandlerImplBase.this.mPlayer.getPlayerState() == 1) {
                        synchronized (AudioFocusHandlerImplBase.this.mLock) {
                            if (AudioFocusHandlerImplBase.this.mResumeWhenAudioFocusGain) {
                                AudioFocusHandlerImplBase.this.mPlayer.play();
                            }
                        }
                        return;
                    }
                    float playerVolume2 = AudioFocusHandlerImplBase.this.mPlayer.getPlayerVolume();
                    synchronized (AudioFocusHandlerImplBase.this.mLock) {
                        if (playerVolume2 == this.mPlayerDuckingVolume) {
                            AudioFocusHandlerImplBase.this.mPlayer.setPlayerVolume(this.mPlayerVolumeBeforeDucking);
                        }
                    }
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/player/AudioFocusHandler$AudioFocusHandlerImplBase$BecomingNoisyReceiver.class */
        public class BecomingNoisyReceiver extends BroadcastReceiver {
            public BecomingNoisyReceiver() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                    synchronized (AudioFocusHandlerImplBase.this.mLock) {
                        String str = "Received noisy intent, intent=" + intent + ", registered=" + AudioFocusHandlerImplBase.this.mBecomingNoisyReceiverRegistered + ", attr=" + AudioFocusHandlerImplBase.this.mAudioAttributes;
                        if (AudioFocusHandlerImplBase.this.mBecomingNoisyReceiverRegistered && AudioFocusHandlerImplBase.this.mAudioAttributes != null) {
                            int usage = AudioFocusHandlerImplBase.this.mAudioAttributes.getUsage();
                            if (usage == 1) {
                                AudioFocusHandlerImplBase.this.mPlayer.pause();
                            } else if (usage == 14) {
                                MediaPlayer mediaPlayer = AudioFocusHandlerImplBase.this.mPlayer;
                                mediaPlayer.setPlayerVolume(mediaPlayer.getPlayerVolume() * 0.2f);
                            }
                        }
                    }
                }
            }
        }

        public AudioFocusHandlerImplBase(Context context, MediaPlayer mediaPlayer) {
            this.mContext = context;
            this.mPlayer = mediaPlayer;
            this.mAudioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        }

        @GuardedBy("mLock")
        private void abandonAudioFocusLocked() {
            if (this.mCurrentFocusGainType != 0) {
                String str = "abandoningAudioFocusLocked, currently=" + this.mCurrentFocusGainType;
                this.mAudioManager.abandonAudioFocus(this.mAudioFocusListener);
                this.mCurrentFocusGainType = 0;
                this.mResumeWhenAudioFocusGain = false;
            }
        }

        public static int convertAudioAttributesToFocusGain(AudioAttributesCompat audioAttributesCompat) {
            if (audioAttributesCompat == null) {
                return 0;
            }
            switch (audioAttributesCompat.getUsage()) {
                case 0:
                case 1:
                case 14:
                    return 1;
                case 2:
                case 4:
                    return 2;
                case 3:
                    return 0;
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 12:
                case 13:
                    return 3;
                case 11:
                    return audioAttributesCompat.getContentType() == 1 ? 2 : 3;
                case 15:
                default:
                    String str = "Unidentified AudioAttribute " + audioAttributesCompat;
                    return 0;
                case 16:
                    return 4;
            }
        }

        @GuardedBy("mLock")
        private void registerBecomingNoisyReceiverLocked() {
            if (!this.mBecomingNoisyReceiverRegistered) {
                this.mContext.registerReceiver(this.mBecomingNoisyReceiver, this.mIntentFilter);
                this.mBecomingNoisyReceiverRegistered = true;
            }
        }

        @GuardedBy("mLock")
        private boolean requestAudioFocusLocked() {
            int convertAudioAttributesToFocusGain = convertAudioAttributesToFocusGain(this.mAudioAttributes);
            boolean z = true;
            if (convertAudioAttributesToFocusGain != 0) {
                int requestAudioFocus = this.mAudioManager.requestAudioFocus(this.mAudioFocusListener, this.mAudioAttributes.getVolumeControlStream(), convertAudioAttributesToFocusGain);
                if (requestAudioFocus == 1) {
                    this.mCurrentFocusGainType = convertAudioAttributesToFocusGain;
                } else {
                    String str = "requestAudioFocus(" + convertAudioAttributesToFocusGain + ") failed (return=" + requestAudioFocus + ") playback wouldn't start.";
                    this.mCurrentFocusGainType = 0;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("requestAudioFocus(");
                sb.append(convertAudioAttributesToFocusGain);
                sb.append("), result=");
                sb.append(requestAudioFocus == 1);
                sb.toString();
                this.mResumeWhenAudioFocusGain = false;
                if (this.mCurrentFocusGainType == 0) {
                    z = false;
                }
                return z;
            } else if (this.mAudioAttributes != null) {
                return true;
            } else {
                Log.e(AudioFocusHandler.TAG, "requestAudioFocusLocked() shouldn't be called when AudioAttributes is null");
                return true;
            }
        }

        @GuardedBy("mLock")
        private void unregisterBecomingNoisyReceiverLocked() {
            if (this.mBecomingNoisyReceiverRegistered) {
                this.mContext.unregisterReceiver(this.mBecomingNoisyReceiver);
                this.mBecomingNoisyReceiverRegistered = false;
            }
        }

        @Override // androidx.media2.player.AudioFocusHandler.AudioFocusHandlerImpl
        public void close() {
            synchronized (this.mLock) {
                unregisterBecomingNoisyReceiverLocked();
                abandonAudioFocusLocked();
            }
        }

        @Override // androidx.media2.player.AudioFocusHandler.AudioFocusHandlerImpl
        public void onPause() {
            synchronized (this.mLock) {
                this.mResumeWhenAudioFocusGain = false;
                unregisterBecomingNoisyReceiverLocked();
            }
        }

        @Override // androidx.media2.player.AudioFocusHandler.AudioFocusHandlerImpl
        public boolean onPlay() {
            boolean z;
            AudioAttributesCompat audioAttributes = this.mPlayer.getAudioAttributes();
            synchronized (this.mLock) {
                this.mAudioAttributes = audioAttributes;
                if (audioAttributes == null) {
                    abandonAudioFocusLocked();
                    unregisterBecomingNoisyReceiverLocked();
                    z = true;
                } else {
                    boolean requestAudioFocusLocked = requestAudioFocusLocked();
                    z = requestAudioFocusLocked;
                    if (requestAudioFocusLocked) {
                        registerBecomingNoisyReceiverLocked();
                        z = requestAudioFocusLocked;
                    }
                }
            }
            return z;
        }

        @Override // androidx.media2.player.AudioFocusHandler.AudioFocusHandlerImpl
        public void onReset() {
            synchronized (this.mLock) {
                abandonAudioFocusLocked();
                unregisterBecomingNoisyReceiverLocked();
            }
        }

        @Override // androidx.media2.player.AudioFocusHandler.AudioFocusHandlerImpl
        public void sendIntent(Intent intent) {
            this.mBecomingNoisyReceiver.onReceive(this.mContext, intent);
        }
    }

    public AudioFocusHandler(Context context, MediaPlayer mediaPlayer) {
        this.mImpl = new AudioFocusHandlerImplBase(context, mediaPlayer);
    }

    public void close() {
        this.mImpl.close();
    }

    public void onPause() {
        this.mImpl.onPause();
    }

    public boolean onPlay() {
        return this.mImpl.onPlay();
    }

    public void onReset() {
        this.mImpl.onReset();
    }

    public void sendIntent(Intent intent) {
        this.mImpl.sendIntent(intent);
    }
}
