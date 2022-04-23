package androidx.media2.session;

import androidx.media.AudioAttributesCompat;
import androidx.media2.session.MediaController;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PlaybackInfoParcelizer.class */
public final class PlaybackInfoParcelizer {
    public static MediaController.PlaybackInfo read(VersionedParcel versionedParcel) {
        MediaController.PlaybackInfo playbackInfo = new MediaController.PlaybackInfo();
        playbackInfo.f4511a = versionedParcel.b(playbackInfo.f4511a, 1);
        playbackInfo.f4512b = versionedParcel.b(playbackInfo.f4512b, 2);
        playbackInfo.f4513c = versionedParcel.b(playbackInfo.f4513c, 3);
        playbackInfo.f4514d = versionedParcel.b(playbackInfo.f4514d, 4);
        playbackInfo.e = (AudioAttributesCompat) versionedParcel.b((VersionedParcel) playbackInfo.e, 5);
        return playbackInfo;
    }

    public static void write(MediaController.PlaybackInfo playbackInfo, VersionedParcel versionedParcel) {
        versionedParcel.a(playbackInfo.f4511a, 1);
        versionedParcel.a(playbackInfo.f4512b, 2);
        versionedParcel.a(playbackInfo.f4513c, 3);
        versionedParcel.a(playbackInfo.f4514d, 4);
        versionedParcel.a(playbackInfo.e, 5);
    }
}
