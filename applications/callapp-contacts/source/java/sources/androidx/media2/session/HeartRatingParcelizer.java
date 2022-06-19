package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRatingParcelizer.class */
public final class HeartRatingParcelizer {
    public static HeartRating read(VersionedParcel versionedParcel) {
        HeartRating heartRating = new HeartRating();
        heartRating.f8694a = versionedParcel.m39634b(heartRating.f8694a, 1);
        heartRating.f8695b = versionedParcel.m39634b(heartRating.f8695b, 2);
        return heartRating;
    }

    public static void write(HeartRating heartRating, VersionedParcel versionedParcel) {
        versionedParcel.m39647a(heartRating.f8694a, 1);
        versionedParcel.m39647a(heartRating.f8695b, 2);
    }
}
