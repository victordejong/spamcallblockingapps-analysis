package androidx.media2.exoplayer.external.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver.class */
public final class AudioCapabilitiesReceiver {
    @Nullable
    public AudioCapabilities audioCapabilities;
    public final Context context;
    @Nullable
    public final ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver;
    public final Handler handler = new Handler(Util.getLooper());
    public final Listener listener;
    @Nullable
    public final BroadcastReceiver receiver;
    public boolean registered;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver.class */
    public final class ExternalSurroundSoundSettingObserver extends ContentObserver {
        public final ContentResolver resolver;
        public final Uri settingUri;

        public ExternalSurroundSoundSettingObserver(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.resolver = contentResolver;
            this.settingUri = uri;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.onNewAudioCapabilities(AudioCapabilities.getCapabilities(audioCapabilitiesReceiver.context));
        }

        public void register() {
            this.resolver.registerContentObserver(this.settingUri, false, this);
        }

        public void unregister() {
            this.resolver.unregisterContentObserver(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver.class */
    public final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        public HdmiAudioPlugBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                AudioCapabilitiesReceiver.this.onNewAudioCapabilities(AudioCapabilities.getCapabilities(context, intent));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioCapabilitiesReceiver$Listener.class */
    public interface Listener {
        void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities);
    }

    public AudioCapabilitiesReceiver(Context context, Listener listener) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.listener = (Listener) Assertions.checkNotNull(listener);
        ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = null;
        this.receiver = Util.SDK_INT >= 21 ? new HdmiAudioPlugBroadcastReceiver() : null;
        Uri externalSurroundSoundGlobalSettingUri = AudioCapabilities.getExternalSurroundSoundGlobalSettingUri();
        this.externalSurroundSoundSettingObserver = externalSurroundSoundGlobalSettingUri != null ? new ExternalSurroundSoundSettingObserver(this.handler, applicationContext.getContentResolver(), externalSurroundSoundGlobalSettingUri) : externalSurroundSoundSettingObserver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNewAudioCapabilities(AudioCapabilities audioCapabilities) {
        if (this.registered && !audioCapabilities.equals(this.audioCapabilities)) {
            this.audioCapabilities = audioCapabilities;
            this.listener.onAudioCapabilitiesChanged(audioCapabilities);
        }
    }

    public AudioCapabilities register() {
        if (this.registered) {
            return (AudioCapabilities) Assertions.checkNotNull(this.audioCapabilities);
        }
        this.registered = true;
        ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = this.externalSurroundSoundSettingObserver;
        if (externalSurroundSoundSettingObserver != null) {
            externalSurroundSoundSettingObserver.register();
        }
        Intent intent = null;
        if (this.receiver != null) {
            intent = this.context.registerReceiver(this.receiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.handler);
        }
        this.audioCapabilities = AudioCapabilities.getCapabilities(this.context, intent);
        return this.audioCapabilities;
    }

    public void unregister() {
        if (this.registered) {
            this.audioCapabilities = null;
            BroadcastReceiver broadcastReceiver = this.receiver;
            if (broadcastReceiver != null) {
                this.context.unregisterReceiver(broadcastReceiver);
            }
            ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = this.externalSurroundSoundSettingObserver;
            if (externalSurroundSoundSettingObserver != null) {
                externalSurroundSoundSettingObserver.unregister();
            }
            this.registered = false;
        }
    }
}
