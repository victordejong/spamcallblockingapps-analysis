package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.f.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/a.class */
public abstract class AbstractC11021a {

    /* renamed from: a */
    public final int f35794a;

    /* renamed from: com.google.android.exoplayer2.extractor.f.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/a$a.class */
    static final class C11022a extends AbstractC11021a {

        /* renamed from: b */
        public final long f35795b;

        /* renamed from: c */
        public final List<C11023b> f35796c = new ArrayList();

        /* renamed from: d */
        public final List<C11022a> f35797d = new ArrayList();

        public C11022a(int i, long j) {
            super(i);
            this.f35795b = j;
        }

        /* renamed from: a */
        public final void m21683a(C11022a c11022a) {
            this.f35797d.add(c11022a);
        }

        /* renamed from: a */
        public final void m21682a(C11023b c11023b) {
            this.f35796c.add(c11023b);
        }

        /* renamed from: c */
        public final C11023b m21681c(int i) {
            int size = this.f35796c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C11023b c11023b = this.f35796c.get(i2);
                if (c11023b.f35794a == i) {
                    return c11023b;
                }
            }
            return null;
        }

        /* renamed from: d */
        public final C11022a m21680d(int i) {
            int size = this.f35797d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C11022a c11022a = this.f35797d.get(i2);
                if (c11022a.f35794a == i) {
                    return c11022a;
                }
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.extractor.p332f.AbstractC11021a
        public final String toString() {
            return m21684b(this.f35794a) + " leaves: " + Arrays.toString(this.f35796c.toArray()) + " containers: " + Arrays.toString(this.f35797d.toArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.f.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/a$b.class */
    public static final class C11023b extends AbstractC11021a {

        /* renamed from: b */
        public final C11628u f35798b;

        public C11023b(int i, C11628u c11628u) {
            super(i);
            this.f35798b = c11628u;
        }
    }

    public AbstractC11021a(int i) {
        this.f35794a = i;
    }

    /* renamed from: a */
    public static int m21685a(int i) {
        return (i >> 24) & 255;
    }

    /* renamed from: b */
    public static String m21684b(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return m21684b(this.f35794a);
    }
}
