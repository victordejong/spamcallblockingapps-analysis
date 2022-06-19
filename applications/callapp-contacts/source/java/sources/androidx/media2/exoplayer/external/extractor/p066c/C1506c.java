package androidx.media2.exoplayer.external.extractor.p066c;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1603k;
import androidx.media2.exoplayer.external.extractor.C1604l;
import androidx.media2.exoplayer.external.extractor.C1605m;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.C1693a;
import androidx.media2.exoplayer.external.metadata.id3.MlltFrame;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.c.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/c.class */
public final class C1506c implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f5791a = C1508d.f5808a;

    /* renamed from: b */
    private static final C1693a.AbstractC1694a f5792b = C1509e.f5809a;

    /* renamed from: c */
    private final int f5793c;

    /* renamed from: d */
    private final long f5794d;

    /* renamed from: e */
    private final C2018p f5795e;

    /* renamed from: f */
    private final C1605m f5796f;

    /* renamed from: g */
    private final C1603k f5797g;

    /* renamed from: h */
    private final C1604l f5798h;

    /* renamed from: i */
    private AbstractC1601i f5799i;

    /* renamed from: j */
    private AbstractC1641q f5800j;

    /* renamed from: k */
    private int f5801k;

    /* renamed from: l */
    private Metadata f5802l;

    /* renamed from: m */
    private AbstractC1507a f5803m;

    /* renamed from: n */
    private long f5804n;

    /* renamed from: o */
    private long f5805o;

    /* renamed from: p */
    private long f5806p;

    /* renamed from: q */
    private int f5807q;

    /* renamed from: androidx.media2.exoplayer.external.extractor.c.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/c/c$a.class */
    public interface AbstractC1507a extends AbstractC1637o {
        /* renamed from: c */
        long mo42774c();

        /* renamed from: c */
        long mo42773c(long j);
    }

    public C1506c() {
        this(0);
    }

    public C1506c(int i) {
        this(i, -9223372036854775807L);
    }

    public C1506c(int i, long j) {
        this.f5793c = i;
        this.f5794d = j;
        this.f5795e = new C2018p(10);
        this.f5796f = new C1605m();
        this.f5797g = new C1603k();
        this.f5804n = -9223372036854775807L;
        this.f5798h = new C1604l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* renamed from: a */
    private static C1505b m42779a(Metadata metadata, long j) {
        if (metadata != null) {
            int length = metadata.length();
            for (int i = 0; i < length; i++) {
                Metadata.Entry entry = metadata.get(i);
                if (entry instanceof MlltFrame) {
                    MlltFrame mlltFrame = (MlltFrame) entry;
                    int length2 = mlltFrame.bytesDeviations.length;
                    int i2 = length2 + 1;
                    long[] jArr = new long[i2];
                    long[] jArr2 = new long[i2];
                    jArr[0] = j;
                    jArr2[0] = 0;
                    int i3 = 1;
                    boolean z = j;
                    boolean z2 = false;
                    while (i3 <= length2) {
                        int i4 = mlltFrame.bytesBetweenReference;
                        int[] iArr = mlltFrame.bytesDeviations;
                        int i5 = i3 - 1;
                        char c = z == true ? 1 : 0;
                        boolean z3 = z == true ? 1 : 0;
                        boolean z4 = c + i4 + iArr[i5];
                        char c2 = z2 ? 1 : 0;
                        boolean z5 = z2 ? 1 : 0;
                        boolean z6 = c2 + mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i5];
                        long j2 = z4 ? 1 : 0;
                        long j3 = z4 ? 1 : 0;
                        jArr[i3] = j2;
                        long j4 = z6 ? 1 : 0;
                        long j5 = z6 ? 1 : 0;
                        jArr2[i3] = j4;
                        i3++;
                        z2 = z6;
                        z = z4;
                    }
                    return new C1505b(jArr, jArr2);
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public static final /* synthetic */ boolean m42782a(int i, int i2, int i3, int i4, int i5) {
        if (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) {
            return true;
        }
        if (i2 != 77 || i3 != 76 || i4 != 76) {
            return false;
        }
        return i5 == 84 || i == 2;
    }

    /* renamed from: a */
    private static boolean m42781a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: a */
    private boolean m42780a(AbstractC1600h abstractC1600h, boolean z) throws IOException, InterruptedException {
        int i;
        int m42595a;
        int i2 = z ? 16384 : 131072;
        abstractC1600h.mo42612a();
        if (abstractC1600h.mo42603c() == 0) {
            Metadata m42596a = this.f5798h.m42596a(abstractC1600h, (this.f5793c & 2) == 0 ? null : f5792b);
            this.f5802l = m42596a;
            if (m42596a != null) {
                this.f5797g.m42598a(m42596a);
            }
            i = (int) abstractC1600h.mo42607b();
            if (!z) {
                abstractC1600h.mo42606b(i);
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (!m42778b(abstractC1600h)) {
                this.f5795e.m41533c(0);
                int m41524i = this.f5795e.m41524i();
                if ((i3 == 0 || m42781a(m41524i, i3)) && (m42595a = C1605m.m42595a(m41524i)) != -1) {
                    i4++;
                    if (i4 != 1) {
                        if (i4 == 4) {
                            break;
                        }
                    } else {
                        C1605m.m42594a(m41524i, this.f5796f);
                        i3 = m41524i;
                    }
                    abstractC1600h.mo42602c(m42595a - 4);
                } else {
                    int i6 = i5 + 1;
                    if (i5 == i2) {
                        if (!z) {
                            throw new ParserException("Searched too many bytes.");
                        }
                        return false;
                    }
                    if (z) {
                        abstractC1600h.mo42612a();
                        abstractC1600h.mo42602c(i + i6);
                    } else {
                        abstractC1600h.mo42606b(1);
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
            abstractC1600h.mo42606b(i + i5);
        } else {
            abstractC1600h.mo42612a();
        }
        this.f5801k = i3;
        return true;
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42783a() {
        return new AbstractC1599g[]{new C1506c()};
    }

    /* renamed from: b */
    private boolean m42778b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        AbstractC1507a abstractC1507a = this.f5803m;
        if (abstractC1507a != null) {
            long mo42774c = abstractC1507a.mo42774c();
            if (mo42774c != -1 && abstractC1600h.mo42607b() > mo42774c - 4) {
                return true;
            }
        }
        try {
            return !abstractC1600h.mo42604b(this.f5795e.f8131a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: c */
    private AbstractC1507a m42777c(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        abstractC1600h.mo42601c(this.f5795e.f8131a, 0, 4);
        this.f5795e.m41533c(0);
        C1605m.m42594a(this.f5795e.m41524i(), this.f5796f);
        return new C1504a(abstractC1600h.mo42600d(), abstractC1600h.mo42603c(), this.f5796f);
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
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo42187a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r18, androidx.media2.exoplayer.external.extractor.C1636n r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p066c.C1506c.mo42187a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f5801k = 0;
        this.f5804n = -9223372036854775807L;
        this.f5805o = 0L;
        this.f5807q = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f5799i = abstractC1601i;
        this.f5800j = abstractC1601i.mo42213a(0, 1);
        this.f5799i.mo42215a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return m42780a(abstractC1600h, true);
    }
}
