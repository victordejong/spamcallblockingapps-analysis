package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1883q;

import androidx.media2.exoplayer.external.Format;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27175c;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.q.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/q/a.class */
public final class C27192a implements AbstractC27179g {

    /* renamed from: p */
    public static final int[] f76068p;

    /* renamed from: s */
    public static final int f76071s;

    /* renamed from: b */
    public boolean f76073b;

    /* renamed from: c */
    public long f76074c;

    /* renamed from: d */
    public int f76075d;

    /* renamed from: e */
    public int f76076e;

    /* renamed from: f */
    public boolean f76077f;

    /* renamed from: g */
    public long f76078g;

    /* renamed from: i */
    public int f76080i;

    /* renamed from: j */
    public long f76081j;

    /* renamed from: k */
    public AbstractC27180h f76082k;

    /* renamed from: l */
    public AbstractC27190p f76083l;

    /* renamed from: m */
    public AbstractC27186n f76084m;

    /* renamed from: n */
    public boolean f76085n;

    /* renamed from: o */
    public static final int[] f76067o = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: q */
    public static final byte[] f76069q = C27445x.m270q("#!AMR\n");

    /* renamed from: r */
    public static final byte[] f76070r = C27445x.m270q("#!AMR-WB\n");

    /* renamed from: a */
    public final byte[] f76072a = new byte[1];

    /* renamed from: h */
    public int f76079h = -1;

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f76068p = iArr;
        f76071s = iArr[8];
    }

    public C27192a(int i) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76074c = 0L;
        this.f76075d = 0;
        this.f76076e = 0;
        if (j != 0) {
            AbstractC27186n abstractC27186n = this.f76084m;
            if (abstractC27186n instanceof C27175c) {
                C27175c c27175c = (C27175c) abstractC27186n;
                this.f76081j = C27175c.m761d(j, c27175c.f76023b, c27175c.f76026e);
                return;
            }
        }
        this.f76081j = 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007e, code lost:
        if ((!r0 && (r0 < 12 || r0 > 14)) != false) goto L28;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m738b(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1883q.C27192a.m738b(n3.y.b.a.q0.d):int");
    }

    /* renamed from: c */
    public final boolean m737c(C27176d c27176d) throws IOException, InterruptedException {
        byte[] bArr = f76069q;
        c27176d.f76033f = 0;
        byte[] bArr2 = new byte[bArr.length];
        c27176d.m757d(bArr2, 0, bArr.length, false);
        if (Arrays.equals(bArr2, bArr)) {
            this.f76073b = false;
            c27176d.m753h(bArr.length);
            return true;
        }
        byte[] bArr3 = f76070r;
        c27176d.f76033f = 0;
        byte[] bArr4 = new byte[bArr3.length];
        c27176d.m757d(bArr4, 0, bArr3.length, false);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f76073b = true;
        c27176d.m753h(bArr3.length);
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76082k = abstractC27180h;
        this.f76083l = abstractC27180h.m750i(0, 1);
        abstractC27180h.m751g();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        return m737c(c27176d);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        if (c27176d.f76031d != 0 || m737c(c27176d)) {
            if (!this.f76085n) {
                this.f76085n = true;
                boolean z = this.f76073b;
                this.f76083l.mo740c(Format.m42843i(null, z ? "audio/amr-wb" : "audio/3gpp", null, -1, f76071s, 1, z ? 16000 : 8000, -1, null, null, 0, null));
            }
            int i = -1;
            if (this.f76076e == 0) {
                try {
                    int m738b = m738b(c27176d);
                    this.f76075d = m738b;
                    this.f76076e = m738b;
                    if (this.f76079h == -1) {
                        this.f76078g = c27176d.f76031d;
                        this.f76079h = m738b;
                    }
                    if (this.f76079h == m738b) {
                        this.f76080i++;
                    }
                } catch (EOFException e) {
                }
            }
            int mo742a = this.f76083l.mo742a(c27176d, this.f76076e, true);
            if (mo742a != -1) {
                int i2 = this.f76076e - mo742a;
                this.f76076e = i2;
                i = 0;
                if (i2 <= 0) {
                    this.f76083l.mo741b(this.f76074c + this.f76081j, 1, this.f76075d, 0, null);
                    this.f76074c += DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL;
                }
            }
            if (!this.f76077f) {
                AbstractC27186n.C27188b c27188b = new AbstractC27186n.C27188b(-9223372036854775807L, 0L);
                this.f76084m = c27188b;
                this.f76082k.m749q(c27188b);
                this.f76077f = true;
            }
            return i;
        }
        throw new C27074c0("Could not find AMR header.");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
