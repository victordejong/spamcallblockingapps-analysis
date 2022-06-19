package androidx.media2.session;

import androidx.media.AudioAttributesCompat;
import androidx.media2.session.MediaController;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PlaybackInfoParcelizer.class */
public final class PlaybackInfoParcelizer {
    public static MediaController.PlaybackInfo read(VersionedParcel versionedParcel) {
        MediaController.PlaybackInfo playbackInfo = new MediaController.PlaybackInfo();
        playbackInfo.f8715a = versionedParcel.m39644b(playbackInfo.f8715a, 1);
        playbackInfo.f8716b = versionedParcel.m39644b(playbackInfo.f8716b, 2);
        playbackInfo.f8717c = versionedParcel.m39644b(playbackInfo.f8717c, 3);
        playbackInfo.f8718d = versionedParcel.m39644b(playbackInfo.f8718d, 4);
        playbackInfo.f8719e = (AudioAttributesCompat) versionedParcel.m39638b((VersionedParcel) playbackInfo.f8719e, 5);
        return playbackInfo;
    }

    public static void write(MediaController.PlaybackInfo playbackInfo, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(playbackInfo.f8715a, 1);
        versionedParcel.m39664a(playbackInfo.f8716b, 2);
        versionedParcel.m39664a(playbackInfo.f8717c, 3);
        versionedParcel.m39664a(playbackInfo.f8718d, 4);
        versionedParcel.m39658a(playbackInfo.f8719e, 5);
    }
}
