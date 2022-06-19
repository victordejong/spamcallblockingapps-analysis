package androidx.media2.common;

import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleDataParcelizer.class */
public final class SubtitleDataParcelizer {
    public static SubtitleData read(AbstractC26405c abstractC26405c) {
        SubtitleData subtitleData = new SubtitleData();
        subtitleData.f940a = abstractC26405c.m1926t(subtitleData.f940a, 1);
        subtitleData.f941b = abstractC26405c.m1926t(subtitleData.f941b, 2);
        subtitleData.f942c = !abstractC26405c.mo1905n(3) ? subtitleData.f942c : abstractC26405c.mo1907j();
        return subtitleData;
    }

    public static void write(SubtitleData subtitleData, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        long j = subtitleData.f940a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1915J(j);
        long j2 = subtitleData.f941b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1915J(j2);
        byte[] bArr = subtitleData.f942c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1919E(bArr);
    }
}
