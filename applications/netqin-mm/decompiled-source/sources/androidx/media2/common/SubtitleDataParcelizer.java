package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleDataParcelizer.class */
public final class SubtitleDataParcelizer {
    public static SubtitleData read(VersionedParcel versionedParcel) {
        SubtitleData subtitleData = new SubtitleData();
        subtitleData.f1542a = versionedParcel.m36999a(subtitleData.f1542a, 1);
        subtitleData.f1543b = versionedParcel.m36999a(subtitleData.f1543b, 2);
        subtitleData.f1544c = versionedParcel.m36979a(subtitleData.f1544c, 3);
        return subtitleData;
    }

    public static void write(SubtitleData subtitleData, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36976b(subtitleData.f1542a, 1);
        versionedParcel.m36976b(subtitleData.f1543b, 2);
        versionedParcel.m36963b(subtitleData.f1544c, 3);
    }
}
