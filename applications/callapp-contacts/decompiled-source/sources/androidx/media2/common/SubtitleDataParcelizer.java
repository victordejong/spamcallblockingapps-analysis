package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleDataParcelizer.class */
public final class SubtitleDataParcelizer {
    public static SubtitleData read(VersionedParcel versionedParcel) {
        SubtitleData subtitleData = new SubtitleData();
        subtitleData.f2761a = versionedParcel.b(subtitleData.f2761a, 1);
        subtitleData.f2762b = versionedParcel.b(subtitleData.f2762b, 2);
        subtitleData.f2763c = versionedParcel.b(subtitleData.f2763c, 3);
        return subtitleData;
    }

    public static void write(SubtitleData subtitleData, VersionedParcel versionedParcel) {
        versionedParcel.a(subtitleData.f2761a, 1);
        versionedParcel.a(subtitleData.f2762b, 2);
        versionedParcel.a(subtitleData.f2763c, 3);
    }
}
