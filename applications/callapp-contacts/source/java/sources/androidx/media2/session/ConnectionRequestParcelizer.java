package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionRequestParcelizer.class */
public final class ConnectionRequestParcelizer {
    public static ConnectionRequest read(VersionedParcel versionedParcel) {
        ConnectionRequest connectionRequest = new ConnectionRequest();
        connectionRequest.f8662a = versionedParcel.m39644b(connectionRequest.f8662a, 0);
        connectionRequest.f8663b = versionedParcel.m39635b(connectionRequest.f8663b, 1);
        connectionRequest.f8664c = versionedParcel.m39644b(connectionRequest.f8664c, 2);
        connectionRequest.f8665d = versionedParcel.m39642b(connectionRequest.f8665d, 3);
        return connectionRequest;
    }

    public static void write(ConnectionRequest connectionRequest, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(connectionRequest.f8662a, 0);
        versionedParcel.m39653a(connectionRequest.f8663b, 1);
        versionedParcel.m39664a(connectionRequest.f8664c, 2);
        versionedParcel.m39662a(connectionRequest.f8665d, 3);
    }
}
