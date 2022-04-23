package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.p;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/n.class */
final class n {

    /* renamed from: a  reason: collision with root package name */
    public c f3378a;

    /* renamed from: b  reason: collision with root package name */
    public long f3379b;

    /* renamed from: c  reason: collision with root package name */
    public long f3380c;

    /* renamed from: d  reason: collision with root package name */
    public long f3381d;
    public int e;
    public int f;
    public long[] g;
    public int[] h;
    public int[] i;
    public int[] j;
    public long[] k;
    public boolean[] l;
    public boolean m;
    public boolean[] n;
    public m o;
    public int p;
    public p q;
    public boolean r;
    public long s;

    public final void a() {
        this.e = 0;
        this.s = 0L;
        this.m = false;
        this.r = false;
        this.o = null;
    }

    public final void a(int i) {
        p pVar = this.q;
        if (pVar == null || pVar.f4168c < i) {
            this.q = new p(i);
        }
        this.p = i;
        this.m = true;
        this.r = true;
    }

    public final void a(int i, int i2) {
        this.e = i;
        this.f = i2;
        int[] iArr = this.h;
        if (iArr == null || iArr.length < i) {
            this.g = new long[i];
            this.h = new int[i];
        }
        int[] iArr2 = this.i;
        if (iArr2 == null || iArr2.length < i2) {
            int i3 = (i2 * JsonReaderKt.END_OBJ) / 100;
            this.i = new int[i3];
            this.j = new int[i3];
            this.k = new long[i3];
            this.l = new boolean[i3];
            this.n = new boolean[i3];
        }
    }

    public final void a(p pVar) {
        pVar.a(this.q.f4166a, 0, this.p);
        this.q.c(0);
        this.r = false;
    }

    public final long b(int i) {
        return this.k[i] + this.j[i];
    }

    public final boolean c(int i) {
        return this.m && this.n[i];
    }
}
