package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/x.class */
public interface x {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/x$_CC.class */
    public final /* synthetic */ class _CC {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/x$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21336a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f21337b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21338c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21339d;

        public a(int i, byte[] bArr, int i2, int i3) {
            this.f21336a = i;
            this.f21337b = bArr;
            this.f21338c = i2;
            this.f21339d = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f21336a == aVar.f21336a && this.f21338c == aVar.f21338c && this.f21339d == aVar.f21339d && Arrays.equals(this.f21337b, aVar.f21337b);
        }

        public final int hashCode() {
            return (((((this.f21336a * 31) + Arrays.hashCode(this.f21337b)) * 31) + this.f21338c) * 31) + this.f21339d;
        }
    }

    int a(e eVar, int i, boolean z) throws IOException;

    void a(long j, int i, int i2, int i3, a aVar);

    void a(Format format);

    void a(u uVar, int i);

    int b(e eVar, int i, boolean z) throws IOException;

    void b(u uVar, int i);
}
