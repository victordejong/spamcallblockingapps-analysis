package p193e.p1577m.p1578a.p1596c.p1602g1.p1609x;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24336d;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.x.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/x/a.class */
public final class C24428a implements AbstractC24408h {

    /* renamed from: p */
    public static final int[] f68141p;

    /* renamed from: s */
    public static final int f68144s;

    /* renamed from: b */
    public boolean f68146b;

    /* renamed from: c */
    public long f68147c;

    /* renamed from: d */
    public int f68148d;

    /* renamed from: e */
    public int f68149e;

    /* renamed from: f */
    public boolean f68150f;

    /* renamed from: g */
    public long f68151g;

    /* renamed from: i */
    public int f68153i;

    /* renamed from: j */
    public long f68154j;

    /* renamed from: k */
    public AbstractC24409i f68155k;

    /* renamed from: l */
    public AbstractC24422s f68156l;

    /* renamed from: m */
    public AbstractC24418q f68157m;

    /* renamed from: n */
    public boolean f68158n;

    /* renamed from: o */
    public static final int[] f68140o = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: q */
    public static final byte[] f68142q = C24773d0.m4606r("#!AMR\n");

    /* renamed from: r */
    public static final byte[] f68143r = C24773d0.m4606r("#!AMR-WB\n");

    /* renamed from: a */
    public final byte[] f68145a = new byte[1];

    /* renamed from: h */
    public int f68152h = -1;

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f68141p = iArr;
        f68144s = iArr[8];
    }

    public C24428a(int i) {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f68147c = 0L;
        this.f68148d = 0;
        this.f68149e = 0;
        if (j != 0) {
            AbstractC24418q abstractC24418q = this.f68157m;
            if (abstractC24418q instanceof C24336d) {
                C24336d c24336d = (C24336d) abstractC24418q;
                this.f68154j = C24336d.m5230d(j, c24336d.f67658b, c24336d.f67661e);
                return;
            }
        }
        this.f68154j = 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
        if ((!r0 && (r0 < 12 || r0 > 14)) != false) goto L28;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m5138b(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r8) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1609x.C24428a.m5138b(e.m.a.c.g1.e):int");
    }

    /* renamed from: c */
    public final boolean m5137c(C24353e c24353e) throws IOException, InterruptedException {
        byte[] bArr = f68142q;
        c24353e.f67728f = 0;
        byte[] bArr2 = new byte[bArr.length];
        c24353e.m5210e(bArr2, 0, bArr.length, false);
        if (Arrays.equals(bArr2, bArr)) {
            this.f68146b = false;
            c24353e.m5206i(bArr.length);
            return true;
        }
        byte[] bArr3 = f68143r;
        c24353e.f67728f = 0;
        byte[] bArr4 = new byte[bArr3.length];
        c24353e.m5210e(bArr4, 0, bArr3.length, false);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f68146b = true;
        c24353e.m5206i(bArr3.length);
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        if (c24353e.f67726d != 0 || m5137c(c24353e)) {
            if (!this.f68158n) {
                this.f68158n = true;
                boolean z = this.f68146b;
                this.f68156l.mo4928b(Format.m39254f(null, z ? "audio/amr-wb" : "audio/3gpp", null, -1, f68144s, 1, z ? 16000 : 8000, -1, null, null, 0, null));
            }
            int i = -1;
            if (this.f68149e == 0) {
                try {
                    int m5138b = m5138b(c24353e);
                    this.f68148d = m5138b;
                    this.f68149e = m5138b;
                    if (this.f68152h == -1) {
                        this.f68151g = c24353e.f67726d;
                        this.f68152h = m5138b;
                    }
                    if (this.f68152h == m5138b) {
                        this.f68153i++;
                    }
                } catch (EOFException e) {
                }
            }
            int mo4926d = this.f68156l.mo4926d(c24353e, this.f68149e, true);
            if (mo4926d != -1) {
                int i2 = this.f68149e - mo4926d;
                this.f68149e = i2;
                i = 0;
                if (i2 <= 0) {
                    this.f68156l.mo4927c(this.f68147c + this.f68154j, 1, this.f68148d, 0, null);
                    this.f68147c += DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL;
                }
            }
            if (!this.f68150f) {
                AbstractC24418q.C24420b c24420b = new AbstractC24418q.C24420b(-9223372036854775807L, 0L);
                this.f68157m = c24420b;
                this.f68155k.mo4953s(c24420b);
                this.f68150f = true;
            }
            return i;
        }
        throw new C24560m0("Could not find AMR header.");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f68155k = abstractC24409i;
        this.f68156l = abstractC24409i.mo4960i(0, 1);
        abstractC24409i.mo4962g();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        return m5137c(c24353e);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
