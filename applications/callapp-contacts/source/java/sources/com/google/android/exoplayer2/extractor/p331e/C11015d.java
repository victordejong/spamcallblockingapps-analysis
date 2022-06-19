package com.google.android.exoplayer2.extractor.p331e;

import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C10907o;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C11054g;
import com.google.android.exoplayer2.extractor.C11142r;
import com.google.android.exoplayer2.extractor.C11143s;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.C11222a;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.e.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e/d.class */
public final class C11015d implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f35749a = _$$Lambda$d$XJdJ6ZpohJv4AAuLJquM_M3__Ck.INSTANCE;

    /* renamed from: c */
    private static final C11222a.AbstractC11223a f35750c = _$$Lambda$d$APLDWOkc9tfIH2WjBq4j4dsr_Xw.INSTANCE;

    /* renamed from: b */
    public boolean f35751b;

    /* renamed from: d */
    private final int f35752d;

    /* renamed from: e */
    private final long f35753e;

    /* renamed from: f */
    private final C11628u f35754f;

    /* renamed from: g */
    private final C10907o.C10908a f35755g;

    /* renamed from: h */
    private final C11142r f35756h;

    /* renamed from: i */
    private final C11143s f35757i;

    /* renamed from: j */
    private final AbstractC11150x f35758j;

    /* renamed from: k */
    private AbstractC11130j f35759k;

    /* renamed from: l */
    private AbstractC11150x f35760l;

    /* renamed from: m */
    private AbstractC11150x f35761m;

    /* renamed from: n */
    private int f35762n;

    /* renamed from: o */
    private Metadata f35763o;

    /* renamed from: p */
    private long f35764p;

    /* renamed from: q */
    private long f35765q;

    /* renamed from: r */
    private long f35766r;

    /* renamed from: s */
    private int f35767s;

    /* renamed from: t */
    private AbstractC11016e f35768t;

    /* renamed from: u */
    private boolean f35769u;

    /* renamed from: v */
    private long f35770v;

    public C11015d() {
        this(0);
    }

    public C11015d(int i) {
        this(i, -9223372036854775807L);
    }

    public C11015d(int i, long j) {
        this.f35752d = i;
        this.f35753e = j;
        this.f35754f = new C11628u(10);
        this.f35755g = new C10907o.C10908a();
        this.f35756h = new C11142r();
        this.f35764p = -9223372036854775807L;
        this.f35757i = new C11143s();
        C11054g c11054g = new C11054g();
        this.f35758j = c11054g;
        this.f35761m = c11054g;
    }

    /* renamed from: a */
    private long m21697a(long j) {
        return this.f35764p + ((j * 1000000) / this.f35755g.f35234d);
    }

    /* renamed from: a */
    private static long m21695a(Metadata metadata) {
        if (metadata != null) {
            int length = metadata.length();
            for (int i = 0; i < length; i++) {
                Metadata.Entry entry = metadata.get(i);
                if (entry instanceof TextInformationFrame) {
                    TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                    if (textInformationFrame.f36776id.equals("TLEN")) {
                        return C11158f.m21372b(Long.parseLong(textInformationFrame.value));
                    }
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* renamed from: a */
    private static C11014c m21694a(Metadata metadata, long j) {
        if (metadata != null) {
            int length = metadata.length();
            for (int i = 0; i < length; i++) {
                Metadata.Entry entry = metadata.get(i);
                if (entry instanceof MlltFrame) {
                    MlltFrame mlltFrame = (MlltFrame) entry;
                    long m21695a = m21695a(metadata);
                    int length2 = mlltFrame.bytesDeviations.length;
                    int i2 = length2 + 1;
                    ?? r0 = new long[i2];
                    long[] jArr = new long[i2];
                    r0[0] = j;
                    boolean z = false;
                    jArr[0] = 0;
                    int i3 = 1;
                    ?? r8 = j;
                    while (i3 <= length2) {
                        int i4 = mlltFrame.bytesBetweenReference;
                        int[] iArr = mlltFrame.bytesDeviations;
                        int i5 = i3 - 1;
                        ?? r82 = r8 + i4 + iArr[i5];
                        char c = z ? 1 : 0;
                        boolean z2 = z ? 1 : 0;
                        boolean z3 = c + mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i5];
                        r0[i3] = r82;
                        long j2 = z3 ? 1 : 0;
                        long j3 = z3 ? 1 : 0;
                        jArr[i3] = j2;
                        i3++;
                        r8 = r82;
                        z = z3;
                    }
                    return new C11014c(r0, jArr, m21695a);
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m21699a(int i, int i2, int i3, int i4, int i5) {
        if (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) {
            return true;
        }
        if (i2 != 77 || i3 != 76 || i4 != 76) {
            return false;
        }
        return i5 == 84 || i == 2;
    }

    /* renamed from: a */
    private static boolean m21698a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: a */
    private boolean m21696a(AbstractC11121i abstractC11121i, boolean z) throws IOException {
        int i;
        int m21996a;
        int i2 = z ? 32768 : 131072;
        abstractC11121i.mo21406a();
        if (abstractC11121i.mo21398c() == 0) {
            Metadata m21390a = this.f35757i.m21390a(abstractC11121i, (this.f35752d & 4) == 0 ? null : f35750c);
            this.f35763o = m21390a;
            if (m21390a != null) {
                this.f35756h.m21392a(m21390a);
            }
            i = (int) abstractC11121i.mo21402b();
            if (!z) {
                abstractC11121i.mo21401b(i);
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (!m21692c(abstractC11121i)) {
                this.f35754f.m19801d(0);
                int m19792j = this.f35754f.m19792j();
                if ((i3 == 0 || m21698a(m19792j, i3)) && (m21996a = C10907o.m21996a(m19792j)) != -1) {
                    i4++;
                    if (i4 != 1) {
                        if (i4 == 4) {
                            break;
                        }
                    } else {
                        this.f35755g.m21984a(m19792j);
                        i3 = m19792j;
                    }
                    abstractC11121i.mo21397c(m21996a - 4);
                } else {
                    int i6 = i5 + 1;
                    if (i5 == i2) {
                        if (!z) {
                            throw new ParserException("Searched too many bytes.");
                        }
                        return false;
                    }
                    if (z) {
                        abstractC11121i.mo21406a();
                        abstractC11121i.mo21397c(i + i6);
                    } else {
                        abstractC11121i.mo21401b(1);
                    }
                    i5 = i6;
                    i3 = 0;
                    i4 = 0;
                }
            } else if (i4 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            abstractC11121i.mo21401b(i + i5);
        } else {
            abstractC11121i.mo21406a();
        }
        this.f35762n = i3;
        return true;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21700a() {
        return new AbstractC11071h[]{new C11015d()};
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0351, code lost:
        if ((r11.f35752d & 1) != 0) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02be  */
    /* JADX WARN: Type inference failed for: r0v152, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m21693b(com.google.android.exoplayer2.extractor.AbstractC11121i r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p331e.C11015d.m21693b(com.google.android.exoplayer2.extractor.i):int");
    }

    /* renamed from: c */
    private boolean m21692c(AbstractC11121i abstractC11121i) throws IOException {
        AbstractC11016e abstractC11016e = this.f35768t;
        if (abstractC11016e != null) {
            long mo21688c = abstractC11016e.mo21688c();
            if (mo21688c != -1 && abstractC11121i.mo21402b() > mo21688c - 4) {
                return true;
            }
        }
        try {
            return !abstractC11121i.mo21399b(this.f35754f.f38733a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: d */
    private AbstractC11016e m21691d(AbstractC11121i abstractC11121i) throws IOException {
        abstractC11121i.mo21394d(this.f35754f.f38733a, 0, 4);
        this.f35754f.m19801d(0);
        this.f35755g.m21984a(this.f35754f.m19792j());
        return new C11012a(abstractC11121i.mo21395d(), abstractC11121i.mo21398c(), this.f35755g);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        C11593a.m20024a(this.f35760l);
        C11599af.m19974a(this.f35759k);
        int m21693b = m21693b(abstractC11121i);
        if (m21693b == -1 && (this.f35768t instanceof C11013b)) {
            long m21697a = m21697a(this.f35765q);
            if (this.f35768t.mo21387b() != m21697a) {
                ((C11013b) this.f35768t).f35744c = m21697a;
                this.f35759k.mo20901a(this.f35768t);
            }
        }
        return m21693b;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f35762n = 0;
        this.f35764p = -9223372036854775807L;
        this.f35765q = 0L;
        this.f35767s = 0;
        this.f35770v = j2;
        AbstractC11016e abstractC11016e = this.f35768t;
        if (!(abstractC11016e instanceof C11013b) || ((C11013b) abstractC11016e).m21702b(j2)) {
            return;
        }
        this.f35769u = true;
        this.f35761m = this.f35758j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35759k = abstractC11130j;
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(0, 1);
        this.f35760l = mo20905a;
        this.f35761m = mo20905a;
        this.f35759k.mo20907a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        return m21696a(abstractC11121i, true);
    }
}
