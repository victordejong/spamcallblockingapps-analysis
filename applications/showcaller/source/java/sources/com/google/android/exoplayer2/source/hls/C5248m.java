package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.C5090f0;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.source.AbstractC5209b0;
import com.google.android.exoplayer2.util.C5508e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.source.hls.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/m.class */
public final class C5248m implements AbstractC5209b0 {

    /* renamed from: a */
    private final int f16541a;

    /* renamed from: b */
    private final C5249n f16542b;

    /* renamed from: c */
    private int f16543c = -1;

    public C5248m(C5249n c5249n, int i) {
        this.f16542b = c5249n;
        this.f16541a = i;
    }

    /* renamed from: f */
    private boolean m20036f() {
        int i = this.f16543c;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5209b0
    /* renamed from: a */
    public int mo19731a(C5090f0 c5090f0, C4858e c4858e, boolean z) {
        int i = -3;
        if (this.f16543c == -3) {
            c4858e.addFlag(4);
            return -4;
        }
        if (m20036f()) {
            i = this.f16542b.m20009Z(this.f16543c, c5090f0, c4858e, z);
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5209b0
    /* renamed from: b */
    public void mo19730b() {
        int i = this.f16543c;
        if (i != -2) {
            if (i == -1) {
                this.f16542b.m20018Q();
                return;
            } else if (i == -3) {
                return;
            } else {
                this.f16542b.m20017R(i);
                return;
            }
        }
        throw new SampleQueueMappingException(this.f16542b.m19995r().m20155a(this.f16541a).m20159a(0).f14461l);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5209b0
    /* renamed from: c */
    public int mo19729c(long j) {
        return m20036f() ? this.f16542b.m19999j0(this.f16543c, j) : 0;
    }

    /* renamed from: d */
    public void m20037d() {
        C5508e.m18915a(this.f16543c == -1);
        this.f16543c = this.f16542b.m19992w(this.f16541a);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5209b0
    /* renamed from: e */
    public boolean mo19727e() {
        return this.f16543c == -3 || (m20036f() && this.f16542b.m20023L(this.f16543c));
    }

    /* renamed from: g */
    public void m20035g() {
        if (this.f16543c != -1) {
            this.f16542b.m19998k0(this.f16541a);
            this.f16543c = -1;
        }
    }
}
