package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kt1.class */
public abstract class kt1 implements x51 {

    /* renamed from: b */
    protected w31 f25343b;

    /* renamed from: c */
    protected w31 f25344c;

    /* renamed from: d */
    private w31 f25345d;

    /* renamed from: e */
    private w31 f25346e;

    /* renamed from: f */
    private ByteBuffer f25347f;

    /* renamed from: g */
    private ByteBuffer f25348g;

    /* renamed from: h */
    private boolean f25349h;

    public kt1() {
        ByteBuffer byteBuffer = x51.f31910a;
        this.f25347f = byteBuffer;
        this.f25348g = byteBuffer;
        w31 w31Var = w31.f31443a;
        this.f25345d = w31Var;
        this.f25346e = w31Var;
        this.f25343b = w31Var;
        this.f25344c = w31Var;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: a */
    public ByteBuffer mo9351a() {
        ByteBuffer byteBuffer = this.f25348g;
        this.f25348g = x51.f31910a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: b */
    public boolean mo8465b() {
        return this.f25346e != w31.f31443a;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: c */
    public final w31 mo9350c(w31 w31Var) {
        this.f25345d = w31Var;
        this.f25346e = mo8463j(w31Var);
        return mo8465b() ? this.f25346e : w31.f31443a;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: d */
    public boolean mo9349d() {
        return this.f25349h && this.f25348g == x51.f31910a;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: e */
    public final void mo9348e() {
        this.f25349h = true;
        mo8462k();
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: f */
    public final void mo9347f() {
        zzg();
        this.f25347f = x51.f31910a;
        w31 w31Var = w31.f31443a;
        this.f25345d = w31Var;
        this.f25346e = w31Var;
        this.f25343b = w31Var;
        this.f25344c = w31Var;
        mo8460m();
    }

    /* renamed from: h */
    public final ByteBuffer m13811h(int i) {
        if (this.f25347f.capacity() < i) {
            this.f25347f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f25347f.clear();
        }
        ByteBuffer byteBuffer = this.f25347f;
        this.f25348g = byteBuffer;
        return byteBuffer;
    }

    /* renamed from: i */
    public final boolean m13810i() {
        return this.f25348g.hasRemaining();
    }

    /* renamed from: j */
    protected abstract w31 mo8463j(w31 w31Var);

    /* renamed from: k */
    protected void mo8462k() {
    }

    /* renamed from: l */
    protected void mo8461l() {
    }

    /* renamed from: m */
    protected void mo8460m() {
    }

    @Override // com.google.android.gms.internal.ads.x51
    public final void zzg() {
        this.f25348g = x51.f31910a;
        this.f25349h = false;
        this.f25343b = this.f25345d;
        this.f25344c = this.f25346e;
        mo8461l();
    }
}
