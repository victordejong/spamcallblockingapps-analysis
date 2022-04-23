package com.google.android.exoplayer2.extractor.e;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.o;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.s;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/d.class */
public final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f20998a = _$$Lambda$d$XJdJ6ZpohJv4AAuLJquM_M3__Ck.INSTANCE;

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0433a f20999c = _$$Lambda$d$APLDWOkc9tfIH2WjBq4j4dsr_Xw.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    public boolean f21000b;

    /* renamed from: d  reason: collision with root package name */
    private final int f21001d;
    private final long e;
    private final u f;
    private final o.a g;
    private final r h;
    private final s i;
    private final x j;
    private j k;
    private x l;
    private x m;
    private int n;
    private Metadata o;
    private long p;
    private long q;
    private long r;
    private int s;
    private e t;
    private boolean u;
    private long v;

    public d() {
        this(0);
    }

    public d(int i) {
        this(i, -9223372036854775807L);
    }

    public d(int i, long j) {
        this.f21001d = i;
        this.e = j;
        this.f = new u(10);
        this.g = new o.a();
        this.h = new r();
        this.p = -9223372036854775807L;
        this.i = new s();
        g gVar = new g();
        this.j = gVar;
        this.m = gVar;
    }

    private long a(long j) {
        return this.p + ((j * 1000000) / this.g.f20787d);
    }

    private static long a(Metadata metadata) {
        if (metadata == null) {
            return -9223372036854775807L;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                if (textInformationFrame.id.equals("TLEN")) {
                    return f.b(Long.parseLong(textInformationFrame.value));
                }
            }
        }
        return -9223372036854775807L;
    }

    private static c a(Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof MlltFrame) {
                MlltFrame mlltFrame = (MlltFrame) entry;
                long a2 = a(metadata);
                int length2 = mlltFrame.bytesDeviations.length;
                int i2 = length2 + 1;
                long[] jArr = new long[i2];
                long[] jArr2 = new long[i2];
                jArr[0] = j;
                long j2 = 0;
                jArr2[0] = 0;
                for (int i3 = 1; i3 <= length2; i3++) {
                    int i4 = mlltFrame.bytesBetweenReference;
                    int[] iArr = mlltFrame.bytesDeviations;
                    int i5 = i3 - 1;
                    j += i4 + iArr[i5];
                    j2 += mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i5];
                    jArr[i3] = j;
                    jArr2[i3] = j2;
                }
                return new c(jArr, jArr2, a2);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i, int i2, int i3, int i4, int i5) {
        if (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) {
            return true;
        }
        if (i2 == 77 && i3 == 76 && i4 == 76) {
            return i5 == 84 || i == 2;
        }
        return false;
    }

    private static boolean a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private boolean a(i iVar, boolean z) throws IOException {
        int i;
        int a2;
        int i2 = z ? 32768 : 131072;
        iVar.a();
        if (iVar.c() == 0) {
            Metadata a3 = this.i.a(iVar, (this.f21001d & 4) == 0 ? null : f20999c);
            this.o = a3;
            if (a3 != null) {
                this.h.a(a3);
            }
            i = (int) iVar.b();
            if (!z) {
                iVar.b(i);
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (!c(iVar)) {
                this.f.d(0);
                int j = this.f.j();
                if ((i3 == 0 || a(j, i3)) && (a2 = o.a(j)) != -1) {
                    i4++;
                    if (i4 != 1) {
                        if (i4 == 4) {
                            break;
                        }
                    } else {
                        this.g.a(j);
                        i3 = j;
                    }
                    iVar.c(a2 - 4);
                } else {
                    int i6 = i5 + 1;
                    if (i5 != i2) {
                        if (z) {
                            iVar.a();
                            iVar.c(i + i6);
                        } else {
                            iVar.b(1);
                        }
                        i5 = i6;
                        i3 = 0;
                        i4 = 0;
                    } else if (z) {
                        return false;
                    } else {
                        throw new ParserException("Searched too many bytes.");
                    }
                }
            } else if (i4 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            iVar.b(i + i5);
        } else {
            iVar.a();
        }
        this.n = i3;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new d()};
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0351, code lost:
        if ((r11.f21001d & 1) != 0) goto L_0x0354;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02be  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int b(com.google.android.exoplayer2.extractor.i r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.e.d.b(com.google.android.exoplayer2.extractor.i):int");
    }

    private boolean c(i iVar) throws IOException {
        e eVar = this.t;
        if (eVar != null) {
            long c2 = eVar.c();
            if (c2 != -1 && iVar.b() > c2 - 4) {
                return true;
            }
        }
        try {
            return !iVar.b(this.f.f22335a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    private e d(i iVar) throws IOException {
        iVar.d(this.f.f22335a, 0, 4);
        this.f.d(0);
        this.g.a(this.f.j());
        return new a(iVar.d(), iVar.c(), this.g);
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, com.google.android.exoplayer2.extractor.u uVar) throws IOException {
        com.google.android.exoplayer2.util.a.a(this.l);
        af.a(this.k);
        int b2 = b(iVar);
        if (b2 == -1 && (this.t instanceof b)) {
            long a2 = a(this.q);
            if (this.t.b() != a2) {
                ((b) this.t).f20993c = a2;
                this.k.a(this.t);
            }
        }
        return b2;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        this.n = 0;
        this.p = -9223372036854775807L;
        this.q = 0L;
        this.s = 0;
        this.v = j2;
        e eVar = this.t;
        if ((eVar instanceof b) && !((b) eVar).b(j2)) {
            this.u = true;
            this.m = this.j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.k = jVar;
        x a2 = jVar.a(0, 1);
        this.l = a2;
        this.m = a2;
        this.k.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        return a(iVar, true);
    }
}
