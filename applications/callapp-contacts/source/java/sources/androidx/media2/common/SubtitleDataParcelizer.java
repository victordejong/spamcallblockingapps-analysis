package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleDataParcelizer.class */
public final class SubtitleDataParcelizer {
    public static SubtitleData read(VersionedParcel versionedParcel) {
        SubtitleData subtitleData = new SubtitleData();
        subtitleData.f5057a = versionedParcel.m39643b(subtitleData.f5057a, 1);
        subtitleData.f5058b = versionedParcel.m39643b(subtitleData.f5058b, 2);
        subtitleData.f5059c = versionedParcel.m39633b(subtitleData.f5059c, 3);
        return subtitleData;
    }

    public static void write(SubtitleData subtitleData, VersionedParcel versionedParcel) {
        versionedParcel.m39663a(subtitleData.f5057a, 1);
        versionedParcel.m39663a(subtitleData.f5058b, 2);
        versionedParcel.m39646a(subtitleData.f5059c, 3);
    }
}
