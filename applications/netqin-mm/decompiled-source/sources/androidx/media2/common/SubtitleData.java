package androidx.media2.common;

import java.util.Arrays;
import p012b.p042i.p053o.C0943c;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SubtitleData.class */
public final class SubtitleData implements AbstractC1978c {

    /* renamed from: a */
    public long f1542a;

    /* renamed from: b */
    public long f1543b;

    /* renamed from: c */
    public byte[] f1544c;

    public SubtitleData() {
    }

    public SubtitleData(long j, long j2, byte[] bArr) {
        this.f1542a = j;
        this.f1543b = j2;
        this.f1544c = bArr;
    }

    /* renamed from: e */
    public byte[] m38205e() {
        return this.f1544c;
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
        if (!(this.f1542a == subtitleData.f1542a && this.f1543b == subtitleData.f1543b && Arrays.equals(this.f1544c, subtitleData.f1544c))) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public long m38204f() {
        return this.f1543b;
    }

    /* renamed from: g */
    public long m38203g() {
        return this.f1542a;
    }

    public int hashCode() {
        return C0943c.m35447a(Long.valueOf(this.f1542a), Long.valueOf(this.f1543b), Integer.valueOf(Arrays.hashCode(this.f1544c)));
    }
}
