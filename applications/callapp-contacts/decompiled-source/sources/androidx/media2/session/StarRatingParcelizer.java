package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRatingParcelizer.class */
public final class StarRatingParcelizer {
    public static StarRating read(VersionedParcel versionedParcel) {
        StarRating starRating = new StarRating();
        starRating.f4564a = versionedParcel.b(starRating.f4564a, 1);
        starRating.f4565b = versionedParcel.b(starRating.f4565b, 2);
        return starRating;
    }

    public static void write(StarRating starRating, VersionedParcel versionedParcel) {
        versionedParcel.a(starRating.f4564a, 1);
        versionedParcel.a(starRating.f4565b, 2);
    }
}
