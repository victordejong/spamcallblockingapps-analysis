package com.google.android.exoplayer2.p323a;

import android.util.SparseArray;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.util.C11623r;
import com.google.common.base.C15386j;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/b.class */
public interface AbstractC10837b {

    /* renamed from: com.google.android.exoplayer2.a.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/b$a.class */
    public static final class C10838a {

        /* renamed from: a */
        public final long f34880a;

        /* renamed from: b */
        public final AbstractC10864al f34881b;

        /* renamed from: c */
        public final int f34882c;

        /* renamed from: d */
        public final AbstractC11315r.C11316a f34883d;

        /* renamed from: e */
        public final long f34884e;

        /* renamed from: f */
        public final AbstractC10864al f34885f;

        /* renamed from: g */
        public final int f34886g;

        /* renamed from: h */
        public final AbstractC11315r.C11316a f34887h;

        /* renamed from: i */
        public final long f34888i;

        /* renamed from: j */
        public final long f34889j;

        public C10838a(long j, AbstractC10864al abstractC10864al, int i, AbstractC11315r.C11316a c11316a, long j2, AbstractC10864al abstractC10864al2, int i2, AbstractC11315r.C11316a c11316a2, long j3, long j4) {
            this.f34880a = j;
            this.f34881b = abstractC10864al;
            this.f34882c = i;
            this.f34883d = c11316a;
            this.f34884e = j2;
            this.f34885f = abstractC10864al2;
            this.f34886g = i2;
            this.f34887h = c11316a2;
            this.f34888i = j3;
            this.f34889j = j4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C10838a c10838a = (C10838a) obj;
            return this.f34880a == c10838a.f34880a && this.f34882c == c10838a.f34882c && this.f34884e == c10838a.f34884e && this.f34886g == c10838a.f34886g && this.f34888i == c10838a.f34888i && this.f34889j == c10838a.f34889j && C15386j.m8951a(this.f34881b, c10838a.f34881b) && C15386j.m8951a(this.f34883d, c10838a.f34883d) && C15386j.m8951a(this.f34885f, c10838a.f34885f) && C15386j.m8951a(this.f34887h, c10838a.f34887h);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.f34880a), this.f34881b, Integer.valueOf(this.f34882c), this.f34883d, Long.valueOf(this.f34884e), this.f34885f, Integer.valueOf(this.f34886g), this.f34887h, Long.valueOf(this.f34888i), Long.valueOf(this.f34889j)});
        }
    }

    /* renamed from: com.google.android.exoplayer2.a.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/b$b.class */
    public static final class C10839b extends C11623r {

        /* renamed from: a */
        final SparseArray<C10838a> f34890a = new SparseArray<>(0);

        @Override // com.google.android.exoplayer2.util.C11623r
        /* renamed from: a */
        public final boolean mo19839a(int i) {
            return super.mo19839a(i);
        }

        @Override // com.google.android.exoplayer2.util.C11623r
        /* renamed from: a */
        public final boolean mo19838a(int... iArr) {
            return super.mo19838a(iArr);
        }

        @Override // com.google.android.exoplayer2.util.C11623r
        /* renamed from: b */
        public final int mo19837b(int i) {
            return super.mo19837b(i);
        }
    }
}
