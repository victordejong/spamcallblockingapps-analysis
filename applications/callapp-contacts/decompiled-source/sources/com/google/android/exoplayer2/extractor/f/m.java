package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.util.u;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/m.class */
final class m {

    /* renamed from: a  reason: collision with root package name */
    public c f21083a;

    /* renamed from: b  reason: collision with root package name */
    public long f21084b;

    /* renamed from: c  reason: collision with root package name */
    public long f21085c;

    /* renamed from: d  reason: collision with root package name */
    public long f21086d;
    public int e;
    public int f;
    public boolean m;
    public l o;
    public boolean q;
    public long r;
    public boolean s;
    public long[] g = new long[0];
    public int[] h = new int[0];
    public int[] i = new int[0];
    public int[] j = new int[0];
    public long[] k = new long[0];
    public boolean[] l = new boolean[0];
    public boolean[] n = new boolean[0];
    public final u p = new u();

    public final void a() {
        this.e = 0;
        this.r = 0L;
        this.s = false;
        this.m = false;
        this.q = false;
        this.o = null;
    }

    public final void a(int i) {
        this.p.a(i);
        this.m = true;
        this.q = true;
    }

    public final void a(int i, int i2) {
        this.e = i;
        this.f = i2;
        if (this.h.length < i) {
            this.g = new long[i];
            this.h = new int[i];
        }
        if (this.i.length < i2) {
            int i3 = (i2 * JsonReaderKt.END_OBJ) / 100;
            this.i = new int[i3];
            this.j = new int[i3];
            this.k = new long[i3];
            this.l = new boolean[i3];
            this.n = new boolean[i3];
        }
    }

    public final void a(u uVar) {
        uVar.a(this.p.f22335a, 0, this.p.f22337c);
        this.p.d(0);
        this.q = false;
    }

    public final long b(int i) {
        return this.k[i] + this.j[i];
    }

    public final boolean c(int i) {
        return this.m && this.n[i];
    }
}
