package androidx.media2.common;

import androidx.core.e.a;
import androidx.versionedparcelable.c;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleData.class */
public final class SubtitleData implements c {

    /* renamed from: a  reason: collision with root package name */
    public long f2761a;

    /* renamed from: b  reason: collision with root package name */
    public long f2762b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f2763c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubtitleData() {
    }

    public SubtitleData(long j, long j2, byte[] bArr) {
        this.f2761a = j;
        this.f2762b = j2;
        this.f2763c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SubtitleData subtitleData = (SubtitleData) obj;
        return this.f2761a == subtitleData.f2761a && this.f2762b == subtitleData.f2762b && Arrays.equals(this.f2763c, subtitleData.f2763c);
    }

    public final int hashCode() {
        return a.a(Long.valueOf(this.f2761a), Long.valueOf(this.f2762b), Integer.valueOf(Arrays.hashCode(this.f2763c)));
    }
}
