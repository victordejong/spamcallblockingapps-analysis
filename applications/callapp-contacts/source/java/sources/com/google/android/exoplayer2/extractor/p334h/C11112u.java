package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC10977a;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.h.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/u.class */
final class C11112u extends AbstractC10977a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.h.u$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/u$a.class */
    public static final class C11114a implements AbstractC10977a.AbstractC10983f {

        /* renamed from: a */
        private final C11597ad f36392a;

        /* renamed from: b */
        private final C11628u f36393b;

        private C11114a(C11597ad c11597ad) {
            this.f36392a = c11597ad;
            this.f36393b = new C11628u();
        }

        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10983f
        /* renamed from: a */
        public final AbstractC10977a.C10982e mo21454a(AbstractC11121i abstractC11121i, long j) throws IOException {
            int m21456a;
            long mo21398c = abstractC11121i.mo21398c();
            int min = (int) Math.min(20000L, abstractC11121i.mo21395d() - mo21398c);
            this.f36393b.m19811a(min);
            abstractC11121i.mo21394d(this.f36393b.f38733a, 0, min);
            C11628u c11628u = this.f36393b;
            int i = -1;
            char c = 1;
            int i2 = -1;
            while (c11628u.m19812a() >= 4) {
                if (C11112u.m21456a(c11628u.f38733a, c11628u.f38734b) != 442) {
                    c11628u.m19799e(1);
                } else {
                    c11628u.m19799e(4);
                    long m21452a = C11115v.m21452a(c11628u);
                    int i3 = i2;
                    char c2 = c;
                    if (m21452a != -9223372036854775807L) {
                        c2 = this.f36392a.m20006b(m21452a);
                        if (c2 > j) {
                            return c == -9223372036854775807L ? AbstractC10977a.C10982e.m21773a(c2, mo21398c) : AbstractC10977a.C10982e.m21774a(mo21398c + i2);
                        } else if (34464 + c2 > j) {
                            return AbstractC10977a.C10982e.m21774a(mo21398c + c11628u.f38734b);
                        } else {
                            i3 = c11628u.f38734b;
                        }
                    }
                    int i4 = c11628u.f38735c;
                    if (c11628u.m19812a() >= 10) {
                        c11628u.m19799e(9);
                        int m19804c = c11628u.m19804c() & 7;
                        if (c11628u.m19812a() >= m19804c) {
                            c11628u.m19799e(m19804c);
                            if (c11628u.m19812a() >= 4) {
                                if (C11112u.m21456a(c11628u.f38733a, c11628u.f38734b) == 443) {
                                    c11628u.m19799e(4);
                                    int m19802d = c11628u.m19802d();
                                    if (c11628u.m19812a() < m19802d) {
                                        c11628u.m19801d(i4);
                                    } else {
                                        c11628u.m19799e(m19802d);
                                    }
                                }
                                while (true) {
                                    if (c11628u.m19812a() < 4 || (m21456a = C11112u.m21456a(c11628u.f38733a, c11628u.f38734b)) == 442 || m21456a == 441 || (m21456a >>> 8) != 1) {
                                        break;
                                    }
                                    c11628u.m19799e(4);
                                    if (c11628u.m19812a() < 2) {
                                        c11628u.m19801d(i4);
                                        break;
                                    }
                                    c11628u.m19801d(Math.min(c11628u.f38735c, c11628u.f38734b + c11628u.m19802d()));
                                }
                            } else {
                                c11628u.m19801d(i4);
                            }
                        } else {
                            c11628u.m19801d(i4);
                        }
                    } else {
                        c11628u.m19801d(i4);
                    }
                    i = c11628u.f38734b;
                    i2 = i3;
                    c = c2;
                }
            }
            return c != -9223372036854775807L ? AbstractC10977a.C10982e.m21771b(c, mo21398c + i) : AbstractC10977a.C10982e.f35523a;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10983f
        /* renamed from: a */
        public final void mo21455a() {
            C11628u c11628u = this.f36393b;
            byte[] bArr = C11599af.f38653f;
            c11628u.m19808a(bArr, bArr.length);
        }
    }

    public C11112u(C11597ad c11597ad, long j, long j2) {
        super(new AbstractC10977a.C10979b(), new C11114a(c11597ad), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: a */
    static /* synthetic */ int m21456a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
