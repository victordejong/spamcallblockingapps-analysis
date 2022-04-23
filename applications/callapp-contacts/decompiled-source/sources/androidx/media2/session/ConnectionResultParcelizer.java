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
        connectionResult.f4492a = versionedParcel.b(connectionResult.f4492a, 0);
        connectionResult.f4494c = versionedParcel.b(connectionResult.f4494c, 1);
        connectionResult.m = versionedParcel.b(connectionResult.m, 10);
        connectionResult.n = versionedParcel.b(connectionResult.n, 11);
        connectionResult.o = (ParcelImplListSlice) versionedParcel.b((VersionedParcel) connectionResult.o, 12);
        connectionResult.p = (SessionCommandGroup) versionedParcel.b((VersionedParcel) connectionResult.p, 13);
        connectionResult.q = versionedParcel.b(connectionResult.q, 14);
        connectionResult.r = versionedParcel.b(connectionResult.r, 15);
        connectionResult.s = versionedParcel.b(connectionResult.s, 16);
        connectionResult.t = versionedParcel.b(connectionResult.t, 17);
        connectionResult.u = (VideoSize) versionedParcel.b((VersionedParcel) connectionResult.u, 18);
        connectionResult.v = versionedParcel.a((List) connectionResult.v);
        connectionResult.f4495d = (PendingIntent) versionedParcel.b((VersionedParcel) connectionResult.f4495d, 2);
        connectionResult.w = (SessionPlayer.TrackInfo) versionedParcel.b((VersionedParcel) connectionResult.w, 20);
        connectionResult.x = (SessionPlayer.TrackInfo) versionedParcel.b((VersionedParcel) connectionResult.x, 21);
        connectionResult.y = (SessionPlayer.TrackInfo) versionedParcel.b((VersionedParcel) connectionResult.y, 23);
        connectionResult.z = (SessionPlayer.TrackInfo) versionedParcel.b((VersionedParcel) connectionResult.z, 24);
        connectionResult.A = (MediaMetadata) versionedParcel.b((VersionedParcel) connectionResult.A, 25);
        connectionResult.B = versionedParcel.b(connectionResult.B, 26);
        connectionResult.e = versionedParcel.b(connectionResult.e, 3);
        connectionResult.g = (MediaItem) versionedParcel.b((VersionedParcel) connectionResult.g, 4);
        connectionResult.h = versionedParcel.b(connectionResult.h, 5);
        connectionResult.i = versionedParcel.b(connectionResult.i, 6);
        connectionResult.j = versionedParcel.b(connectionResult.j, 7);
        connectionResult.k = versionedParcel.b(connectionResult.k, 8);
        connectionResult.l = (MediaController.PlaybackInfo) versionedParcel.b((VersionedParcel) connectionResult.l, 9);
        connectionResult.e();
        return connectionResult;
    }

    public static void write(ConnectionResult connectionResult, VersionedParcel versionedParcel) {
        connectionResult.a(false);
        versionedParcel.a(connectionResult.f4492a, 0);
        versionedParcel.a(connectionResult.f4494c, 1);
        versionedParcel.a(connectionResult.m, 10);
        versionedParcel.a(connectionResult.n, 11);
        versionedParcel.a(connectionResult.o, 12);
        versionedParcel.a(connectionResult.p, 13);
        versionedParcel.a(connectionResult.q, 14);
        versionedParcel.a(connectionResult.r, 15);
        versionedParcel.a(connectionResult.s, 16);
        versionedParcel.a(connectionResult.t, 17);
        versionedParcel.a(connectionResult.u, 18);
        versionedParcel.a(connectionResult.v, 19);
        versionedParcel.a(connectionResult.f4495d, 2);
        versionedParcel.a(connectionResult.w, 20);
        versionedParcel.a(connectionResult.x, 21);
        versionedParcel.a(connectionResult.y, 23);
        versionedParcel.a(connectionResult.z, 24);
        versionedParcel.a(connectionResult.A, 25);
        versionedParcel.a(connectionResult.B, 26);
        versionedParcel.a(connectionResult.e, 3);
        versionedParcel.a(connectionResult.g, 4);
        versionedParcel.a(connectionResult.h, 5);
        versionedParcel.a(connectionResult.i, 6);
        versionedParcel.a(connectionResult.j, 7);
        versionedParcel.a(connectionResult.k, 8);
        versionedParcel.a(connectionResult.l, 9);
    }
}
