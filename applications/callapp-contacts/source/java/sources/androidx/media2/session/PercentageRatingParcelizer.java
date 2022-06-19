package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRatingParcelizer.class */
public final class PercentageRatingParcelizer {
    public static PercentageRating read(VersionedParcel versionedParcel) {
        PercentageRating percentageRating = new PercentageRating();
        percentageRating.f8747a = versionedParcel.m39645b(percentageRating.f8747a, 1);
        return percentageRating;
    }

    public static void write(PercentageRating percentageRating, VersionedParcel versionedParcel) {
        versionedParcel.m39665a(percentageRating.f8747a, 1);
    }
}
