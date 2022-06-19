package io.agora.rtc.audio;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaRouter;
import android.os.Build;
import java.lang.ref.WeakReference;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/AudioManagerAndroid.class */
public class AudioManagerAndroid {
    private static final int DEFAULT_FRAMES_PER_BUFFER = 256;
    private static final int DEFAULT_SAMPLING_RATE = 44100;
    private AudioManager audioManager;
    private int mAudioLowLatencyOutputFrameSize;
    private boolean mAudioLowLatencySupported;
    private int mNativeOutputSampleRate;
    private WeakReference<Context> mcontext;

    private AudioManagerAndroid(Context context) {
        this.mcontext = new WeakReference<>(context);
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.audioManager = audioManager;
        this.mNativeOutputSampleRate = DEFAULT_SAMPLING_RATE;
        this.mAudioLowLatencyOutputFrameSize = 256;
        String property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
        if (property != null) {
            this.mNativeOutputSampleRate = Integer.parseInt(property);
        }
        String property2 = this.audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER");
        if (property2 != null) {
            this.mAudioLowLatencyOutputFrameSize = Integer.parseInt(property2);
        }
        this.mAudioLowLatencySupported = context.getPackageManager().hasSystemFeature("android.hardware.audio.low_latency");
    }

    private int GetAudioMode() {
        return this.audioManager.getMode();
    }

    private int QuerySpeakerStatus() {
        boolean z = this.audioManager.getMode() == 3 || this.audioManager.getMode() == 2;
        Context context = this.mcontext.get();
        if (this.audioManager == null && context != null) {
            this.audioManager = (AudioManager) context.getSystemService("audio");
        }
        if (z) {
            if (this.audioManager.isSpeakerphoneOn()) {
                return 3;
            }
            if (this.audioManager.isBluetoothScoOn()) {
                return 5;
            }
            return this.audioManager.isWiredHeadsetOn() ? 0 : 1;
        } else if (Build.VERSION.SDK_INT >= 24) {
            if (((MediaRouter) context.getSystemService("media_router")).getSelectedRoute(1).getDeviceType() == 3) {
                return 5;
            }
            if (this.audioManager.isWiredHeadsetOn()) {
                return 0;
            }
            return this.audioManager.isSpeakerphoneOn() ? 3 : 1;
        } else if (this.audioManager.isBluetoothA2dpOn()) {
            return 5;
        } else {
            if (this.audioManager.isWiredHeadsetOn()) {
                return 0;
            }
            return this.audioManager.isSpeakerphoneOn() ? 3 : 1;
        }
    }

    private int SetAudioMode(int i) {
        try {
            if (i == 0) {
                this.audioManager.setMode(0);
            } else if (i == 1) {
                this.audioManager.setMode(1);
            } else if (i == 2) {
                this.audioManager.setMode(2);
            } else if (i != 3) {
                this.audioManager.setMode(0);
            } else {
                this.audioManager.setMode(3);
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private int SetPlayoutSpeaker(boolean z) {
        this.audioManager.setSpeakerphoneOn(z);
        return 0;
    }

    private boolean checkAudioPermission() {
        Context context = this.mcontext.get();
        return context != null && context.checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") == 0 && context.checkCallingOrSelfPermission("android.permission.MODIFY_AUDIO_SETTINGS") == 0;
    }

    private int enableHardwareEarback(boolean z) {
        Context context = this.mcontext.get();
        return context != null ? HardwareEarbackController.getInstance(context).enableHardwareEarback(z) : -1;
    }

    private int getAudioLowLatencyOutputFrameSize() {
        return this.mAudioLowLatencyOutputFrameSize;
    }

    private int getNativeOutputSampleRate() {
        return this.mNativeOutputSampleRate;
    }

    private boolean isAudioLowLatencySupported() {
        return this.mAudioLowLatencySupported;
    }

    private boolean isHardwareEarbackSupported() {
        Context context = this.mcontext.get();
        return context != null ? HardwareEarbackController.getInstance(context).isHardwareEarbackSupported() : false;
    }

    private int setHardwareEarbackVolume(int i) {
        Context context = this.mcontext.get();
        return context != null ? HardwareEarbackController.getInstance(context).setHardwareEarbackVolume(i) : -1;
    }
}
