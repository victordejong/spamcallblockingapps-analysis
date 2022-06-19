package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.C2341q;
import java.nio.ByteBuffer;
import java.util.Arrays;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aal.class */
public final class aal extends AbstractC3685zo implements TextureView.SurfaceTextureListener, abk {

    /* renamed from: c */
    private final aad f7650c;

    /* renamed from: d */
    private final aah f7651d;

    /* renamed from: e */
    private final boolean f7652e;

    /* renamed from: f */
    private final aae f7653f;

    /* renamed from: g */
    private AbstractC3682zl f7654g;

    /* renamed from: h */
    private Surface f7655h;

    /* renamed from: i */
    private abb f7656i;

    /* renamed from: j */
    private String f7657j;

    /* renamed from: k */
    private String[] f7658k;

    /* renamed from: l */
    private boolean f7659l;

    /* renamed from: m */
    private int f7660m = 1;

    /* renamed from: n */
    private aab f7661n;

    /* renamed from: o */
    private final boolean f7662o;

    /* renamed from: p */
    private boolean f7663p;

    /* renamed from: q */
    private boolean f7664q;

    /* renamed from: r */
    private int f7665r;

    /* renamed from: s */
    private int f7666s;

    /* renamed from: t */
    private int f7667t;

    /* renamed from: u */
    private int f7668u;

    /* renamed from: v */
    private float f7669v;

    public aal(Context context, aah aahVar, aad aadVar, boolean z, boolean z2, aae aaeVar) {
        super(context);
        this.f7652e = z2;
        this.f7650c = aadVar;
        this.f7651d = aahVar;
        this.f7662o = z;
        this.f7653f = aaeVar;
        setSurfaceTextureListener(this);
        this.f7651d.m13736a(this);
    }

    /* renamed from: a */
    private final void m13725a(float f, boolean z) {
        if (this.f7656i != null) {
            this.f7656i.m13686a(f, z);
        } else {
            C3556uu.m6745e("Trying to set volume before player is initalized.");
        }
    }

    /* renamed from: a */
    private final void m13724a(Surface surface, boolean z) {
        if (this.f7656i != null) {
            this.f7656i.m13683a(surface, z);
        } else {
            C3556uu.m6745e("Trying to set surface before player is initalized.");
        }
    }

    /* renamed from: c */
    private final void m13720c(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.f7669v != f) {
            this.f7669v = f;
            requestLayout();
        }
    }

    /* renamed from: l */
    private final abb m13712l() {
        return new abb(this.f7650c.getContext(), this.f7653f);
    }

    /* renamed from: m */
    private final String m13711m() {
        return C2341q.m14744c().m6975b(this.f7650c.getContext(), this.f7650c.mo13438j().f17636a);
    }

    /* renamed from: n */
    private final boolean m13710n() {
        return this.f7656i != null && !this.f7659l;
    }

    /* renamed from: o */
    private final boolean m13709o() {
        boolean z = true;
        if (!m13710n() || this.f7660m == 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: p */
    private final void m13708p() {
        if (this.f7656i != null || this.f7657j == null || this.f7655h == null) {
            return;
        }
        if (this.f7657j.startsWith("cache:")) {
            abt mo13465a = this.f7650c.mo13465a(this.f7657j);
            if (mo13465a instanceof acj) {
                this.f7656i = ((acj) mo13465a).m13630c();
                if (this.f7656i.m13687a() == null) {
                    C3556uu.m6745e("Precached video player has been released.");
                    return;
                }
            } else if (!(mo13465a instanceof acf)) {
                String valueOf = String.valueOf(this.f7657j);
                C3556uu.m6745e(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            } else {
                acf acfVar = (acf) mo13465a;
                String m13711m = m13711m();
                ByteBuffer m13646e = acfVar.m13646e();
                boolean m13647d = acfVar.m13647d();
                String m13648c = acfVar.m13648c();
                if (m13648c == null) {
                    C3556uu.m6745e("Stream cache URL is null.");
                    return;
                } else {
                    this.f7656i = m13712l();
                    this.f7656i.m13677a(new Uri[]{Uri.parse(m13648c)}, m13711m, m13646e, m13647d);
                }
            }
        } else {
            this.f7656i = m13712l();
            String m13711m2 = m13711m();
            Uri[] uriArr = new Uri[this.f7658k.length];
            for (int i = 0; i < this.f7658k.length; i++) {
                uriArr[i] = Uri.parse(this.f7658k[i]);
            }
            this.f7656i.m13678a(uriArr, m13711m2);
        }
        this.f7656i.m13682a((abk) this);
        m13724a(this.f7655h, false);
        this.f7660m = this.f7656i.m13687a().mo9296a();
        if (this.f7660m != 3) {
            return;
        }
        m13707q();
    }

    /* renamed from: q */
    private final void m13707q() {
        if (this.f7663p) {
            return;
        }
        this.f7663p = true;
        C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aak

            /* renamed from: a */
            private final aal f7649a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7649a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7649a.m13713k();
            }
        });
        mo6692e();
        this.f7651d.m13737a();
        if (!this.f7664q) {
            return;
        }
        mo6696c();
    }

    /* renamed from: r */
    private final void m13706r() {
        m13720c(this.f7665r, this.f7666s);
    }

    /* renamed from: s */
    private final void m13705s() {
        if (this.f7656i != null) {
            this.f7656i.m13674b(true);
        }
    }

    /* renamed from: t */
    private final void m13704t() {
        if (this.f7656i != null) {
            this.f7656i.m13674b(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final String mo6702a() {
        String valueOf = String.valueOf("ExoPlayer/3");
        String valueOf2 = String.valueOf(this.f7662o ? " spherical" : "");
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6701a(float f, float f2) {
        if (this.f7661n != null) {
            this.f7661n.m13755a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6700a(int i) {
        if (m13709o()) {
            this.f7656i.m13687a().mo9295a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: a */
    public final void mo13639a(int i, int i2) {
        this.f7665r = i;
        this.f7666s = i2;
        m13706r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6699a(AbstractC3682zl abstractC3682zl) {
        this.f7654g = abstractC3682zl;
    }

    /* renamed from: a */
    public final /* synthetic */ void m13723a(String str) {
        if (this.f7654g != null) {
            this.f7654g.mo6677a("ExoPlayerAdapter error", str);
        }
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: a */
    public final void mo13637a(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        String sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length()).append(str).append("/").append(canonicalName).append(":").append(message).toString();
        String valueOf = String.valueOf(sb);
        C3556uu.m6745e(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.f7659l = true;
        if (this.f7653f.f7611a) {
            m13704t();
        }
        C3567ve.f17498a.post(new Runnable(this, sb) { // from class: com.google.android.gms.internal.ads.aam

            /* renamed from: a */
            private final aal f7670a;

            /* renamed from: b */
            private final String f7671b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7670a = this;
                this.f7671b = sb;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7670a.m13723a(this.f7671b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6698a(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.f7657j = str;
            this.f7658k = (String[]) Arrays.copyOf(strArr, strArr.length);
            m13708p();
        }
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: a */
    public final void mo13635a(boolean z, long j) {
        if (this.f7650c != null) {
            C3650yg.f17646e.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.aav

                /* renamed from: a */
                private final aal f7700a;

                /* renamed from: b */
                private final boolean f7701b;

                /* renamed from: c */
                private final long f7702c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7700a = this;
                    this.f7701b = z;
                    this.f7702c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f7700a.m13721b(this.f7701b, this.f7702c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: b */
    public final void mo6697b() {
        if (m13710n()) {
            this.f7656i.m13687a().mo9286c();
            if (this.f7656i != null) {
                m13724a((Surface) null, true);
                if (this.f7656i != null) {
                    this.f7656i.m13682a((abk) null);
                    this.f7656i.m13671e();
                    this.f7656i = null;
                }
                this.f7660m = 1;
                this.f7659l = false;
                this.f7663p = false;
                this.f7664q = false;
            }
        }
        this.f7651d.m13732d();
        this.f17696b.m13727c();
        this.f7651d.m13735b();
    }

    @Override // com.google.android.gms.internal.ads.abk
    /* renamed from: b */
    public final void mo13633b(int i) {
        if (this.f7660m != i) {
            this.f7660m = i;
            switch (i) {
                case 3:
                    m13707q();
                    return;
                case 4:
                    if (this.f7653f.f7611a) {
                        m13704t();
                    }
                    this.f7651d.m13732d();
                    this.f17696b.m13727c();
                    C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aan

                        /* renamed from: a */
                        private final aal f7672a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f7672a = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f7672a.m13714j();
                        }
                    });
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m13722b(int i, int i2) {
        if (this.f7654g != null) {
            this.f7654g.mo6684a(i, i2);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m13721b(boolean z, long j) {
        this.f7650c.mo13455a(z, j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: c */
    public final void mo6696c() {
        if (!m13709o()) {
            this.f7664q = true;
            return;
        }
        if (this.f7653f.f7611a) {
            m13705s();
        }
        this.f7656i.m13687a().mo9291a(true);
        this.f7651d.m13733c();
        this.f17696b.m13728b();
        this.f17695a.m6646a();
        C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aap

            /* renamed from: a */
            private final aal f7674a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7674a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7674a.m13715i();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: c */
    public final void mo6695c(int i) {
        if (this.f7656i != null) {
            this.f7656i.m13672d().m13696a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: d */
    public final void mo6694d() {
        if (m13709o()) {
            if (this.f7653f.f7611a) {
                m13704t();
            }
            this.f7656i.m13687a().mo9291a(false);
            this.f7651d.m13732d();
            this.f17696b.m13727c();
            C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aao

                /* renamed from: a */
                private final aal f7673a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7673a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f7673a.m13717h();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: d */
    public final void mo6693d(int i) {
        if (this.f7656i != null) {
            this.f7656i.m13672d().m13694b(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo, com.google.android.gms.internal.ads.aai
    /* renamed from: e */
    public final void mo6692e() {
        m13725a(this.f17696b.m13731a(), false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: e */
    public final void mo6691e(int i) {
        if (this.f7656i != null) {
            this.f7656i.m13672d().m13693c(i);
        }
    }

    /* renamed from: f */
    public final /* synthetic */ void m13719f() {
        if (this.f7654g != null) {
            this.f7654g.mo6665f();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: f */
    public final void mo6690f(int i) {
        if (this.f7656i != null) {
            this.f7656i.m13672d().m13692d(i);
        }
    }

    /* renamed from: g */
    public final /* synthetic */ void m13718g() {
        if (this.f7654g != null) {
            this.f7654g.mo6687a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: g */
    public final void mo6689g(int i) {
        if (this.f7656i != null) {
            this.f7656i.m13685a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getCurrentPosition() {
        return m13709o() ? (int) this.f7656i.m13687a().mo9282g() : 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getDuration() {
        return m13709o() ? (int) this.f7656i.m13687a().mo9283f() : 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getVideoHeight() {
        return this.f7666s;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getVideoWidth() {
        return this.f7665r;
    }

    /* renamed from: h */
    public final /* synthetic */ void m13717h() {
        if (this.f7654g != null) {
            this.f7654g.mo6669d();
        }
    }

    /* renamed from: h */
    public final /* synthetic */ void m13716h(int i) {
        if (this.f7654g != null) {
            this.f7654g.onWindowVisibilityChanged(i);
        }
    }

    /* renamed from: i */
    public final /* synthetic */ void m13715i() {
        if (this.f7654g != null) {
            this.f7654g.mo6671c();
        }
    }

    /* renamed from: j */
    public final /* synthetic */ void m13714j() {
        if (this.f7654g != null) {
            this.f7654g.mo6667e();
        }
    }

    /* renamed from: k */
    public final /* synthetic */ void m13713k() {
        if (this.f7654g != null) {
            this.f7654g.mo6674b();
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i3 = measuredHeight;
        int i4 = measuredWidth;
        if (this.f7669v != 0.0f) {
            i3 = measuredHeight;
            i4 = measuredWidth;
            if (this.f7661n == null) {
                float f = measuredWidth / measuredHeight;
                if (this.f7669v > f) {
                    measuredHeight = (int) (measuredWidth / this.f7669v);
                }
                i3 = measuredHeight;
                i4 = measuredWidth;
                if (this.f7669v < f) {
                    i4 = (int) (measuredHeight * this.f7669v);
                    i3 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(i4, i3);
        if (this.f7661n != null) {
            this.f7661n.m13754a(i4, i3);
        }
        if (Build.VERSION.SDK_INT == 16) {
            if (((this.f7667t > 0 && this.f7667t != i4) || (this.f7668u > 0 && this.f7668u != i3)) && this.f7652e && m13710n()) {
                dkt m13687a = this.f7656i.m13687a();
                if (m13687a.mo9282g() > 0 && !m13687a.mo9289b()) {
                    m13725a(0.0f, true);
                    m13687a.mo9291a(true);
                    long mo9282g = m13687a.mo9282g();
                    long mo13862a = C2341q.m14737j().mo13862a();
                    while (m13710n() && m13687a.mo9282g() == mo9282g && C2341q.m14737j().mo13862a() - mo13862a <= 250) {
                    }
                    m13687a.mo9291a(false);
                    mo6692e();
                }
            }
            this.f7667t = i4;
            this.f7668u = i3;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.f7662o) {
            this.f7661n = new aab(getContext());
            this.f7661n.m13752a(surfaceTexture, i, i2);
            this.f7661n.start();
            surfaceTexture2 = this.f7661n.m13748b();
            if (surfaceTexture2 == null) {
                this.f7661n.m13756a();
                this.f7661n = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        this.f7655h = new Surface(surfaceTexture2);
        if (this.f7656i == null) {
            m13708p();
        } else {
            m13724a(this.f7655h, true);
            if (!this.f7653f.f7611a) {
                m13705s();
            }
        }
        if (this.f7665r == 0 || this.f7666s == 0) {
            m13720c(i, i2);
        } else {
            m13706r();
        }
        C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aar

            /* renamed from: a */
            private final aal f7678a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7678a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7678a.m13718g();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        mo6694d();
        if (this.f7661n != null) {
            this.f7661n.m13756a();
            this.f7661n = null;
        }
        if (this.f7656i != null) {
            m13704t();
            if (this.f7655h != null) {
                this.f7655h.release();
            }
            this.f7655h = null;
            m13724a((Surface) null, true);
        }
        C3567ve.f17498a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aat

            /* renamed from: a */
            private final aal f7681a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7681a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7681a.m13719f();
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.f7661n != null) {
            this.f7661n.m13754a(i, i2);
        }
        C3567ve.f17498a.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.aaq

            /* renamed from: a */
            private final aal f7675a;

            /* renamed from: b */
            private final int f7676b;

            /* renamed from: c */
            private final int f7677c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7675a = this;
                this.f7676b = i;
                this.f7677c = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7675a.m13722b(this.f7676b, this.f7677c);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f7651d.m13734b(this);
        this.f17695a.m6645a(surfaceTexture, this.f7654g);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        C3556uu.m7052a(new StringBuilder(57).append("AdExoPlayerView3 window visibility changed to ").append(i).toString());
        C3567ve.f17498a.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.aas

            /* renamed from: a */
            private final aal f7679a;

            /* renamed from: b */
            private final int f7680b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7679a = this;
                this.f7680b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7679a.m13716h(this.f7680b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final void setVideoPath(String str) {
        if (str != null) {
            this.f7657j = str;
            this.f7658k = new String[]{str};
            m13708p();
        }
    }
}
