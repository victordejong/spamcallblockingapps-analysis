package androidx.media2.common;

import java.util.Arrays;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleData.class */
public final class SubtitleData implements AbstractC26407e {

    /* renamed from: a */
    public long f940a;

    /* renamed from: b */
    public long f941b;

    /* renamed from: c */
    public byte[] f942c;

    public SubtitleData() {
    }

    public SubtitleData(long j, long j2, byte[] bArr) {
        this.f940a = j;
        this.f941b = j2;
        this.f942c = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || SubtitleData.class != obj.getClass()) {
            return false;
        }
        SubtitleData subtitleData = (SubtitleData) obj;
        if (this.f940a != subtitleData.f940a || this.f941b != subtitleData.f941b || !Arrays.equals(this.f942c, subtitleData.f942c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f940a), Long.valueOf(this.f941b), Integer.valueOf(Arrays.hashCode(this.f942c)));
    }
}
