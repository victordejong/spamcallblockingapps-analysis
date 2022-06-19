package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
@TargetApi(16)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjs.class */
public final class zzcjs extends zzcii implements TextureView.SurfaceTextureListener, zj0 {

    /* renamed from: f */
    private final kk0 f33898f;

    /* renamed from: g */
    private final lk0 f33899g;

    /* renamed from: h */
    private final boolean f33900h;

    /* renamed from: i */
    private final jk0 f33901i;

    /* renamed from: j */
    private rj0 f33902j;

    /* renamed from: k */
    private Surface f33903k;

    /* renamed from: l */
    private ak0 f33904l;

    /* renamed from: m */
    private String f33905m;

    /* renamed from: n */
    private String[] f33906n;

    /* renamed from: o */
    private boolean f33907o;

    /* renamed from: p */
    private int f33908p = 1;

    /* renamed from: q */
    private hk0 f33909q;

    /* renamed from: r */
    private final boolean f33910r;

    /* renamed from: s */
    private boolean f33911s;

    /* renamed from: t */
    private boolean f33912t;

    /* renamed from: u */
    private int f33913u;

    /* renamed from: v */
    private int f33914v;

    /* renamed from: w */
    private int f33915w;

    /* renamed from: x */
    private int f33916x;

    /* renamed from: y */
    private float f33917y;

    public zzcjs(Context context, lk0 lk0Var, kk0 kk0Var, boolean z, boolean z2, jk0 jk0Var) {
        super(context);
        this.f33900h = z2;
        this.f33898f = kk0Var;
        this.f33899g = lk0Var;
        this.f33910r = z;
        this.f33901i = jk0Var;
        setSurfaceTextureListener(this);
        lk0Var.m13494a(this);
    }

    /* renamed from: Q */
    private final boolean m8004Q() {
        ak0 ak0Var = this.f33904l;
        return ak0Var != null && ak0Var.mo11431A() && !this.f33907o;
    }

    /* renamed from: R */
    private final boolean m8003R() {
        return m8004Q() && this.f33908p != 1;
    }

    /* renamed from: S */
    private final void m8002S(boolean z) {
        if ((this.f33904l != null && !z) || this.f33905m == null || this.f33903k == null) {
            return;
        }
        if (z) {
            if (!m8004Q()) {
                ei0.m15464f("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                this.f33904l.mo11410X();
                m8001T();
            }
        }
        if (this.f33905m.startsWith("cache:")) {
            km0 mo7907g0 = this.f33898f.mo7907g0(this.f33905m);
            if (mo7907g0 instanceof tm0) {
                ak0 m10617x = ((tm0) mo7907g0).m10617x();
                this.f33904l = m10617x;
                if (!m10617x.mo11431A()) {
                    ei0.m15464f("Precached video player has been released.");
                    return;
                }
            } else if (!(mo7907g0 instanceof qm0)) {
                String valueOf = String.valueOf(this.f33905m);
                ei0.m15464f(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            } else {
                qm0 qm0Var = (qm0) mo7907g0;
                String m8017D = m8017D();
                ByteBuffer m11852z = qm0Var.m11852z();
                boolean m11853y = qm0Var.m11853y();
                String m11854x = qm0Var.m11854x();
                if (m11854x == null) {
                    ei0.m15464f("Stream cache URL is null.");
                    return;
                }
                ak0 m8018C = m8018C();
                this.f33904l = m8018C;
                m8018C.mo11415S(new Uri[]{Uri.parse(m11854x)}, m8017D, m11852z, m11853y);
            }
        } else {
            this.f33904l = m8018C();
            String m8017D2 = m8017D();
            Uri[] uriArr = new Uri[this.f33906n.length];
            int i = 0;
            while (true) {
                String[] strArr = this.f33906n;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.f33904l.mo11416R(uriArr, m8017D2);
        }
        this.f33904l.mo11414T(this);
        m8000U(this.f33903k, false);
        if (!this.f33904l.mo11431A()) {
            return;
        }
        int mo11430B = this.f33904l.mo11430B();
        this.f33908p = mo11430B;
        if (mo11430B != 3) {
            return;
        }
        m7998W();
    }

    /* renamed from: T */
    private final void m8001T() {
        if (this.f33904l != null) {
            m8000U(null, true);
            ak0 ak0Var = this.f33904l;
            if (ak0Var != null) {
                ak0Var.mo11414T(null);
                this.f33904l.mo11413U();
                this.f33904l = null;
            }
            this.f33908p = 1;
            this.f33907o = false;
            this.f33911s = false;
            this.f33912t = false;
        }
    }

    /* renamed from: U */
    private final void m8000U(Surface surface, boolean z) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var == null) {
            ei0.m15464f("Trying to set surface before player is initialized.");
            return;
        }
        try {
            ak0Var.mo11412V(surface, z);
        } catch (IOException e) {
            ei0.m15463g("", e);
        }
    }

    /* renamed from: V */
    private final void m7999V(float f, boolean z) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var == null) {
            ei0.m15464f("Trying to set volume before player is initialized.");
            return;
        }
        try {
            ak0Var.mo11411W(f, z);
        } catch (IOException e) {
            ei0.m15463g("", e);
        }
    }

    /* renamed from: W */
    private final void m7998W() {
        if (this.f33911s) {
            return;
        }
        this.f33911s = true;
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.pk0

            /* renamed from: d */
            private final zzcjs f28034d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28034d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28034d.m8005P();
            }
        });
        zzt();
        this.f33899g.m13493b();
        if (!this.f33912t) {
            return;
        }
        mo7981l();
    }

    /* renamed from: X */
    private static String m7997X(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    /* renamed from: Y */
    private final void m7996Y() {
        m7995Z(this.f33913u, this.f33914v);
    }

    /* renamed from: Z */
    private final void m7995Z(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.f33917y != f) {
            this.f33917y = f;
            requestLayout();
        }
    }

    /* renamed from: a0 */
    private final void m7993a0() {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11419M(true);
        }
    }

    /* renamed from: b0 */
    private final void m7991b0() {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11419M(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: A */
    public final void mo8020A(int i) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11425G(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: B */
    public final void mo8019B(int i) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11408Z(i);
        }
    }

    /* renamed from: C */
    final ak0 m8018C() {
        return this.f33901i.f24917m ? new mn0(this.f33898f.getContext(), this.f33901i, this.f33898f) : new rl0(this.f33898f.getContext(), this.f33901i, this.f33898f);
    }

    /* renamed from: D */
    final String m8017D() {
        return C5667s.m18160d().m18092P(this.f33898f.getContext(), this.f33898f.zzt().f33854d);
    }

    /* renamed from: E */
    public final /* synthetic */ void m8016E() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8039h();
        }
    }

    /* renamed from: F */
    public final /* synthetic */ void m8015F(String str) {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8040g("ExoPlayerAdapter exception", str);
        }
    }

    /* renamed from: G */
    public final /* synthetic */ void m8014G(boolean z, long j) {
        this.f33898f.mo7913c1(z, j);
    }

    /* renamed from: H */
    public final /* synthetic */ void m8013H(int i) {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.onWindowVisibilityChanged(i);
        }
    }

    /* renamed from: I */
    public final /* synthetic */ void m8012I() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8041f();
        }
    }

    /* renamed from: J */
    public final /* synthetic */ void m8011J(int i, int i2) {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8043d(i, i2);
        }
    }

    /* renamed from: K */
    public final /* synthetic */ void m8010K() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.zza();
        }
    }

    /* renamed from: L */
    public final /* synthetic */ void m8009L() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8042e();
        }
    }

    /* renamed from: M */
    public final /* synthetic */ void m8008M() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8044c();
        }
    }

    /* renamed from: N */
    public final /* synthetic */ void m8007N(String str) {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8038i("ExoPlayerAdapter error", str);
        }
    }

    /* renamed from: O */
    public final /* synthetic */ void m8006O() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8046a();
        }
    }

    /* renamed from: P */
    public final /* synthetic */ void m8005P() {
        rj0 rj0Var = this.f33902j;
        if (rj0Var != null) {
            rj0Var.mo8045b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: a */
    public final void mo7994a(int i) {
        if (this.f33908p != i) {
            this.f33908p = i;
            if (i == 3) {
                m7998W();
            } else if (i != 4) {
            } else {
                if (this.f33901i.f24905a) {
                    m7991b0();
                }
                this.f33899g.m13489f();
                this.f33879e.m12638e();
                C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.sk0

                    /* renamed from: d */
                    private final zzcjs f29554d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f29554d = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f29554d.m8006O();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: b */
    public final void mo7992b(int i) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11407a0(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: c */
    public final void mo7990c(boolean z, long j) {
        if (this.f33898f != null) {
            qi0.f28499e.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.al0

                /* renamed from: d */
                private final zzcjs f19986d;

                /* renamed from: e */
                private final boolean f19987e;

                /* renamed from: f */
                private final long f19988f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19986d = this;
                    this.f19987e = z;
                    this.f19988f = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f19986d.m8014G(this.f19987e, this.f19988f);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: d */
    public final void mo7989d(String str, Exception exc) {
        String m7997X = m7997X("onLoadException", exc);
        ei0.m15464f(m7997X.length() != 0 ? "ExoPlayerAdapter exception: ".concat(m7997X) : new String("ExoPlayerAdapter exception: "));
        C5667s.m18156h().m12234l(exc, "AdExoPlayerView.onException");
        C5679c2.f18451a.post(new Runnable(this, m7997X) { // from class: com.google.android.gms.internal.ads.qk0

            /* renamed from: d */
            private final zzcjs f28538d;

            /* renamed from: e */
            private final String f28539e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28538d = this;
                this.f28539e = m7997X;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28538d.m8015F(this.f28539e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: e */
    public final void mo7988e(int i, int i2) {
        this.f33913u = i;
        this.f33914v = i2;
        m7996Y();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: f */
    public final void mo7987f(int i) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11405b0(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: g */
    public final void mo7986g(String str, Exception exc) {
        String m7997X = m7997X(str, exc);
        ei0.m15464f(m7997X.length() != 0 ? "ExoPlayerAdapter error: ".concat(m7997X) : new String("ExoPlayerAdapter error: "));
        this.f33907o = true;
        if (this.f33901i.f24905a) {
            m7991b0();
        }
        C5679c2.f18451a.post(new Runnable(this, m7997X) { // from class: com.google.android.gms.internal.ads.tk0

            /* renamed from: d */
            private final zzcjs f30028d;

            /* renamed from: e */
            private final String f30029e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30028d = this;
                this.f30029e = m7997X;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f30028d.m8007N(this.f30029e);
            }
        });
        C5667s.m18156h().m12234l(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: h */
    public final String mo7985h() {
        String str = true != this.f33910r ? "" : " spherical";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: i */
    public final void mo7984i(rj0 rj0Var) {
        this.f33902j = rj0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: j */
    public final void mo7983j(String str) {
        if (str != null) {
            mo7968y(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: k */
    public final void mo7982k() {
        if (m8004Q()) {
            this.f33904l.mo11410X();
            m8001T();
        }
        this.f33899g.m13489f();
        this.f33879e.m12638e();
        this.f33899g.m13492c();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: l */
    public final void mo7981l() {
        if (!m8003R()) {
            this.f33912t = true;
            return;
        }
        if (this.f33901i.f24905a) {
            m7993a0();
        }
        this.f33904l.mo11427E(true);
        this.f33899g.m13490e();
        this.f33879e.m12639d();
        this.f33878d.m15778a();
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.uk0

            /* renamed from: d */
            private final zzcjs f30653d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30653d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f30653d.m8008M();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: m */
    public final void mo7980m() {
        if (m8003R()) {
            if (this.f33901i.f24905a) {
                m7991b0();
            }
            this.f33904l.mo11427E(false);
            this.f33899g.m13489f();
            this.f33879e.m12638e();
            C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.vk0

                /* renamed from: d */
                private final zzcjs f31233d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31233d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f31233d.m8009L();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: n */
    public final int mo7979n() {
        if (m8003R()) {
            return (int) this.f33904l.mo11424H();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: o */
    public final int mo7978o() {
        if (m8003R()) {
            return (int) this.f33904l.mo11429C();
        }
        return 0;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.f33917y;
        int i4 = measuredWidth;
        int i5 = measuredHeight;
        if (f != 0.0f) {
            i4 = measuredWidth;
            i5 = measuredHeight;
            if (this.f33909q == null) {
                float f2 = measuredWidth;
                float f3 = f2 / measuredHeight;
                if (f > f3) {
                    measuredHeight = (int) (f2 / f);
                }
                i4 = measuredWidth;
                i5 = measuredHeight;
                if (f < f3) {
                    i4 = (int) (measuredHeight * f);
                    i5 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(i4, i5);
        hk0 hk0Var = this.f33909q;
        if (hk0Var != null) {
            hk0Var.m14610b(i4, i5);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i6 = this.f33915w;
            if (((i6 > 0 && i6 != i4) || ((i3 = this.f33916x) > 0 && i3 != i5)) && this.f33900h && m8004Q() && this.f33904l.mo11429C() > 0 && !this.f33904l.mo11428D()) {
                m7999V(0.0f, true);
                this.f33904l.mo11427E(true);
                long mo11429C = this.f33904l.mo11429C();
                long mo16807a = C5667s.m18153k().mo16807a();
                while (m8004Q() && this.f33904l.mo11429C() == mo11429C && C5667s.m18153k().mo16807a() - mo16807a <= 250) {
                }
                this.f33904l.mo11427E(false);
                zzt();
            }
            this.f33915w = i4;
            this.f33916x = i5;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.f33910r) {
            hk0 hk0Var = new hk0(getContext());
            this.f33909q = hk0Var;
            hk0Var.m14611a(surfaceTexture, i, i2);
            this.f33909q.start();
            surfaceTexture2 = this.f33909q.m14608d();
            if (surfaceTexture2 == null) {
                this.f33909q.m14609c();
                this.f33909q = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.f33903k = surface;
        if (this.f33904l == null) {
            m8002S(false);
        } else {
            m8000U(surface, true);
            if (!this.f33901i.f24905a) {
                m7993a0();
            }
        }
        if (this.f33913u == 0 || this.f33914v == 0) {
            m7995Z(i, i2);
        } else {
            m7996Y();
        }
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.wk0

            /* renamed from: d */
            private final zzcjs f31599d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31599d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f31599d.m8010K();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        mo7980m();
        hk0 hk0Var = this.f33909q;
        if (hk0Var != null) {
            hk0Var.m14609c();
            this.f33909q = null;
        }
        if (this.f33904l != null) {
            m7991b0();
            Surface surface = this.f33903k;
            if (surface != null) {
                surface.release();
            }
            this.f33903k = null;
            m8000U(null, true);
        }
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.yk0

            /* renamed from: d */
            private final zzcjs f32528d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32528d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32528d.m8012I();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        hk0 hk0Var = this.f33909q;
        if (hk0Var != null) {
            hk0Var.m14610b(i, i2);
        }
        C5679c2.f18451a.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.xk0

            /* renamed from: d */
            private final zzcjs f32093d;

            /* renamed from: e */
            private final int f32094e;

            /* renamed from: f */
            private final int f32095f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32093d = this;
                this.f32094e = i;
                this.f32095f = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32093d.m8011J(this.f32094e, this.f32095f);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f33899g.m13491d(this);
        this.f33878d.m15777b(surfaceTexture, this.f33902j);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        C5722o1.m17990k(sb.toString());
        C5679c2.f18451a.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zk0

            /* renamed from: d */
            private final zzcjs f32970d;

            /* renamed from: e */
            private final int f32971e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32970d = this;
                this.f32971e = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32970d.m8013H(this.f32971e);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: p */
    public final void mo7977p(int i) {
        if (m8003R()) {
            this.f33904l.mo11409Y(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: q */
    public final void mo7976q(float f, float f2) {
        hk0 hk0Var = this.f33909q;
        if (hk0Var != null) {
            hk0Var.m14607e(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: r */
    public final int mo7975r() {
        return this.f33913u;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: s */
    public final int mo7974s() {
        return this.f33914v;
    }

    @Override // com.google.android.gms.internal.ads.zj0
    /* renamed from: t */
    public final void mo7973t() {
        C5679c2.f18451a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.rk0

            /* renamed from: d */
            private final zzcjs f29006d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29006d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29006d.m8016E();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: u */
    public final long mo7972u() {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            return ak0Var.mo11423I();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: v */
    public final long mo7971v() {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            return ak0Var.mo11422J();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: w */
    public final long mo7970w() {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            return ak0Var.mo11421K();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: x */
    public final int mo7969x() {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            return ak0Var.mo11420L();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: y */
    public final void mo7968y(String str, String[] strArr) {
        if (str == null) {
            return;
        }
        boolean z = true;
        if (strArr == null) {
            this.f33906n = new String[]{str};
        } else {
            this.f33906n = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.f33905m;
        if (!this.f33901i.f24918n || str2 == null || str.equals(str2) || this.f33908p != 4) {
            z = false;
        }
        this.f33905m = str;
        m8002S(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: z */
    public final void mo7967z(int i) {
        ak0 ak0Var = this.f33904l;
        if (ak0Var != null) {
            ak0Var.mo11426F(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii, com.google.android.gms.internal.ads.nk0
    public final void zzt() {
        m7999V(this.f33879e.m12640c(), false);
    }
}
