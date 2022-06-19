package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.AbstractC11563e;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.x */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/x.class */
public interface AbstractC11150x {

    /* renamed from: com.google.android.exoplayer2.extractor.x$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/x$_CC.class */
    public final /* synthetic */ class _CC {
    }

    /* renamed from: com.google.android.exoplayer2.extractor.x$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/x$a.class */
    public static final class C11151a {

        /* renamed from: a */
        public final int f36509a;

        /* renamed from: b */
        public final byte[] f36510b;

        /* renamed from: c */
        public final int f36511c;

        /* renamed from: d */
        public final int f36512d;

        public C11151a(int i, byte[] bArr, int i2, int i3) {
            this.f36509a = i;
            this.f36510b = bArr;
            this.f36511c = i2;
            this.f36512d = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C11151a c11151a = (C11151a) obj;
            return this.f36509a == c11151a.f36509a && this.f36511c == c11151a.f36511c && this.f36512d == c11151a.f36512d && Arrays.equals(this.f36510b, c11151a.f36510b);
        }

        public final int hashCode() {
            return (((((this.f36509a * 31) + Arrays.hashCode(this.f36510b)) * 31) + this.f36511c) * 31) + this.f36512d;
        }
    }

    /* renamed from: a */
    int mo20827a(AbstractC11563e abstractC11563e, int i, boolean z) throws IOException;

    /* renamed from: a */
    void mo20835a(long j, int i, int i2, int i3, C11151a c11151a);

    /* renamed from: a */
    void mo20831a(Format format);

    /* renamed from: a */
    void mo20826a(C11628u c11628u, int i);

    /* renamed from: b */
    int mo20820b(AbstractC11563e abstractC11563e, int i, boolean z) throws IOException;

    /* renamed from: b */
    void mo20819b(C11628u c11628u, int i);
}
