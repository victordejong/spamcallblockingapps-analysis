package com.mp4parser.iso14496.part15;

import com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
/* renamed from: com.mp4parser.iso14496.part15.c */
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/c.class */
public final class C17047c extends AbstractC16270b {

    /* renamed from: a */
    int f60545a;

    /* renamed from: b */
    int f60546b;

    /* renamed from: c */
    boolean f60547c;

    /* renamed from: d */
    int f60548d;

    /* renamed from: e */
    long f60549e;

    /* renamed from: f */
    long f60550f;

    /* renamed from: g */
    int f60551g;

    /* renamed from: h */
    int f60552h;

    /* renamed from: i */
    int f60553i;

    /* renamed from: j */
    int f60554j;

    /* renamed from: k */
    int f60555k;

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "tscl";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        this.f60545a = C3515e.m37852a(byteBuffer.get());
        int m37852a = C3515e.m37852a(byteBuffer.get());
        this.f60546b = (m37852a & 192) >> 6;
        this.f60547c = (m37852a & 32) > 0;
        this.f60548d = m37852a & 31;
        this.f60549e = C3515e.m37851a(byteBuffer);
        this.f60550f = C3515e.m37842i(byteBuffer);
        this.f60551g = C3515e.m37852a(byteBuffer.get());
        this.f60552h = C3515e.m37848c(byteBuffer);
        this.f60553i = C3515e.m37848c(byteBuffer);
        this.f60554j = C3515e.m37852a(byteBuffer.get());
        this.f60555k = C3515e.m37848c(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        ByteBuffer allocate = ByteBuffer.allocate(20);
        C3516f.m37832c(allocate, this.f60545a);
        C3516f.m37832c(allocate, (this.f60546b << 6) + (this.f60547c ? 32 : 0) + this.f60548d);
        C3516f.m37835b(allocate, this.f60549e);
        C3516f.m37831c(allocate, this.f60550f);
        C3516f.m37832c(allocate, this.f60551g);
        C3516f.m37836b(allocate, this.f60552h);
        C3516f.m37836b(allocate, this.f60553i);
        C3516f.m37832c(allocate, this.f60554j);
        C3516f.m37836b(allocate, this.f60555k);
        return (ByteBuffer) allocate.rewind();
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: c */
    public final int mo5964c() {
        return 20;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C17047c c17047c = (C17047c) obj;
        return this.f60545a == c17047c.f60545a && this.f60553i == c17047c.f60553i && this.f60555k == c17047c.f60555k && this.f60554j == c17047c.f60554j && this.f60552h == c17047c.f60552h && this.f60550f == c17047c.f60550f && this.f60551g == c17047c.f60551g && this.f60549e == c17047c.f60549e && this.f60548d == c17047c.f60548d && this.f60546b == c17047c.f60546b && this.f60547c == c17047c.f60547c;
    }

    public final int hashCode() {
        int i = this.f60545a;
        int i2 = this.f60546b;
        boolean z = this.f60547c;
        int i3 = this.f60548d;
        long j = this.f60549e;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.f60550f;
        return (((((((((((((((((((i * 31) + i2) * 31) + (z ? 1 : 0)) * 31) + i3) * 31) + i4) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f60551g) * 31) + this.f60552h) * 31) + this.f60553i) * 31) + this.f60554j) * 31) + this.f60555k;
    }

    public final String toString() {
        return "TemporalLayerSampleGroup{temporalLayerId=" + this.f60545a + ", tlprofile_space=" + this.f60546b + ", tltier_flag=" + this.f60547c + ", tlprofile_idc=" + this.f60548d + ", tlprofile_compatibility_flags=" + this.f60549e + ", tlconstraint_indicator_flags=" + this.f60550f + ", tllevel_idc=" + this.f60551g + ", tlMaxBitRate=" + this.f60552h + ", tlAvgBitRate=" + this.f60553i + ", tlConstantFrameRate=" + this.f60554j + ", tlAvgFrameRate=" + this.f60555k + '}';
    }
}
