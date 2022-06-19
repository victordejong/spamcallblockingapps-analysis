package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRatingParcelizer.class */
public final class StarRatingParcelizer {
    public static StarRating read(VersionedParcel versionedParcel) {
        StarRating starRating = new StarRating();
        starRating.f8791a = versionedParcel.m39644b(starRating.f8791a, 1);
        starRating.f8792b = versionedParcel.m39645b(starRating.f8792b, 2);
        return starRating;
    }

    public static void write(StarRating starRating, VersionedParcel versionedParcel) {
        versionedParcel.m39664a(starRating.f8791a, 1);
        versionedParcel.m39665a(starRating.f8792b, 2);
    }
}
