package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRatingParcelizer.class */
public final class ThumbRatingParcelizer {
    public static ThumbRating read(VersionedParcel versionedParcel) {
        ThumbRating thumbRating = new ThumbRating();
        thumbRating.f4566a = versionedParcel.b(thumbRating.f4566a, 1);
        thumbRating.f4567b = versionedParcel.b(thumbRating.f4567b, 2);
        return thumbRating;
    }

    public static void write(ThumbRating thumbRating, VersionedParcel versionedParcel) {
        versionedParcel.a(thumbRating.f4566a, 1);
        versionedParcel.a(thumbRating.f4567b, 2);
    }
}
