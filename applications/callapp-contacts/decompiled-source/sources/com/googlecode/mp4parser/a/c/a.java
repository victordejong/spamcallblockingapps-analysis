package com.googlecode.mp4parser.a.c;

import com.b.a.a.ag;
import com.b.a.a.e;
import com.b.a.a.w;
import com.googlecode.mp4parser.a.f;
import com.googlecode.mp4parser.c.b;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/c/a.class */
public class a extends AbstractList<f> {
    private static final com.googlecode.mp4parser.c.f j = com.googlecode.mp4parser.c.f.a(a.class);

    /* renamed from: a  reason: collision with root package name */
    e f33059a;

    /* renamed from: b  reason: collision with root package name */
    ag f33060b;

    /* renamed from: c  reason: collision with root package name */
    SoftReference<ByteBuffer>[] f33061c;

    /* renamed from: d  reason: collision with root package name */
    int[] f33062d;
    long[] e;
    long[] f;
    long[][] g;
    w h;
    int i = 0;

    /* renamed from: com.googlecode.mp4parser.a.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/c/a$a.class */
    final class C0528a implements f {

        /* renamed from: b  reason: collision with root package name */
        private int f33064b;

        public C0528a(int i) {
            this.f33064b = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
            if (r0 == null) goto L_0x005f;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.nio.ByteBuffer b() {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.c.a.C0528a.b():java.nio.ByteBuffer");
        }

        @Override // com.googlecode.mp4parser.a.f
        public final long a() {
            return a.this.h.a(this.f33064b);
        }

        @Override // com.googlecode.mp4parser.a.f
        public final void a(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(b());
        }

        public final String toString() {
            return "Sample(index: " + this.f33064b + " size: " + a.this.h.a(this.f33064b) + ")";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r1v17, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(long r8, com.b.a.a.e r10) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.a.c.a.<init>(long, com.b.a.a.e):void");
    }

    final int a(int i) {
        synchronized (this) {
            int i2 = i + 1;
            int[] iArr = this.f33062d;
            int i3 = this.i;
            if (i2 >= iArr[i3] && i2 < iArr[i3 + 1]) {
                return i3;
            }
            if (i2 < iArr[i3]) {
                this.i = 0;
                while (true) {
                    int[] iArr2 = this.f33062d;
                    int i4 = this.i;
                    if (iArr2[i4 + 1] > i2) {
                        return i4;
                    }
                    this.i = i4 + 1;
                }
            } else {
                this.i = i3 + 1;
                while (true) {
                    int[] iArr3 = this.f33062d;
                    int i5 = this.i;
                    if (iArr3[i5 + 1] > i2) {
                        return i5;
                    }
                    this.i = i5 + 1;
                }
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public /* synthetic */ Object get(int i) {
        if (i < this.h.a()) {
            return new C0528a(i);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return b.a(this.f33060b.c().c().a());
    }
}
