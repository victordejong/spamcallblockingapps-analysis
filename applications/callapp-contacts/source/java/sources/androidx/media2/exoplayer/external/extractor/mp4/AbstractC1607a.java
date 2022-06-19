package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/a.class */
public abstract class AbstractC1607a {

    /* renamed from: a */
    public final int f6333a;

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/a$a.class */
    static final class C1608a extends AbstractC1607a {

        /* renamed from: b */
        public final long f6334b;

        /* renamed from: c */
        public final List<C1609b> f6335c = new ArrayList();

        /* renamed from: d */
        public final List<C1608a> f6336d = new ArrayList();

        public C1608a(int i, long j) {
            super(i);
            this.f6334b = j;
        }

        /* renamed from: a */
        public final void m42591a(C1608a c1608a) {
            this.f6336d.add(c1608a);
        }

        /* renamed from: a */
        public final void m42590a(C1609b c1609b) {
            this.f6335c.add(c1609b);
        }

        /* renamed from: c */
        public final C1609b m42589c(int i) {
            int size = this.f6335c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1609b c1609b = this.f6335c.get(i2);
                if (c1609b.f6333a == i) {
                    return c1609b;
                }
            }
            return null;
        }

        /* renamed from: d */
        public final C1608a m42588d(int i) {
            int size = this.f6336d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1608a c1608a = this.f6336d.get(i2);
                if (c1608a.f6333a == i) {
                    return c1608a;
                }
            }
            return null;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.AbstractC1607a
        public final String toString() {
            String b = m42592b(this.f6333a);
            String arrays = Arrays.toString(this.f6335c.toArray());
            String arrays2 = Arrays.toString(this.f6336d.toArray());
            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
            sb.append(b);
            sb.append(" leaves: ");
            sb.append(arrays);
            sb.append(" containers: ");
            sb.append(arrays2);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/a$b.class */
    public static final class C1609b extends AbstractC1607a {

        /* renamed from: b */
        public final C2018p f6337b;

        public C1609b(int i, C2018p c2018p) {
            super(i);
            this.f6337b = c2018p;
        }
    }

    public AbstractC1607a(int i) {
        this.f6333a = i;
    }

    /* renamed from: a */
    public static int m42593a(int i) {
        return (i >> 24) & 255;
    }

    /* renamed from: b */
    public static String m42592b(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return m42592b(this.f6333a);
    }
}
