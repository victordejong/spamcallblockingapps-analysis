package androidx.media2.session;

import androidx.media.AudioAttributesCompat;
import androidx.media2.session.MediaController;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PlaybackInfoParcelizer.class */
public final class PlaybackInfoParcelizer {
    public static MediaController.PlaybackInfo read(VersionedParcel versionedParcel) {
        MediaController.PlaybackInfo playbackInfo = new MediaController.PlaybackInfo();
        playbackInfo.f2190a = versionedParcel.m37000a(playbackInfo.f2190a, 1);
        playbackInfo.f2191b = versionedParcel.m37000a(playbackInfo.f2191b, 2);
        playbackInfo.f2192c = versionedParcel.m37000a(playbackInfo.f2192c, 3);
        playbackInfo.f2193d = versionedParcel.m37000a(playbackInfo.f2193d, 4);
        playbackInfo.f2194e = (AudioAttributesCompat) versionedParcel.m36994a((VersionedParcel) playbackInfo.f2194e, 5);
        return playbackInfo;
    }

    public static void write(MediaController.PlaybackInfo playbackInfo, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(playbackInfo.f2190a, 1);
        versionedParcel.m36977b(playbackInfo.f2191b, 2);
        versionedParcel.m36977b(playbackInfo.f2192c, 3);
        versionedParcel.m36977b(playbackInfo.f2193d, 4);
        versionedParcel.m36971b(playbackInfo.f2194e, 5);
    }
}
