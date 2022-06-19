package com.googlecode.mp4parser.p414a.p418c;

import com.googlecode.mp4parser.p414a.AbstractC16243f;
import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.C3501r;
import com.p102b.p103a.p104a.C3507w;
import com.p102b.p103a.p104a.C3509y;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.googlecode.mp4parser.a.c.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/c/a.class */
public class C16233a extends AbstractList<AbstractC16243f> {

    /* renamed from: j */
    private static final AbstractC16287f f57267j = AbstractC16287f.m7514a(C16233a.class);

    /* renamed from: a */
    AbstractC3487e f57268a;

    /* renamed from: b */
    C3473ag f57269b;

    /* renamed from: c */
    SoftReference<ByteBuffer>[] f57270c;

    /* renamed from: d */
    int[] f57271d;

    /* renamed from: e */
    long[] f57272e;

    /* renamed from: f */
    long[] f57273f;

    /* renamed from: g */
    long[][] f57274g;

    /* renamed from: h */
    C3507w f57275h;

    /* renamed from: i */
    int f57276i = 0;

    /* renamed from: com.googlecode.mp4parser.a.c.a$a */
    /* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/c/a$a.class */
    final class C16234a implements AbstractC16243f {

        /* renamed from: b */
        private int f57278b;

        public C16234a(int i) {
            C16233a.this = r4;
            this.f57278b = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
            if (r0 == null) goto L26;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.nio.ByteBuffer m7589b() {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.googlecode.mp4parser.p414a.p418c.C16233a.C16234a.m7589b():java.nio.ByteBuffer");
        }

        @Override // com.googlecode.mp4parser.p414a.AbstractC16243f
        /* renamed from: a */
        public final long mo7576a() {
            return C16233a.this.f57275h.m37872a(this.f57278b);
        }

        @Override // com.googlecode.mp4parser.p414a.AbstractC16243f
        /* renamed from: a */
        public final void mo7575a(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write(m7589b());
        }

        public final String toString() {
            return "Sample(index: " + this.f57278b + " size: " + C16233a.this.f57275h.m37872a(this.f57278b) + ")";
        }
    }

    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r1v17, types: [long[], long[][]] */
    public C16233a(long j, AbstractC3487e abstractC3487e) {
        int i;
        int i2;
        int i3;
        this.f57269b = null;
        this.f57270c = null;
        this.f57268a = abstractC3487e;
        for (C3473ag c3473ag : ((C3501r) abstractC3487e.mo7494a(C3501r.class).get(0)).mo7494a(C3473ag.class)) {
            if (c3473ag.m37908a().m37905a() == j) {
                this.f57269b = c3473ag;
            }
        }
        C3473ag c3473ag2 = this.f57269b;
        if (c3473ag2 != null) {
            long[] mo37896a = c3473ag2.m37907c().m37867e().mo37896a();
            this.f57272e = mo37896a;
            this.f57273f = new long[mo37896a.length];
            SoftReference<ByteBuffer>[] softReferenceArr = new SoftReference[mo37896a.length];
            this.f57270c = softReferenceArr;
            Arrays.fill(softReferenceArr, new SoftReference(null));
            this.f57274g = new long[this.f57272e.length];
            this.f57275h = this.f57269b.m37907c().m37869c();
            List<C3509y.C3510a> m37862a = this.f57269b.m37907c().m37868d().m37862a();
            C3509y.C3510a[] c3510aArr = (C3509y.C3510a[]) m37862a.toArray(new C3509y.C3510a[m37862a.size()]);
            C3509y.C3510a c3510a = c3510aArr[0];
            char c = c3510a.f13367a;
            int m7517a = C16282b.m7517a(c3510a.f13368b);
            int size = size();
            int i4 = 0;
            int i5 = 1;
            int i6 = 0;
            int i7 = 1;
            do {
                i = i4 + 1;
                int i8 = m7517a;
                char c2 = c;
                int i9 = i5;
                if (i == c) {
                    if (c3510aArr.length > i5) {
                        C3509y.C3510a c3510a2 = c3510aArr[i5];
                        i8 = C16282b.m7517a(c3510a2.f13368b);
                        c2 = c3510a2.f13367a;
                        i9 = i5 + 1;
                        i6 = m7517a;
                    } else {
                        i8 = -1;
                        c2 = 65535;
                        i6 = m7517a;
                        i9 = i5;
                    }
                }
                this.f57274g[i - 1] = new long[i6];
                i2 = i7 + i6;
                m7517a = i8;
                c = c2;
                i4 = i;
                i5 = i9;
                i7 = i2;
            } while (i2 <= size);
            this.f57271d = new int[i + 1];
            C3509y.C3510a c3510a3 = c3510aArr[0];
            char c3 = c3510a3.f13367a;
            int m7517a2 = C16282b.m7517a(c3510a3.f13368b);
            int i10 = 0;
            int i11 = 1;
            int i12 = 1;
            int i13 = 0;
            while (true) {
                i3 = i10 + 1;
                this.f57271d[i10] = i11;
                int i14 = m7517a2;
                char c4 = c3;
                int i15 = i12;
                if (i3 == c3) {
                    if (c3510aArr.length > i12) {
                        C3509y.C3510a c3510a4 = c3510aArr[i12];
                        i14 = C16282b.m7517a(c3510a4.f13368b);
                        c4 = c3510a4.f13367a;
                        i15 = i12 + 1;
                        i13 = m7517a2;
                    } else {
                        i14 = -1;
                        c4 = 65535;
                        i13 = m7517a2;
                        i15 = i12;
                    }
                }
                int i16 = i11 + i13;
                if (i16 > size) {
                    break;
                }
                m7517a2 = i14;
                c3 = c4;
                i10 = i3;
                i11 = i16;
                i12 = i15;
            }
            this.f57271d[i3] = Integer.MAX_VALUE;
            char c5 = 0;
            int i17 = 1;
            int i18 = 0;
            while (true) {
                char c6 = c5;
                if (i17 > this.f57275h.m37873a()) {
                    return;
                }
                while (i17 == this.f57271d[i18]) {
                    i18++;
                    c6 = 0;
                }
                long[] jArr = this.f57273f;
                int i19 = i18 - 1;
                long j2 = jArr[i19];
                int i20 = i17 - 1;
                jArr[i19] = j2 + this.f57275h.m37872a(i20);
                this.f57274g[i19][i17 - this.f57271d[i19]] = c6 == 1 ? 1 : 0;
                c5 = c6 + this.f57275h.m37872a(i20);
                i17++;
            }
        } else {
            throw new RuntimeException("This MP4 does not contain track ".concat(String.valueOf(j)));
        }
    }

    /* renamed from: a */
    final int m7590a(int i) {
        synchronized (this) {
            int i2 = i + 1;
            int[] iArr = this.f57271d;
            int i3 = this.f57276i;
            if (i2 < iArr[i3] || i2 >= iArr[i3 + 1]) {
                if (i2 < iArr[i3]) {
                    this.f57276i = 0;
                    while (true) {
                        int[] iArr2 = this.f57271d;
                        int i4 = this.f57276i;
                        if (iArr2[i4 + 1] > i2) {
                            return i4;
                        }
                        this.f57276i = i4 + 1;
                    }
                } else {
                    this.f57276i = i3 + 1;
                    while (true) {
                        int[] iArr3 = this.f57271d;
                        int i5 = this.f57276i;
                        if (iArr3[i5 + 1] > i2) {
                            return i5;
                        }
                        this.f57276i = i5 + 1;
                    }
                }
            } else {
                return i3;
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public /* synthetic */ Object get(int i) {
        if (i < this.f57275h.m37873a()) {
            return new C16234a(i);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return C16282b.m7517a(this.f57269b.m37907c().m37869c().m37873a());
    }
}
