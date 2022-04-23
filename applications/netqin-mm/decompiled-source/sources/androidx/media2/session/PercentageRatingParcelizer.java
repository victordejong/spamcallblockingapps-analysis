package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/PercentageRatingParcelizer.class */
public final class PercentageRatingParcelizer {
    public static PercentageRating read(VersionedParcel versionedParcel) {
        PercentageRating percentageRating = new PercentageRating();
        percentageRating.f2214a = versionedParcel.m37001a(percentageRating.f2214a, 1);
        return percentageRating;
    }

    public static void write(PercentageRating percentageRating, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36978b(percentageRating.f2214a, 1);
    }
}
