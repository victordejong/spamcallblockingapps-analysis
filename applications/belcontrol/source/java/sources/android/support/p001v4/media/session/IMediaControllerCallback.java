package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.IInterface;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.List;
/* renamed from: android.support.v4.media.session.IMediaControllerCallback */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/IMediaControllerCallback.class */
public interface IMediaControllerCallback extends IInterface {
    void onCaptioningEnabledChanged(boolean z);

    void onEvent(String str, Bundle bundle);

    void onExtrasChanged(Bundle bundle);

    void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat);

    void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat);

    void onQueueChanged(List<MediaSessionCompat.QueueItem> list);

    void onQueueTitleChanged(CharSequence charSequence);

    void onRepeatModeChanged(int i);

    void onSessionDestroyed();

    void onSessionReady();

    void onShuffleModeChanged(int i);

    void onShuffleModeChangedRemoved(boolean z);

    void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo);
}
