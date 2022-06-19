package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRatingParcelizer.class */
public final class ThumbRatingParcelizer {
    public static ThumbRating read(VersionedParcel versionedParcel) {
        ThumbRating thumbRating = new ThumbRating();
        thumbRating.f8793a = versionedParcel.m39634b(thumbRating.f8793a, 1);
        thumbRating.f8794b = versionedParcel.m39634b(thumbRating.f8794b, 2);
        return thumbRating;
    }

    public static void write(ThumbRating thumbRating, VersionedParcel versionedParcel) {
        versionedParcel.m39647a(thumbRating.f8793a, 1);
        versionedParcel.m39647a(thumbRating.f8794b, 2);
    }
}
