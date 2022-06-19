package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbcv.class */
public final class zzbcv extends zzbbz implements TextureView.SurfaceTextureListener, acg {

    /* renamed from: a */
    final abb f50188a;

    /* renamed from: d */
    aak f50189d;

    /* renamed from: e */
    private final aba f50190e;

    /* renamed from: f */
    private final boolean f50191f;

    /* renamed from: g */
    private final aay f50192g;

    /* renamed from: h */
    private Surface f50193h;

    /* renamed from: i */
    private abw f50194i;

    /* renamed from: j */
    private String f50195j;

    /* renamed from: k */
    private String[] f50196k;

    /* renamed from: l */
    private boolean f50197l;

    /* renamed from: m */
    private int f50198m = 1;

    /* renamed from: n */
    private aaz f50199n;

    /* renamed from: o */
    private final boolean f50200o;

    /* renamed from: p */
    private boolean f50201p;

    /* renamed from: q */
    private boolean f50202q;

    /* renamed from: r */
    private int f50203r;

    /* renamed from: s */
    private int f50204s;

    /* renamed from: t */
    private int f50205t;

    /* renamed from: u */
    private int f50206u;

    /* renamed from: v */
    private float f50207v;

    public zzbcv(Context context, aba abaVar, abb abbVar, boolean z, boolean z2, aay aayVar) {
        super(context);
        this.f50191f = z2;
        this.f50188a = abbVar;
        this.f50190e = abaVar;
        this.f50200o = z;
        this.f50192g = aayVar;
        setSurfaceTextureListener(this);
        abaVar.m18922a(this);
    }

    /* renamed from: a */
    private final void m13847a(float f, boolean z) {
        abw abwVar = this.f50194i;
        if (abwVar == null) {
            zzd.zzez("Trying to set volume before player is initalized.");
        } else if (abwVar.f39865g == null) {
        } else {
            dvm dvmVar = new dvm(abwVar.f39863e, 2, Float.valueOf(f));
            if (z) {
                abwVar.f39865g.mo15643b(dvmVar);
            } else {
                abwVar.f39865g.mo15647a(dvmVar);
            }
        }
    }

    /* renamed from: a */
    private final void m13844a(Surface surface, boolean z) {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.m18897a(surface, z);
        } else {
            zzd.zzez("Trying to set surface before player is initalized.");
        }
    }

    /* renamed from: b */
    private final void m13837b(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.f50207v != f) {
            this.f50207v = f;
            requestLayout();
        }
    }

    /* renamed from: c */
    private static String m13833c(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(canonicalName).length() + String.valueOf(message).length());
        sb.append(str);
        sb.append("/");
        sb.append(canonicalName);
        sb.append(":");
        sb.append(message);
        return sb.toString();
    }

    /* renamed from: n */
    private final abw m13818n() {
        return new abw(this.f50188a.getContext(), this.f50192g, this.f50188a);
    }

    /* renamed from: o */
    private final String m13817o() {
        return zzr.zzkv().zzq(this.f50188a.getContext(), this.f50188a.mo13739k().zzbrz);
    }

    /* renamed from: p */
    private final boolean m13816p() {
        abw abwVar = this.f50194i;
        return (abwVar == null || abwVar.f39865g == null || this.f50197l) ? false : true;
    }

    /* renamed from: q */
    private final boolean m13815q() {
        return m13816p() && this.f50198m != 1;
    }

    /* renamed from: r */
    private final void m13814r() {
        String str;
        if (this.f50194i != null || (str = this.f50195j) == null || this.f50193h == null) {
            return;
        }
        if (str.startsWith("cache:")) {
            acu mo13759b = this.f50188a.mo13759b(this.f50195j);
            if (mo13759b instanceof adf) {
                abw m18863c = ((adf) mo13759b).m18863c();
                this.f50194i = m18863c;
                if (m18863c.f39865g == null) {
                    zzd.zzez("Precached video player has been released.");
                    return;
                }
            } else if (!(mo13759b instanceof adg)) {
                String valueOf = String.valueOf(this.f50195j);
                zzd.zzez(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                return;
            } else {
                adg adgVar = (adg) mo13759b;
                String m13817o = m13817o();
                ByteBuffer m18855c = adgVar.m18855c();
                boolean z = adgVar.f39973e;
                String str2 = adgVar.f39972d;
                if (str2 == null) {
                    zzd.zzez("Stream cache URL is null.");
                    return;
                }
                abw m13818n = m13818n();
                this.f50194i = m13818n;
                m13818n.m18893a(new Uri[]{Uri.parse(str2)}, m13817o, m18855c, z);
            }
        } else {
            this.f50194i = m13818n();
            String m13817o2 = m13817o();
            Uri[] uriArr = new Uri[this.f50196k.length];
            int i = 0;
            while (true) {
                String[] strArr = this.f50196k;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.f50194i.m18894a(uriArr, m13817o2);
        }
        this.f50194i.f39866h = this;
        m13844a(this.f50193h, false);
        if (this.f50194i.f39865g == null) {
            return;
        }
        int mo15653a = this.f50194i.f39865g.mo15653a();
        this.f50198m = mo15653a;
        if (mo15653a != 3) {
            return;
        }
        m13813s();
    }

    /* renamed from: s */
    private final void m13813s() {
        if (this.f50201p) {
            return;
        }
        this.f50201p = true;
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abg

            /* renamed from: a */
            private final zzbcv f39801a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39801a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39801a;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13864b();
                }
            }
        });
        mo13819m();
        this.f50190e.m18923a();
        if (!this.f50202q) {
            return;
        }
        mo13835c();
    }

    /* renamed from: t */
    private final void m13812t() {
        m13837b(this.f50203r, this.f50204s);
    }

    /* renamed from: u */
    private final void m13811u() {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.m18895a(true);
        }
    }

    /* renamed from: v */
    private final void m13810v() {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.m18895a(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final String mo13849a() {
        String str = this.f50200o ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13848a(float f, float f2) {
        aaz aazVar = this.f50199n;
        if (aazVar != null) {
            aazVar.m18937a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13846a(int i) {
        if (m13815q()) {
            this.f50194i.f39865g.mo15651a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: a */
    public final void mo13845a(int i, int i2) {
        this.f50203r = i;
        this.f50204s = i2;
        m13812t();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13843a(aak aakVar) {
        this.f50189d = aakVar;
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: a */
    public final void mo13842a(String str, Exception exc) {
        String m13833c = m13833c(str, exc);
        String valueOf = String.valueOf(m13833c);
        zzd.zzez(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.f50197l = true;
        if (this.f50192g.f39734a) {
            m13810v();
        }
        zzj.zzegq.post(new Runnable(this, m13833c) { // from class: com.google.android.gms.internal.ads.abh

            /* renamed from: a */
            private final zzbcv f39802a;

            /* renamed from: b */
            private final String f39803b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39802a = this;
                this.f39803b = m13833c;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39802a;
                String str2 = this.f39803b;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13866a("ExoPlayerAdapter error", str2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13841a(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.f50195j = str;
            this.f50196k = (String[]) Arrays.copyOf(strArr, strArr.length);
            m13814r();
        }
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: a */
    public final void mo13840a(boolean z, long j) {
        if (this.f50188a != null) {
            C13091zd.f50122e.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.abr

                /* renamed from: a */
                private final zzbcv f39835a;

                /* renamed from: b */
                private final boolean f39836b;

                /* renamed from: c */
                private final long f39837c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39835a = this;
                    this.f39836b = z;
                    this.f39837c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.f39835a;
                    zzbcvVar.f50188a.mo13764a(this.f39836b, this.f39837c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: b */
    public final void mo13839b() {
        if (m13816p()) {
            this.f50194i.f39865g.mo15642c();
            if (this.f50194i != null) {
                m13844a((Surface) null, true);
                abw abwVar = this.f50194i;
                if (abwVar != null) {
                    abwVar.f39866h = null;
                    this.f50194i.m18899a();
                    this.f50194i = null;
                }
                this.f50198m = 1;
                this.f50197l = false;
                this.f50201p = false;
                this.f50202q = false;
            }
        }
        this.f50190e.f39775a = false;
        this.f50170c.m18915c();
        this.f50190e.m18921b();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: b */
    public final void mo13838b(int i) {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.f39862d.m18888a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: b */
    public final void mo13836b(String str, Exception exc) {
        String m13833c = m13833c(str, exc);
        String valueOf = String.valueOf(m13833c);
        zzd.zzez(valueOf.length() != 0 ? "ExoPlayerAdapter exception: ".concat(valueOf) : new String("ExoPlayerAdapter exception: "));
        zzj.zzegq.post(new Runnable(this, m13833c) { // from class: com.google.android.gms.internal.ads.abj

            /* renamed from: a */
            private final zzbcv f39806a;

            /* renamed from: b */
            private final String f39807b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39806a = this;
                this.f39807b = m13833c;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39806a;
                String str2 = this.f39807b;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13863b("ExoPlayerAdapter exception", str2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: c */
    public final void mo13835c() {
        if (!m13815q()) {
            this.f50202q = true;
            return;
        }
        if (this.f50192g.f39734a) {
            m13811u();
        }
        this.f50194i.f39865g.mo15648a(true);
        this.f50190e.m18919c();
        this.f50170c.m18916b();
        this.f50169b.f39722a = true;
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abl

            /* renamed from: a */
            private final zzbcv f39809a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39809a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39809a;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13862c();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: c */
    public final void mo13834c(int i) {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.f39862d.m18886b(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: d */
    public final void mo13832d() {
        if (m13815q()) {
            if (this.f50192g.f39734a) {
                m13810v();
            }
            this.f50194i.f39865g.mo15648a(false);
            this.f50190e.f39775a = false;
            this.f50170c.m18915c();
            zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abk

                /* renamed from: a */
                private final zzbcv f39808a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39808a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.f39808a;
                    if (zzbcvVar.f50189d != null) {
                        zzbcvVar.f50189d.mo13861d();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: d */
    public final void mo13831d(int i) {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.f39862d.m18885c(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: e */
    public final int mo13830e() {
        if (m13815q()) {
            return (int) this.f50194i.f39865g.mo15639f();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: e */
    public final void mo13829e(int i) {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            abwVar.f39862d.m18884d(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: f */
    public final int mo13828f() {
        if (m13815q()) {
            return (int) this.f50194i.f39865g.mo15638g();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: f */
    public final void mo13827f(int i) {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            for (WeakReference<abq> weakReference : abwVar.f39871m) {
                abq abqVar = weakReference.get();
                if (abqVar != null) {
                    abqVar.f39819a = i;
                    for (Socket socket : abqVar.f39820b) {
                        if (!socket.isClosed()) {
                            try {
                                socket.setReceiveBufferSize(abqVar.f39819a);
                            } catch (SocketException e) {
                                zzd.zzd("Failed to update receive buffer size.", e);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: g */
    public final int mo13826g() {
        return this.f50203r;
    }

    @Override // com.google.android.gms.internal.ads.acg
    /* renamed from: g */
    public final void mo13825g(int i) {
        if (this.f50198m != i) {
            this.f50198m = i;
            if (i == 3) {
                m13813s();
            } else if (i != 4) {
            } else {
                if (this.f50192g.f39734a) {
                    m13810v();
                }
                this.f50190e.f39775a = false;
                this.f50170c.m18915c();
                zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abf

                    /* renamed from: a */
                    private final zzbcv f39800a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f39800a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbcv zzbcvVar = this.f39800a;
                        if (zzbcvVar.f50189d != null) {
                            zzbcvVar.f50189d.mo13860e();
                        }
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: h */
    public final int mo13824h() {
        return this.f50204s;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: i */
    public final long mo13823i() {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            return abwVar.m18892b();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: j */
    public final long mo13822j() {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            return abwVar.m18891c();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: k */
    public final long mo13821k() {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            return abwVar.m18890d();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: l */
    public final int mo13820l() {
        abw abwVar = this.f50194i;
        if (abwVar != null) {
            return abwVar.f39868j;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz, com.google.android.gms.internal.ads.abe
    /* renamed from: m */
    public final void mo13819m() {
        m13847a(this.f50170c.m18918a(), false);
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.f50207v;
        int i4 = measuredWidth;
        int i5 = measuredHeight;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            i4 = measuredWidth;
            i5 = measuredHeight;
            if (this.f50199n == null) {
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
        aaz aazVar = this.f50199n;
        if (aazVar != null) {
            aazVar.m18936a(i4, i5);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i6 = this.f50205t;
            if (((i6 > 0 && i6 != i4) || ((i3 = this.f50206u) > 0 && i3 != i5)) && this.f50191f && m13816p()) {
                dvl dvlVar = this.f50194i.f39865g;
                if (dvlVar.mo15638g() > 0 && !dvlVar.mo15646b()) {
                    m13847a(BitmapDescriptorFactory.HUE_RED, true);
                    dvlVar.mo15648a(true);
                    long mo15638g = dvlVar.mo15638g();
                    long mo19039a = zzr.zzlc().mo19039a();
                    while (m13816p() && dvlVar.mo15638g() == mo15638g && zzr.zzlc().mo19039a() - mo19039a <= 250) {
                    }
                    dvlVar.mo15648a(false);
                    mo13819m();
                }
            }
            this.f50205t = i4;
            this.f50206u = i5;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.f50200o) {
            aaz aazVar = new aaz(getContext());
            this.f50199n = aazVar;
            aazVar.m18934a(surfaceTexture, i, i2);
            this.f50199n.start();
            surfaceTexture2 = this.f50199n.m18928c();
            if (surfaceTexture2 == null) {
                this.f50199n.m18930b();
                this.f50199n = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.f50193h = surface;
        if (this.f50194i == null) {
            m13814r();
        } else {
            m13844a(surface, true);
            if (!this.f50192g.f39734a) {
                m13811u();
            }
        }
        if (this.f50203r == 0 || this.f50204s == 0) {
            m13837b(i, i2);
        } else {
            m13812t();
        }
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abn

            /* renamed from: a */
            private final zzbcv f39813a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39813a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39813a;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13873a();
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        mo13832d();
        aaz aazVar = this.f50199n;
        if (aazVar != null) {
            aazVar.m18930b();
            this.f50199n = null;
        }
        if (this.f50194i != null) {
            m13810v();
            Surface surface = this.f50193h;
            if (surface != null) {
                surface.release();
            }
            this.f50193h = null;
            m13844a((Surface) null, true);
        }
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abp

            /* renamed from: a */
            private final zzbcv f39816a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39816a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39816a;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13859f();
                }
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        aaz aazVar = this.f50199n;
        if (aazVar != null) {
            aazVar.m18936a(i, i2);
        }
        zzj.zzegq.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.abm

            /* renamed from: a */
            private final zzbcv f39810a;

            /* renamed from: b */
            private final int f39811b;

            /* renamed from: c */
            private final int f39812c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39810a = this;
                this.f39811b = i;
                this.f39812c = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39810a;
                int i3 = this.f39811b;
                int i4 = this.f39812c;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.mo13872a(i3, i4);
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f50190e.m18920b(this);
        this.f50169b.m18947a(surfaceTexture, this.f50189d);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzd.zzed(sb.toString());
        zzj.zzegq.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.abo

            /* renamed from: a */
            private final zzbcv f39814a;

            /* renamed from: b */
            private final int f39815b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39814a = this;
                this.f39815b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f39814a;
                int i2 = this.f39815b;
                if (zzbcvVar.f50189d != null) {
                    zzbcvVar.f50189d.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void setVideoPath(String str) {
        if (str != null) {
            this.f50195j = str;
            this.f50196k = new String[]{str};
            m13814r();
        }
    }
}
