package androidx.media2.exoplayer.external.extractor.c;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.k;
import androidx.media2.exoplayer.external.extractor.l;
import androidx.media2.exoplayer.external.extractor.m;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.a;
import androidx.media2.exoplayer.external.util.p;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/c.class */
public final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3062a = d.f3066a;

    /* renamed from: b  reason: collision with root package name */
    private static final a.AbstractC0083a f3063b = e.f3067a;

    /* renamed from: c  reason: collision with root package name */
    private final int f3064c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3065d;
    private final p e;
    private final m f;
    private final k g;
    private final l h;
    private i i;
    private q j;
    private int k;
    private Metadata l;
    private a m;
    private long n;
    private long o;
    private long p;
    private int q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/c$a.class */
    public interface a extends o {
        long c();

        long c(long j);
    }

    public c() {
        this(0);
    }

    public c(int i) {
        this(i, -9223372036854775807L);
    }

    public c(int i, long j) {
        this.f3064c = i;
        this.f3065d = j;
        this.e = new p(10);
        this.f = new m();
        this.g = new k();
        this.n = -9223372036854775807L;
        this.h = new l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.media2.exoplayer.external.extractor.c.b a(androidx.media2.exoplayer.external.metadata.Metadata r6, long r7) {
        /*
            Method dump skipped, instructions count: 180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.c.c.a(androidx.media2.exoplayer.external.metadata.Metadata, long):androidx.media2.exoplayer.external.extractor.c.b");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ boolean a(int i, int i2, int i3, int i4, int i5) {
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

    private boolean a(h hVar, boolean z) throws IOException, InterruptedException {
        int i;
        int a2;
        int i2 = z ? 16384 : 131072;
        hVar.a();
        if (hVar.c() == 0) {
            Metadata a3 = this.h.a(hVar, (this.f3064c & 2) == 0 ? null : f3063b);
            this.l = a3;
            if (a3 != null) {
                this.g.a(a3);
            }
            i = (int) hVar.b();
            if (!z) {
                hVar.b(i);
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (!b(hVar)) {
                this.e.c(0);
                int i6 = this.e.i();
                if ((i3 == 0 || a(i6, i3)) && (a2 = m.a(i6)) != -1) {
                    i4++;
                    if (i4 != 1) {
                        if (i4 == 4) {
                            break;
                        }
                    } else {
                        m.a(i6, this.f);
                        i3 = i6;
                    }
                    hVar.c(a2 - 4);
                } else {
                    int i7 = i5 + 1;
                    if (i5 != i2) {
                        if (z) {
                            hVar.a();
                            hVar.c(i + i7);
                        } else {
                            hVar.b(1);
                        }
                        i5 = i7;
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
            hVar.b(i + i5);
        } else {
            hVar.a();
        }
        this.k = i3;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new c()};
    }

    private boolean b(h hVar) throws IOException, InterruptedException {
        a aVar = this.m;
        if (aVar != null) {
            long c2 = aVar.c();
            if (c2 != -1 && hVar.b() > c2 - 4) {
                return true;
            }
        }
        try {
            return !hVar.b(this.e.f4166a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    private a c(h hVar) throws IOException, InterruptedException {
        hVar.c(this.e.f4166a, 0, 4);
        this.e.c(0);
        m.a(this.e.i(), this.f);
        return new androidx.media2.exoplayer.external.extractor.c.a(hVar.d(), hVar.c(), this.f);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0336  */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r18, androidx.media2.exoplayer.external.extractor.n r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.c.c.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.k = 0;
        this.n = -9223372036854775807L;
        this.o = 0L;
        this.q = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.i = iVar;
        this.j = iVar.a(0, 1);
        this.i.a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        return a(hVar, true);
    }
}
