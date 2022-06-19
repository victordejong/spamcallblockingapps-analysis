package io.agora.rtc.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/VolumeBroadcastReceiver.class */
public class VolumeBroadcastReceiver extends BroadcastReceiver {
    private WeakReference<AudioDevice> mAudioDevice;

    public VolumeBroadcastReceiver(AudioDevice audioDevice) {
        this.mAudioDevice = new WeakReference<>(audioDevice);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AudioDevice audioDevice = this.mAudioDevice.get();
        if (audioDevice == null) {
            return;
        }
        audioDevice.notifyPlayoutVolumeChange();
    }
}
