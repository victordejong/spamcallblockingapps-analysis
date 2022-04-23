package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/a.class */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f3313a;

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/a$a.class */
    static final class C0081a extends a {

        /* renamed from: b  reason: collision with root package name */
        public final long f3314b;

        /* renamed from: c  reason: collision with root package name */
        public final List<b> f3315c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public final List<C0081a> f3316d = new ArrayList();

        public C0081a(int i, long j) {
            super(i);
            this.f3314b = j;
        }

        public final void a(C0081a aVar) {
            this.f3316d.add(aVar);
        }

        public final void a(b bVar) {
            this.f3315c.add(bVar);
        }

        public final b c(int i) {
            int size = this.f3315c.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.f3315c.get(i2);
                if (bVar.f3313a == i) {
                    return bVar;
                }
            }
            return null;
        }

        public final C0081a d(int i) {
            int size = this.f3316d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0081a aVar = this.f3316d.get(i2);
                if (aVar.f3313a == i) {
                    return aVar;
                }
            }
            return null;
        }

        @Override // androidx.media2.exoplayer.external.extractor.mp4.a
        public final String toString() {
            String b2 = b(this.f3313a);
            String arrays = Arrays.toString(this.f3315c.toArray());
            String arrays2 = Arrays.toString(this.f3316d.toArray());
            StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
            sb.append(b2);
            sb.append(" leaves: ");
            sb.append(arrays);
            sb.append(" containers: ");
            sb.append(arrays2);
            return sb.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/a$b.class */
    static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        public final p f3317b;

        public b(int i, p pVar) {
            super(i);
            this.f3317b = pVar;
        }
    }

    public a(int i) {
        this.f3313a = i;
    }

    public static int a(int i) {
        return (i >> 24) & 255;
    }

    public static String b(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return b(this.f3313a);
    }
}
