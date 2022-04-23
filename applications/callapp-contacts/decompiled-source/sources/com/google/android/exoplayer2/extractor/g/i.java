package com.google.android.exoplayer2.extractor.g;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.g.h;
import com.google.android.exoplayer2.extractor.y;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/i.class */
final class i extends h {
    private a j;
    private int k;
    private boolean l;
    private z.d m;
    private z.b n;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/i$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final z.d f21133a;

        /* renamed from: b  reason: collision with root package name */
        public final z.b f21134b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f21135c;

        /* renamed from: d  reason: collision with root package name */
        public final z.c[] f21136d;
        public final int e;

        public a(z.d dVar, z.b bVar, byte[] bArr, z.c[] cVarArr, int i) {
            this.f21133a = dVar;
            this.f21134b = bVar;
            this.f21135c = bArr;
            this.f21136d = cVarArr;
            this.e = i;
        }
    }

    public static boolean a(u uVar) {
        try {
            return z.a(1, uVar, true);
        } catch (ParserException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.g.h
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.j = null;
            this.m = null;
            this.n = null;
        }
        this.k = 0;
        this.l = false;
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean a(u uVar, long j, h.a aVar) throws IOException {
        a aVar2;
        if (this.j != null) {
            com.google.android.exoplayer2.util.a.b(aVar.f21131a);
            return false;
        }
        z.d dVar = this.m;
        if (dVar == null) {
            z.a(1, uVar, false);
            int p = uVar.p();
            int c2 = uVar.c();
            int p2 = uVar.p();
            int k = uVar.k();
            if (k <= 0) {
                k = -1;
            }
            int k2 = uVar.k();
            if (k2 <= 0) {
                k2 = -1;
            }
            int k3 = uVar.k();
            if (k3 <= 0) {
                k3 = -1;
            }
            int c3 = uVar.c();
            this.m = new z.d(p, c2, p2, k, k2, k3, (int) Math.pow(2.0d, c3 & 15), (int) Math.pow(2.0d, (c3 & 240) >> 4), (uVar.c() & 1) > 0, Arrays.copyOf(uVar.f22335a, uVar.f22337c));
            aVar2 = null;
        } else {
            z.b bVar = this.n;
            if (bVar == null) {
                this.n = z.a(uVar, true, true);
                aVar2 = null;
            } else {
                byte[] bArr = new byte[uVar.f22337c];
                System.arraycopy(uVar.f22335a, 0, bArr, 0, uVar.f22337c);
                int i = dVar.f21356b;
                z.a(5, uVar, false);
                int c4 = uVar.c() + 1;
                y yVar = new y(uVar.f22335a);
                yVar.b(uVar.f22336b * 8);
                for (int i2 = 0; i2 < c4; i2++) {
                    if (yVar.a(24) == 5653314) {
                        int a2 = yVar.a(16);
                        int a3 = yVar.a(24);
                        long[] jArr = new long[a3];
                        boolean a4 = yVar.a();
                        if (a4) {
                            int a5 = yVar.a(5) + 1;
                            int i3 = 0;
                            while (true) {
                                yVar = yVar;
                                c4 = c4;
                                if (i3 >= a3) {
                                    break;
                                }
                                int a6 = yVar.a(z.a(a3 - i3));
                                int i4 = i3;
                                for (int i5 = 0; i5 < a6 && i4 < a3; i5++) {
                                    jArr[i4] = a5;
                                    i4++;
                                }
                                a5++;
                                i3 = i4;
                            }
                        } else {
                            boolean a7 = yVar.a();
                            for (int i6 = 0; i6 < a3; i6++) {
                                if (!a7 || yVar.a()) {
                                    jArr[i6] = yVar.a(5) + 1;
                                } else {
                                    jArr[i6] = 0;
                                }
                            }
                            yVar = yVar;
                        }
                        int a8 = yVar.a(4);
                        if (a8 <= 2) {
                            if (a8 == 1 || a8 == 2) {
                                yVar.b(32);
                                yVar.b(32);
                                int a9 = yVar.a(4);
                                yVar.b(1);
                                yVar.b((int) ((a8 == 1 ? a2 != 0 ? (long) Math.floor(Math.pow(a3, 1.0d / a2)) : 0L : a3 * a2) * (a9 + 1)));
                            }
                            new z.a(a2, a3, jArr, a8, a4);
                        } else {
                            throw new ParserException("lookup type greater than 2 not decodable: ".concat(String.valueOf(a8)));
                        }
                    } else {
                        throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + ((yVar.f21340a * 8) + yVar.f21341b));
                    }
                }
                int a10 = yVar.a(6);
                for (int i7 = 0; i7 < a10 + 1; i7++) {
                    if (yVar.a(16) != 0) {
                        throw new ParserException("placeholder of time domain transforms not zeroed out");
                    }
                }
                z.c(yVar);
                z.b(yVar);
                z.a(i, yVar);
                z.c[] a11 = z.a(yVar);
                if (yVar.a()) {
                    aVar2 = new a(dVar, bVar, bArr, a11, z.a(a11.length - 1));
                } else {
                    throw new ParserException("framing bit after modes not set as expected");
                }
            }
        }
        this.j = aVar2;
        if (aVar2 == null) {
            return true;
        }
        z.d dVar2 = aVar2.f21133a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar2.j);
        arrayList.add(aVar2.f21135c);
        Format.a aVar3 = new Format.a();
        aVar3.k = "audio/vorbis";
        aVar3.f = dVar2.e;
        aVar3.g = dVar2.f21358d;
        aVar3.x = dVar2.f21356b;
        aVar3.y = dVar2.f21357c;
        aVar3.m = arrayList;
        aVar.f21131a = aVar3.a();
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.g.h
    protected final long b(u uVar) {
        int i = 0;
        if ((uVar.f22335a[0] & 1) == 1) {
            return -1L;
        }
        byte b2 = uVar.f22335a[0];
        a aVar = (a) com.google.android.exoplayer2.util.a.a(this.j);
        int i2 = !aVar.f21136d[(b2 >> 1) & (255 >>> (8 - aVar.e))].f21351a ? aVar.f21133a.g : aVar.f21133a.h;
        if (this.l) {
            i = (this.k + i2) / 4;
        }
        long j = i;
        if (uVar.f22335a.length < uVar.f22337c + 4) {
            byte[] copyOf = Arrays.copyOf(uVar.f22335a, uVar.f22337c + 4);
            uVar.a(copyOf, copyOf.length);
        } else {
            uVar.c(uVar.f22337c + 4);
        }
        byte[] bArr = uVar.f22335a;
        bArr[uVar.f22337c - 4] = (byte) (j & 255);
        bArr[uVar.f22337c - 3] = (byte) ((j >>> 8) & 255);
        bArr[uVar.f22337c - 2] = (byte) ((j >>> 16) & 255);
        bArr[uVar.f22337c - 1] = (byte) ((j >>> 24) & 255);
        this.l = true;
        this.k = i2;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.extractor.g.h
    public final void c(long j) {
        super.c(j);
        int i = 0;
        this.l = j != 0;
        z.d dVar = this.m;
        if (dVar != null) {
            i = dVar.g;
        }
        this.k = i;
    }
}
