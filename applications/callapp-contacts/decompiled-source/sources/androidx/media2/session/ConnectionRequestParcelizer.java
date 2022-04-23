package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionRequestParcelizer.class */
public final class ConnectionRequestParcelizer {
    public static ConnectionRequest read(VersionedParcel versionedParcel) {
        ConnectionRequest connectionRequest = new ConnectionRequest();
        connectionRequest.f4488a = versionedParcel.b(connectionRequest.f4488a, 0);
        connectionRequest.f4489b = versionedParcel.b(connectionRequest.f4489b, 1);
        connectionRequest.f4490c = versionedParcel.b(connectionRequest.f4490c, 2);
        connectionRequest.f4491d = versionedParcel.b(connectionRequest.f4491d, 3);
        return connectionRequest;
    }

    public static void write(ConnectionRequest connectionRequest, VersionedParcel versionedParcel) {
        versionedParcel.a(connectionRequest.f4488a, 0);
        versionedParcel.a(connectionRequest.f4489b, 1);
        versionedParcel.a(connectionRequest.f4490c, 2);
        versionedParcel.a(connectionRequest.f4491d, 3);
    }
}
