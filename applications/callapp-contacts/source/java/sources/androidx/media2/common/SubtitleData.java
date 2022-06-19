package androidx.media2.common;

import androidx.core.p036e.C0827a;
import androidx.versionedparcelable.AbstractC2922c;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleData.class */
public final class SubtitleData implements AbstractC2922c {

    /* renamed from: a */
    public long f5057a;

    /* renamed from: b */
    public long f5058b;

    /* renamed from: c */
    public byte[] f5059c;

    public SubtitleData() {
    }

    public SubtitleData(long j, long j2, byte[] bArr) {
        this.f5057a = j;
        this.f5058b = j2;
        this.f5059c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SubtitleData subtitleData = (SubtitleData) obj;
        return this.f5057a == subtitleData.f5057a && this.f5058b == subtitleData.f5058b && Arrays.equals(this.f5059c, subtitleData.f5059c);
    }

    public final int hashCode() {
        return C0827a.m44413a(Long.valueOf(this.f5057a), Long.valueOf(this.f5058b), Integer.valueOf(Arrays.hashCode(this.f5059c)));
    }
}
