package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.flac.VorbisComment;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.util.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/l.class */
public final class C5522l {

    /* renamed from: a */
    public final int f17895a;

    /* renamed from: b */
    public final int f17896b;

    /* renamed from: c */
    public final int f17897c;

    /* renamed from: d */
    public final int f17898d;

    /* renamed from: e */
    public final int f17899e;

    /* renamed from: f */
    public final int f17900f;

    /* renamed from: g */
    public final int f17901g;

    /* renamed from: h */
    public final int f17902h;

    /* renamed from: i */
    public final int f17903i;

    /* renamed from: j */
    public final long f17904j;

    /* renamed from: k */
    public final C5523a f17905k;

    /* renamed from: l */
    private final Metadata f17906l;

    /* renamed from: com.google.android.exoplayer2.util.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/l$a.class */
    public static class C5523a {

        /* renamed from: a */
        public final long[] f17907a;

        /* renamed from: b */
        public final long[] f17908b;

        public C5523a(long[] jArr, long[] jArr2) {
            this.f17907a = jArr;
            this.f17908b = jArr2;
        }
    }

    private C5522l(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, C5523a c5523a, Metadata metadata) {
        this.f17895a = i;
        this.f17896b = i2;
        this.f17897c = i3;
        this.f17898d = i4;
        this.f17899e = i5;
        this.f17900f = m18765l(i5);
        this.f17901g = i6;
        this.f17902h = i7;
        this.f17903i = m18770g(i7);
        this.f17904j = j;
        this.f17905k = c5523a;
        this.f17906l = metadata;
    }

    public C5522l(byte[] bArr, int i) {
        C5535u c5535u = new C5535u(bArr);
        c5535u.m18696o(i * 8);
        this.f17895a = c5535u.m18703h(16);
        this.f17896b = c5535u.m18703h(16);
        this.f17897c = c5535u.m18703h(24);
        this.f17898d = c5535u.m18703h(24);
        int m18703h = c5535u.m18703h(20);
        this.f17899e = m18703h;
        this.f17900f = m18765l(m18703h);
        this.f17901g = c5535u.m18703h(3) + 1;
        int m18703h2 = c5535u.m18703h(5) + 1;
        this.f17902h = m18703h2;
        this.f17903i = m18770g(m18703h2);
        this.f17904j = c5535u.m18701j(36);
        this.f17905k = null;
        this.f17906l = null;
    }

    /* renamed from: a */
    private static Metadata m18776a(List<String> list, List<PictureFrame> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String[] m18816o0 = C5515h0.m18816o0(str, "=");
                if (m18816o0.length != 2) {
                    C5526o.m18742f("FlacStreamMetadata", "Failed to parse Vorbis comment: " + str);
                } else {
                    arrayList.add(new VorbisComment(m18816o0[0], m18816o0[1]));
                }
            }
            arrayList.addAll(list2);
            return arrayList.isEmpty() ? null : new Metadata(arrayList);
        }
        return null;
    }

    /* renamed from: g */
    private static int m18770g(int i) {
        if (i != 8) {
            if (i == 12) {
                return 2;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 20) {
                return 5;
            }
            return i != 24 ? -1 : 6;
        }
        return 1;
    }

    /* renamed from: l */
    private static int m18765l(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    /* renamed from: b */
    public C5522l m18775b(List<PictureFrame> list) {
        return new C5522l(this.f17895a, this.f17896b, this.f17897c, this.f17898d, this.f17899e, this.f17901g, this.f17902h, this.f17904j, this.f17905k, m18767j(m18776a(Collections.emptyList(), list)));
    }

    /* renamed from: c */
    public C5522l m18774c(C5523a c5523a) {
        return new C5522l(this.f17895a, this.f17896b, this.f17897c, this.f17898d, this.f17899e, this.f17901g, this.f17902h, this.f17904j, c5523a, this.f17906l);
    }

    /* renamed from: d */
    public C5522l m18773d(List<String> list) {
        return new C5522l(this.f17895a, this.f17896b, this.f17897c, this.f17898d, this.f17899e, this.f17901g, this.f17902h, this.f17904j, this.f17905k, m18767j(m18776a(list, Collections.emptyList())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r1v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* renamed from: e */
    public long m18772e() {
        ?? r9;
        ?? r7;
        int i = this.f17898d;
        if (i > 0) {
            r7 = (i + this.f17897c) / 2;
            r9 = 1;
        } else {
            int i2 = this.f17895a;
            r7 = (((((i2 != this.f17896b || i2 <= 0) ? true : (long) i2) == true ? 1L : 0L) * this.f17901g) * this.f17902h) / 8;
            r9 = '@';
        }
        return r7 + r9;
    }

    /* renamed from: f */
    public int m18771f() {
        return this.f17902h * this.f17899e * this.f17901g;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: h */
    public long m18769h() {
        long j = this.f17904j;
        return j == 0 ? (char) 1 : (j * 1000000) / this.f17899e;
    }

    /* renamed from: i */
    public Format m18768i(byte[] bArr, Metadata metadata) {
        bArr[4] = (byte) (-128);
        int i = this.f17898d;
        if (i <= 0) {
            i = -1;
        }
        return Format.m21742m(null, "audio/flac", null, m18771f(), i, this.f17901g, this.f17899e, -1, 0, 0, Collections.singletonList(bArr), null, 0, null, m18767j(metadata));
    }

    /* renamed from: j */
    public Metadata m18767j(Metadata metadata) {
        Metadata metadata2 = this.f17906l;
        if (metadata2 != null) {
            metadata = metadata2.m20394b(metadata);
        }
        return metadata;
    }

    /* renamed from: k */
    public long m18766k(long j) {
        return C5515h0.m18817o((j * this.f17899e) / 1000000, 0L, this.f17904j - 1);
    }
}
