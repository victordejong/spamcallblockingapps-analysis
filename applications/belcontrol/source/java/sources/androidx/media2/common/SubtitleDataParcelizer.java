package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleDataParcelizer.class */
public final class SubtitleDataParcelizer {
    public static SubtitleData read(d40 d40Var) {
        SubtitleData subtitleData = new SubtitleData();
        subtitleData.a = d40Var.m2825y(subtitleData.a, 1);
        subtitleData.b = d40Var.m2825y(subtitleData.b, 2);
        subtitleData.c = d40Var.m2839m(subtitleData.c, 3);
        return subtitleData;
    }

    public static void write(SubtitleData subtitleData, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2860b0(subtitleData.a, 1);
        d40Var.m2860b0(subtitleData.b, 2);
        d40Var.m2873Q(subtitleData.c, 3);
    }
}
