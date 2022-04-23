package com.google.android.exoplayer2.a;

import android.util.SparseArray;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.r;
import com.google.common.base.j;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/b.class */
public interface b {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f20641a;

        /* renamed from: b  reason: collision with root package name */
        public final al f20642b;

        /* renamed from: c  reason: collision with root package name */
        public final int f20643c;

        /* renamed from: d  reason: collision with root package name */
        public final r.a f20644d;
        public final long e;
        public final al f;
        public final int g;
        public final r.a h;
        public final long i;
        public final long j;

        public a(long j, al alVar, int i, r.a aVar, long j2, al alVar2, int i2, r.a aVar2, long j3, long j4) {
            this.f20641a = j;
            this.f20642b = alVar;
            this.f20643c = i;
            this.f20644d = aVar;
            this.e = j2;
            this.f = alVar2;
            this.g = i2;
            this.h = aVar2;
            this.i = j3;
            this.j = j4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f20641a == aVar.f20641a && this.f20643c == aVar.f20643c && this.e == aVar.e && this.g == aVar.g && this.i == aVar.i && this.j == aVar.j && j.a(this.f20642b, aVar.f20642b) && j.a(this.f20644d, aVar.f20644d) && j.a(this.f, aVar.f) && j.a(this.h, aVar.h);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.f20641a), this.f20642b, Integer.valueOf(this.f20643c), this.f20644d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j)});
        }
    }

    /* renamed from: com.google.android.exoplayer2.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/b$b.class */
    public static final class C0420b extends com.google.android.exoplayer2.util.r {

        /* renamed from: a  reason: collision with root package name */
        final SparseArray<a> f20645a = new SparseArray<>(0);

        @Override // com.google.android.exoplayer2.util.r
        public final boolean a(int i) {
            return super.a(i);
        }

        @Override // com.google.android.exoplayer2.util.r
        public final boolean a(int... iArr) {
            return super.a(iArr);
        }

        @Override // com.google.android.exoplayer2.util.r
        public final int b(int i) {
            return super.b(i);
        }
    }
}
