package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResultParcelizer.class */
public final class SessionResultParcelizer {
    public static SessionResult read(VersionedParcel versionedParcel) {
        SessionResult sessionResult = new SessionResult();
        sessionResult.f4546a = versionedParcel.b(sessionResult.f4546a, 1);
        sessionResult.f4547b = versionedParcel.b(sessionResult.f4547b, 2);
        sessionResult.f4548c = versionedParcel.b(sessionResult.f4548c, 3);
        sessionResult.e = (MediaItem) versionedParcel.b((VersionedParcel) sessionResult.e, 4);
        sessionResult.e();
        return sessionResult;
    }

    public static void write(SessionResult sessionResult, VersionedParcel versionedParcel) {
        sessionResult.a(false);
        versionedParcel.a(sessionResult.f4546a, 1);
        versionedParcel.a(sessionResult.f4547b, 2);
        versionedParcel.a(sessionResult.f4548c, 3);
        versionedParcel.a(sessionResult.e, 4);
    }
}
