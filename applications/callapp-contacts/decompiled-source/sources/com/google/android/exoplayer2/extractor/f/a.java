package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/a.class */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f21013a;

    /* renamed from: com.google.android.exoplayer2.extractor.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/a$a.class */
    static final class C0427a extends a {

        /* renamed from: b  reason: collision with root package name */
        public final long f21014b;

        /* renamed from: c  reason: collision with root package name */
        public final List<b> f21015c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public final List<C0427a> f21016d = new ArrayList();

        public C0427a(int i, long j) {
            super(i);
            this.f21014b = j;
        }

        public final void a(C0427a aVar) {
            this.f21016d.add(aVar);
        }

        public final void a(b bVar) {
            this.f21015c.add(bVar);
        }

        public final b c(int i) {
            int size = this.f21015c.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.f21015c.get(i2);
                if (bVar.f21013a == i) {
                    return bVar;
                }
            }
            return null;
        }

        public final C0427a d(int i) {
            int size = this.f21016d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0427a aVar = this.f21016d.get(i2);
                if (aVar.f21013a == i) {
                    return aVar;
                }
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.extractor.f.a
        public final String toString() {
            return b(this.f21013a) + " leaves: " + Arrays.toString(this.f21015c.toArray()) + " containers: " + Arrays.toString(this.f21016d.toArray());
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/a$b.class */
    static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        public final u f21017b;

        public b(int i, u uVar) {
            super(i);
            this.f21017b = uVar;
        }
    }

    public a(int i) {
        this.f21013a = i;
    }

    public static int a(int i) {
        return (i >> 24) & 255;
    }

    public static String b(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return b(this.f21013a);
    }
}
