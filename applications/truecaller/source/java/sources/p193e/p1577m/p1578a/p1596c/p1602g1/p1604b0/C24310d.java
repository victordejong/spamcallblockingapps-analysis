package p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0;

import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24414m;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24415n;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24416o;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.b0.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/b0/d.class */
public final class C24310d implements AbstractC24408h {

    /* renamed from: q */
    public static final /* synthetic */ int f67491q = 0;

    /* renamed from: a */
    public final int f67492a;

    /* renamed from: b */
    public final long f67493b;

    /* renamed from: c */
    public final C24798t f67494c;

    /* renamed from: d */
    public final C24416o f67495d;

    /* renamed from: e */
    public final C24414m f67496e;

    /* renamed from: f */
    public final C24415n f67497f;

    /* renamed from: g */
    public AbstractC24409i f67498g;

    /* renamed from: h */
    public AbstractC24422s f67499h;

    /* renamed from: i */
    public int f67500i;

    /* renamed from: j */
    public Metadata f67501j;

    /* renamed from: k */
    public AbstractC24311e f67502k;

    /* renamed from: l */
    public boolean f67503l;

    /* renamed from: m */
    public long f67504m;

    /* renamed from: n */
    public long f67505n;

    /* renamed from: o */
    public long f67506o;

    /* renamed from: p */
    public int f67507p;

    public C24310d() {
        this(0);
    }

    public C24310d(int i) {
        this.f67492a = i;
        this.f67493b = -9223372036854775807L;
        this.f67494c = new C24798t(10);
        this.f67495d = new C24416o();
        this.f67496e = new C24414m();
        this.f67504m = -9223372036854775807L;
        this.f67497f = new C24415n();
    }

    /* renamed from: c */
    public static boolean m5271c(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f67500i = 0;
        this.f67504m = -9223372036854775807L;
        this.f67505n = 0L;
        this.f67507p = 0;
    }

    /* renamed from: b */
    public final AbstractC24311e m5272b(C24353e c24353e) throws IOException, InterruptedException {
        c24353e.m5210e(this.f67494c.f69504a, 0, 4, false);
        this.f67494c.m4547C(0);
        C24416o.m5145d(this.f67494c.m4541e(), this.f67495d);
        return new C24308b(c24353e.f67725c, c24353e.f67726d, this.f67495d);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x034d  */
    /* JADX WARN: Type inference failed for: r0v177, types: [long] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v263, types: [long] */
    /* JADX WARN: Type inference failed for: r0v302, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo5128d(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r18, p193e.p1577m.p1578a.p1596c.p1602g1.C24417p r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.C24310d.mo5128d(e.m.a.c.g1.e, e.m.a.c.g1.p):int");
    }

    /* renamed from: e */
    public final boolean m5270e(C24353e c24353e) throws IOException, InterruptedException {
        AbstractC24311e abstractC24311e = this.f67502k;
        if (abstractC24311e != null) {
            long mo5268e = abstractC24311e.mo5268e();
            if (mo5268e != -1 && c24353e.m5211d() > mo5268e - 4) {
                return true;
            }
        }
        try {
            return !c24353e.m5210e(this.f67494c.f69504a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: f */
    public final boolean m5269f(C24353e c24353e, boolean z) throws IOException, InterruptedException {
        int i;
        int m5148a;
        int i2;
        int i3 = z ? 16384 : 131072;
        c24353e.f67728f = 0;
        if (c24353e.f67726d == 0) {
            Metadata m5149a = this.f67497f.m5149a(c24353e, (this.f67492a & 2) == 0 ? null : C24307a.f67487a);
            this.f67501j = m5149a;
            if (m5149a != null) {
                this.f67496e.m5150b(m5149a);
            }
            i = (int) c24353e.m5211d();
            if (!z) {
                c24353e.m5206i(i);
            }
        } else {
            i = 0;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (!m5270e(c24353e)) {
                this.f67494c.m4547C(0);
                int m4541e = this.f67494c.m4541e();
                if ((i4 == 0 || m5271c(m4541e, i4)) && (m5148a = C24416o.m5148a(m4541e)) != -1) {
                    int i7 = i5 + 1;
                    if (i7 != 1) {
                        i2 = i4;
                        if (i7 == 4) {
                            break;
                        }
                    } else {
                        C24416o.m5145d(m4541e, this.f67495d);
                        i2 = m4541e;
                    }
                    c24353e.m5214a(m5148a - 4, false);
                    i4 = i2;
                    i5 = i7;
                } else {
                    int i8 = i6 + 1;
                    if (i6 == i3) {
                        if (!z) {
                            throw new C24560m0("Searched too many bytes.");
                        }
                        return false;
                    }
                    if (z) {
                        c24353e.f67728f = 0;
                        c24353e.m5214a(i + i8, false);
                    } else {
                        c24353e.m5206i(1);
                    }
                    i5 = 0;
                    i6 = i8;
                    i4 = 0;
                }
            } else if (i5 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            c24353e.m5206i(i + i6);
        } else {
            c24353e.f67728f = 0;
        }
        this.f67500i = i4;
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67498g = abstractC24409i;
        this.f67499h = abstractC24409i.mo4960i(0, 1);
        this.f67498g.mo4962g();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        return m5269f(c24353e, true);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
