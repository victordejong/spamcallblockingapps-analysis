package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.C2018p;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/n.class */
final class C1634n {

    /* renamed from: a */
    public C1617c f6473a;

    /* renamed from: b */
    public long f6474b;

    /* renamed from: c */
    public long f6475c;

    /* renamed from: d */
    public long f6476d;

    /* renamed from: e */
    public int f6477e;

    /* renamed from: f */
    public int f6478f;

    /* renamed from: g */
    public long[] f6479g;

    /* renamed from: h */
    public int[] f6480h;

    /* renamed from: i */
    public int[] f6481i;

    /* renamed from: j */
    public int[] f6482j;

    /* renamed from: k */
    public long[] f6483k;

    /* renamed from: l */
    public boolean[] f6484l;

    /* renamed from: m */
    public boolean f6485m;

    /* renamed from: n */
    public boolean[] f6486n;

    /* renamed from: o */
    public C1633m f6487o;

    /* renamed from: p */
    public int f6488p;

    /* renamed from: q */
    public C2018p f6489q;

    /* renamed from: r */
    public boolean f6490r;

    /* renamed from: s */
    public long f6491s;

    /* renamed from: a */
    public final void m42512a() {
        this.f6477e = 0;
        this.f6491s = 0L;
        this.f6485m = false;
        this.f6490r = false;
        this.f6487o = null;
    }

    /* renamed from: a */
    public final void m42511a(int i) {
        C2018p c2018p = this.f6489q;
        if (c2018p == null || c2018p.f8133c < i) {
            this.f6489q = new C2018p(i);
        }
        this.f6488p = i;
        this.f6485m = true;
        this.f6490r = true;
    }

    /* renamed from: a */
    public final void m42510a(int i, int i2) {
        this.f6477e = i;
        this.f6478f = i2;
        int[] iArr = this.f6480h;
        if (iArr == null || iArr.length < i) {
            this.f6479g = new long[i];
            this.f6480h = new int[i];
        }
        int[] iArr2 = this.f6481i;
        if (iArr2 == null || iArr2.length < i2) {
            int i3 = (i2 * JsonReaderKt.END_OBJ) / 100;
            this.f6481i = new int[i3];
            this.f6482j = new int[i3];
            this.f6483k = new long[i3];
            this.f6484l = new boolean[i3];
            this.f6486n = new boolean[i3];
        }
    }

    /* renamed from: a */
    public final void m42509a(C2018p c2018p) {
        c2018p.m41537a(this.f6489q.f8131a, 0, this.f6488p);
        this.f6489q.m41533c(0);
        this.f6490r = false;
    }

    /* renamed from: b */
    public final long m42508b(int i) {
        return this.f6483k[i] + this.f6482j[i];
    }

    /* renamed from: c */
    public final boolean m42507c(int i) {
        return this.f6485m && this.f6486n[i];
    }
}
