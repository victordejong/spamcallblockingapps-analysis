package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRatingParcelizer.class */
public final class HeartRatingParcelizer {
    public static HeartRating read(VersionedParcel versionedParcel) {
        HeartRating heartRating = new HeartRating();
        heartRating.f4496a = versionedParcel.b(heartRating.f4496a, 1);
        heartRating.f4497b = versionedParcel.b(heartRating.f4497b, 2);
        return heartRating;
    }

    public static void write(HeartRating heartRating, VersionedParcel versionedParcel) {
        versionedParcel.a(heartRating.f4496a, 1);
        versionedParcel.a(heartRating.f4497b, 2);
    }
}
