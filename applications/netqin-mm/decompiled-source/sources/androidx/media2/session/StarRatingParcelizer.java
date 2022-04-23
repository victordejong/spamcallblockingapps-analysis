package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRatingParcelizer.class */
public final class StarRatingParcelizer {
    public static StarRating read(VersionedParcel versionedParcel) {
        StarRating starRating = new StarRating();
        starRating.f2233a = versionedParcel.m37000a(starRating.f2233a, 1);
        starRating.f2234b = versionedParcel.m37001a(starRating.f2234b, 2);
        return starRating;
    }

    public static void write(StarRating starRating, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(starRating.f2233a, 1);
        versionedParcel.m36978b(starRating.f2234b, 2);
    }
}
