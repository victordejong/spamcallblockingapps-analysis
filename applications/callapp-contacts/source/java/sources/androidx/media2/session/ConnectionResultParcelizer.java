package androidx.media2.session;

import android.app.PendingIntent;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.versionedparcelable.VersionedParcel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResultParcelizer.class */
public final class ConnectionResultParcelizer {
    public static ConnectionResult read(VersionedParcel versionedParcel) {
        ConnectionResult connectionResult = new ConnectionResult();
        connectionResult.f8668a = versionedParcel.m39644b(connectionResult.f8668a, 0);
        connectionResult.f8670c = versionedParcel.m39641b(connectionResult.f8670c, 1);
        connectionResult.f8680m = versionedParcel.m39644b(connectionResult.f8680m, 10);
        connectionResult.f8681n = versionedParcel.m39644b(connectionResult.f8681n, 11);
        connectionResult.f8682o = (ParcelImplListSlice) versionedParcel.m39640b((VersionedParcel) connectionResult.f8682o, 12);
        connectionResult.f8683p = (SessionCommandGroup) versionedParcel.m39638b((VersionedParcel) connectionResult.f8683p, 13);
        connectionResult.f8684q = versionedParcel.m39644b(connectionResult.f8684q, 14);
        connectionResult.f8685r = versionedParcel.m39644b(connectionResult.f8685r, 15);
        connectionResult.f8686s = versionedParcel.m39644b(connectionResult.f8686s, 16);
        connectionResult.f8687t = versionedParcel.m39642b(connectionResult.f8687t, 17);
        connectionResult.f8688u = (VideoSize) versionedParcel.m39638b((VersionedParcel) connectionResult.f8688u, 18);
        connectionResult.f8689v = versionedParcel.m39649a((List) connectionResult.f8689v);
        connectionResult.f8671d = (PendingIntent) versionedParcel.m39640b((VersionedParcel) connectionResult.f8671d, 2);
        connectionResult.f8690w = (SessionPlayer.TrackInfo) versionedParcel.m39638b((VersionedParcel) connectionResult.f8690w, 20);
        connectionResult.f8691x = (SessionPlayer.TrackInfo) versionedParcel.m39638b((VersionedParcel) connectionResult.f8691x, 21);
        connectionResult.f8692y = (SessionPlayer.TrackInfo) versionedParcel.m39638b((VersionedParcel) connectionResult.f8692y, 23);
        connectionResult.f8693z = (SessionPlayer.TrackInfo) versionedParcel.m39638b((VersionedParcel) connectionResult.f8693z, 24);
        connectionResult.f8666A = (MediaMetadata) versionedParcel.m39638b((VersionedParcel) connectionResult.f8666A, 25);
        connectionResult.f8667B = versionedParcel.m39644b(connectionResult.f8667B, 26);
        connectionResult.f8672e = versionedParcel.m39644b(connectionResult.f8672e, 3);
        connectionResult.f8674g = (MediaItem) versionedParcel.m39638b((VersionedParcel) connectionResult.f8674g, 4);
        connectionResult.f8675h = versionedParcel.m39643b(connectionResult.f8675h, 5);
        connectionResult.f8676i = versionedParcel.m39643b(connectionResult.f8676i, 6);
        connectionResult.f8677j = versionedParcel.m39645b(connectionResult.f8677j, 7);
        connectionResult.f8678k = versionedParcel.m39643b(connectionResult.f8678k, 8);
        connectionResult.f8679l = (MediaController.PlaybackInfo) versionedParcel.m39638b((VersionedParcel) connectionResult.f8679l, 9);
        connectionResult.mo39666e();
        return connectionResult;
    }

    public static void write(ConnectionResult connectionResult, VersionedParcel versionedParcel) {
        connectionResult.mo39667a(false);
        versionedParcel.m39664a(connectionResult.f8668a, 0);
        versionedParcel.m39661a(connectionResult.f8670c, 1);
        versionedParcel.m39664a(connectionResult.f8680m, 10);
        versionedParcel.m39664a(connectionResult.f8681n, 11);
        versionedParcel.m39660a(connectionResult.f8682o, 12);
        versionedParcel.m39658a(connectionResult.f8683p, 13);
        versionedParcel.m39664a(connectionResult.f8684q, 14);
        versionedParcel.m39664a(connectionResult.f8685r, 15);
        versionedParcel.m39664a(connectionResult.f8686s, 16);
        versionedParcel.m39662a(connectionResult.f8687t, 17);
        versionedParcel.m39658a(connectionResult.f8688u, 18);
        versionedParcel.m39650a(connectionResult.f8689v, 19);
        versionedParcel.m39660a(connectionResult.f8671d, 2);
        versionedParcel.m39658a(connectionResult.f8690w, 20);
        versionedParcel.m39658a(connectionResult.f8691x, 21);
        versionedParcel.m39658a(connectionResult.f8692y, 23);
        versionedParcel.m39658a(connectionResult.f8693z, 24);
        versionedParcel.m39658a(connectionResult.f8666A, 25);
        versionedParcel.m39664a(connectionResult.f8667B, 26);
        versionedParcel.m39664a(connectionResult.f8672e, 3);
        versionedParcel.m39658a(connectionResult.f8674g, 4);
        versionedParcel.m39663a(connectionResult.f8675h, 5);
        versionedParcel.m39663a(connectionResult.f8676i, 6);
        versionedParcel.m39665a(connectionResult.f8677j, 7);
        versionedParcel.m39663a(connectionResult.f8678k, 8);
        versionedParcel.m39658a(connectionResult.f8679l, 9);
    }
}
