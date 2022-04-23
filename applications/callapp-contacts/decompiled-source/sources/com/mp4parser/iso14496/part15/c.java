package com.mp4parser.iso14496.part15;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.b.b.b.b;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/c.class */
public final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    int f34930a;

    /* renamed from: b  reason: collision with root package name */
    int f34931b;

    /* renamed from: c  reason: collision with root package name */
    boolean f34932c;

    /* renamed from: d  reason: collision with root package name */
    int f34933d;
    long e;
    long f;
    int g;
    int h;
    int i;
    int j;
    int k;

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "tscl";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        this.f34930a = e.a(byteBuffer.get());
        int a2 = e.a(byteBuffer.get());
        this.f34931b = (a2 & 192) >> 6;
        this.f34932c = (a2 & 32) > 0;
        this.f34933d = a2 & 31;
        this.e = e.a(byteBuffer);
        this.f = e.i(byteBuffer);
        this.g = e.a(byteBuffer.get());
        this.h = e.c(byteBuffer);
        this.i = e.c(byteBuffer);
        this.j = e.a(byteBuffer.get());
        this.k = e.c(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        ByteBuffer allocate = ByteBuffer.allocate(20);
        f.c(allocate, this.f34930a);
        f.c(allocate, (this.f34931b << 6) + (this.f34932c ? 32 : 0) + this.f34933d);
        f.b(allocate, this.e);
        f.c(allocate, this.f);
        f.c(allocate, this.g);
        f.b(allocate, this.h);
        f.b(allocate, this.i);
        f.c(allocate, this.j);
        f.b(allocate, this.k);
        return (ByteBuffer) allocate.rewind();
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final int c() {
        return 20;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f34930a == cVar.f34930a && this.i == cVar.i && this.k == cVar.k && this.j == cVar.j && this.h == cVar.h && this.f == cVar.f && this.g == cVar.g && this.e == cVar.e && this.f34933d == cVar.f34933d && this.f34931b == cVar.f34931b && this.f34932c == cVar.f34932c;
    }

    public final int hashCode() {
        int i = this.f34930a;
        int i2 = this.f34931b;
        boolean z = this.f34932c;
        int i3 = this.f34933d;
        long j = this.e;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.f;
        return (((((((((((((((((((i * 31) + i2) * 31) + (z ? 1 : 0)) * 31) + i3) * 31) + i4) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.g) * 31) + this.h) * 31) + this.i) * 31) + this.j) * 31) + this.k;
    }

    public final String toString() {
        return "TemporalLayerSampleGroup{temporalLayerId=" + this.f34930a + ", tlprofile_space=" + this.f34931b + ", tltier_flag=" + this.f34932c + ", tlprofile_idc=" + this.f34933d + ", tlprofile_compatibility_flags=" + this.e + ", tlconstraint_indicator_flags=" + this.f + ", tllevel_idc=" + this.g + ", tlMaxBitRate=" + this.h + ", tlAvgBitRate=" + this.i + ", tlConstantFrameRate=" + this.j + ", tlAvgFrameRate=" + this.k + '}';
    }
}
