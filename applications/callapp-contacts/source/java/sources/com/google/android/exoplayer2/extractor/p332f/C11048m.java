package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.util.C11628u;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.android.exoplayer2.extractor.f.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/m.class */
final class C11048m {

    /* renamed from: a */
    public C11031c f35943a;

    /* renamed from: b */
    public long f35944b;

    /* renamed from: c */
    public long f35945c;

    /* renamed from: d */
    public long f35946d;

    /* renamed from: e */
    public int f35947e;

    /* renamed from: f */
    public int f35948f;

    /* renamed from: m */
    public boolean f35955m;

    /* renamed from: o */
    public C11047l f35957o;

    /* renamed from: q */
    public boolean f35959q;

    /* renamed from: r */
    public long f35960r;

    /* renamed from: s */
    public boolean f35961s;

    /* renamed from: g */
    public long[] f35949g = new long[0];

    /* renamed from: h */
    public int[] f35950h = new int[0];

    /* renamed from: i */
    public int[] f35951i = new int[0];

    /* renamed from: j */
    public int[] f35952j = new int[0];

    /* renamed from: k */
    public long[] f35953k = new long[0];

    /* renamed from: l */
    public boolean[] f35954l = new boolean[0];

    /* renamed from: n */
    public boolean[] f35956n = new boolean[0];

    /* renamed from: p */
    public final C11628u f35958p = new C11628u();

    /* renamed from: a */
    public final void m21596a() {
        this.f35947e = 0;
        this.f35960r = 0L;
        this.f35961s = false;
        this.f35955m = false;
        this.f35959q = false;
        this.f35957o = null;
    }

    /* renamed from: a */
    public final void m21595a(int i) {
        this.f35958p.m19811a(i);
        this.f35955m = true;
        this.f35959q = true;
    }

    /* renamed from: a */
    public final void m21594a(int i, int i2) {
        this.f35947e = i;
        this.f35948f = i2;
        if (this.f35950h.length < i) {
            this.f35949g = new long[i];
            this.f35950h = new int[i];
        }
        if (this.f35951i.length < i2) {
            int i3 = (i2 * JsonReaderKt.END_OBJ) / 100;
            this.f35951i = new int[i3];
            this.f35952j = new int[i3];
            this.f35953k = new long[i3];
            this.f35954l = new boolean[i3];
            this.f35956n = new boolean[i3];
        }
    }

    /* renamed from: a */
    public final void m21593a(C11628u c11628u) {
        c11628u.m19807a(this.f35958p.f38733a, 0, this.f35958p.f38735c);
        this.f35958p.m19801d(0);
        this.f35959q = false;
    }

    /* renamed from: b */
    public final long m21592b(int i) {
        return this.f35953k[i] + this.f35952j[i];
    }

    /* renamed from: c */
    public final boolean m21591c(int i) {
        return this.f35955m && this.f35956n[i];
    }
}
