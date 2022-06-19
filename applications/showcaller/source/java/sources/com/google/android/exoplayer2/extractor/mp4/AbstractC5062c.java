package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.mp4.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/c.class */
public abstract class AbstractC5062c {

    /* renamed from: a */
    public final int f15763a;

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/c$a.class */
    static final class C5063a extends AbstractC5062c {

        /* renamed from: b */
        public final long f15764b;

        /* renamed from: c */
        public final List<C5064b> f15765c = new ArrayList();

        /* renamed from: d */
        public final List<C5063a> f15766d = new ArrayList();

        public C5063a(int i, long j) {
            super(i);
            this.f15764b = j;
        }

        /* renamed from: d */
        public void m20717d(C5063a c5063a) {
            this.f15766d.add(c5063a);
        }

        /* renamed from: e */
        public void m20716e(C5064b c5064b) {
            this.f15765c.add(c5064b);
        }

        /* renamed from: f */
        public C5063a m20715f(int i) {
            int size = this.f15766d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C5063a c5063a = this.f15766d.get(i2);
                if (c5063a.f15763a == i) {
                    return c5063a;
                }
            }
            return null;
        }

        /* renamed from: g */
        public C5064b m20714g(int i) {
            int size = this.f15765c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C5064b c5064b = this.f15765c.get(i2);
                if (c5064b.f15763a == i) {
                    return c5064b;
                }
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AbstractC5062c
        public String toString() {
            return AbstractC5062c.m20720a(this.f15763a) + " leaves: " + Arrays.toString(this.f15765c.toArray()) + " containers: " + Arrays.toString(this.f15766d.toArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/c$b.class */
    public static final class C5064b extends AbstractC5062c {

        /* renamed from: b */
        public final C5536v f15767b;

        public C5064b(int i, C5536v c5536v) {
            super(i);
            this.f15767b = c5536v;
        }
    }

    public AbstractC5062c(int i) {
        this.f15763a = i;
    }

    /* renamed from: a */
    public static String m20720a(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    /* renamed from: b */
    public static int m20719b(int i) {
        return i & 16777215;
    }

    /* renamed from: c */
    public static int m20718c(int i) {
        return (i >> 24) & 255;
    }

    public String toString() {
        return m20720a(this.f15763a);
    }
}
