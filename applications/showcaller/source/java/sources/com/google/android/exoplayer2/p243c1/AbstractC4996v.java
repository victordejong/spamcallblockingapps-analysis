package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.v */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/v.class */
public interface AbstractC4996v {

    /* renamed from: com.google.android.exoplayer2.c1.v$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/v$a.class */
    public static final class C4997a {

        /* renamed from: a */
        public final int f15525a;

        /* renamed from: b */
        public final byte[] f15526b;

        /* renamed from: c */
        public final int f15527c;

        /* renamed from: d */
        public final int f15528d;

        public C4997a(int i, byte[] bArr, int i2, int i3) {
            this.f15525a = i;
            this.f15526b = bArr;
            this.f15527c = i2;
            this.f15528d = i3;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C4997a.class != obj.getClass()) {
                return false;
            }
            C4997a c4997a = (C4997a) obj;
            if (this.f15525a != c4997a.f15525a || this.f15527c != c4997a.f15527c || this.f15528d != c4997a.f15528d || !Arrays.equals(this.f15526b, c4997a.f15526b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f15525a * 31) + Arrays.hashCode(this.f15526b)) * 31) + this.f15527c) * 31) + this.f15528d;
        }
    }

    /* renamed from: a */
    int mo19986a(AbstractC4979i abstractC4979i, int i, boolean z);

    /* renamed from: b */
    void mo19985b(C5536v c5536v, int i);

    /* renamed from: c */
    void mo19984c(long j, int i, int i2, int i3, C4997a c4997a);

    /* renamed from: d */
    void mo19983d(Format format);
}
