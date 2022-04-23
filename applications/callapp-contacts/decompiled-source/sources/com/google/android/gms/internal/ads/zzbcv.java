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

    /* renamed from: a  reason: collision with root package name */
    final abb f28611a;

    /* renamed from: d  reason: collision with root package name */
    aak f28612d;
    private final aba e;
    private final boolean f;
    private final aay g;
    private Surface h;
    private abw i;
    private String j;
    private String[] k;
    private boolean l;
    private int m = 1;
    private aaz n;
    private final boolean o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private int u;
    private float v;

    public zzbcv(Context context, aba abaVar, abb abbVar, boolean z, boolean z2, aay aayVar) {
        super(context);
        this.f = z2;
        this.f28611a = abbVar;
        this.e = abaVar;
        this.o = z;
        this.g = aayVar;
        setSurfaceTextureListener(this);
        abaVar.a(this);
    }

    private final void a(float f, boolean z) {
        abw abwVar = this.i;
        if (abwVar == null) {
            zzd.zzez("Trying to set volume before player is initalized.");
        } else if (abwVar.g != null) {
            dvm dvmVar = new dvm(abwVar.e, 2, Float.valueOf(f));
            if (z) {
                abwVar.g.b(dvmVar);
            } else {
                abwVar.g.a(dvmVar);
            }
        }
    }

    private final void a(Surface surface, boolean z) {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.a(surface, z);
        } else {
            zzd.zzez("Trying to set surface before player is initalized.");
        }
    }

    private final void b(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.v != f) {
            this.v = f;
            requestLayout();
        }
    }

    private static String c(String str, Exception exc) {
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

    private final abw n() {
        return new abw(this.f28611a.getContext(), this.g, this.f28611a);
    }

    private final String o() {
        return zzr.zzkv().zzq(this.f28611a.getContext(), this.f28611a.k().zzbrz);
    }

    private final boolean p() {
        abw abwVar = this.i;
        return (abwVar == null || abwVar.g == null || this.l) ? false : true;
    }

    private final boolean q() {
        return p() && this.m != 1;
    }

    private final void r() {
        String str;
        if (this.i == null && (str = this.j) != null && this.h != null) {
            if (str.startsWith("cache:")) {
                acu b2 = this.f28611a.b(this.j);
                if (b2 instanceof adf) {
                    abw c2 = ((adf) b2).c();
                    this.i = c2;
                    if (c2.g == null) {
                        zzd.zzez("Precached video player has been released.");
                        return;
                    }
                } else if (b2 instanceof adg) {
                    adg adgVar = (adg) b2;
                    String o = o();
                    ByteBuffer c3 = adgVar.c();
                    boolean z = adgVar.e;
                    String str2 = adgVar.f23145d;
                    if (str2 == null) {
                        zzd.zzez("Stream cache URL is null.");
                        return;
                    }
                    abw n = n();
                    this.i = n;
                    n.a(new Uri[]{Uri.parse(str2)}, o, c3, z);
                } else {
                    String valueOf = String.valueOf(this.j);
                    zzd.zzez(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                    return;
                }
            } else {
                this.i = n();
                String o2 = o();
                Uri[] uriArr = new Uri[this.k.length];
                int i = 0;
                while (true) {
                    String[] strArr = this.k;
                    if (i >= strArr.length) {
                        break;
                    }
                    uriArr[i] = Uri.parse(strArr[i]);
                    i++;
                }
                this.i.a(uriArr, o2);
            }
            this.i.h = this;
            a(this.h, false);
            if (this.i.g != null) {
                int a2 = this.i.g.a();
                this.m = a2;
                if (a2 == 3) {
                    s();
                }
            }
        }
    }

    private final void s() {
        if (!this.p) {
            this.p = true;
            zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abg

                /* renamed from: a  reason: collision with root package name */
                private final zzbcv f23047a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23047a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.f23047a;
                    if (zzbcvVar.f28612d != null) {
                        zzbcvVar.f28612d.b();
                    }
                }
            });
            m();
            this.e.a();
            if (this.q) {
                c();
            }
        }
    }

    private final void t() {
        b(this.r, this.s);
    }

    private final void u() {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.a(true);
        }
    }

    private final void v() {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.a(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final String a() {
        String str = this.o ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(float f, float f2) {
        aaz aazVar = this.n;
        if (aazVar != null) {
            aazVar.a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(int i) {
        if (q()) {
            this.i.g.a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void a(int i, int i2) {
        this.r = i;
        this.s = i2;
        t();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(aak aakVar) {
        this.f28612d = aakVar;
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void a(String str, Exception exc) {
        final String c2 = c(str, exc);
        String valueOf = String.valueOf(c2);
        zzd.zzez(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.l = true;
        if (this.g.f23027a) {
            v();
        }
        zzj.zzegq.post(new Runnable(this, c2) { // from class: com.google.android.gms.internal.ads.abh

            /* renamed from: a  reason: collision with root package name */
            private final zzbcv f23048a;

            /* renamed from: b  reason: collision with root package name */
            private final String f23049b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23048a = this;
                this.f23049b = c2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f23048a;
                String str2 = this.f23049b;
                if (zzbcvVar.f28612d != null) {
                    zzbcvVar.f28612d.a("ExoPlayerAdapter error", str2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.j = str;
            this.k = (String[]) Arrays.copyOf(strArr, strArr.length);
            r();
        }
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void a(final boolean z, final long j) {
        if (this.f28611a != null) {
            zd.e.execute(new Runnable(this, z, j) { // from class: com.google.android.gms.internal.ads.abr

                /* renamed from: a  reason: collision with root package name */
                private final zzbcv f23066a;

                /* renamed from: b  reason: collision with root package name */
                private final boolean f23067b;

                /* renamed from: c  reason: collision with root package name */
                private final long f23068c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23066a = this;
                    this.f23067b = z;
                    this.f23068c = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.f23066a;
                    zzbcvVar.f28611a.a(this.f23067b, this.f23068c);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void b() {
        if (p()) {
            this.i.g.c();
            if (this.i != null) {
                a((Surface) null, true);
                abw abwVar = this.i;
                if (abwVar != null) {
                    abwVar.h = null;
                    this.i.a();
                    this.i = null;
                }
                this.m = 1;
                this.l = false;
                this.p = false;
                this.q = false;
            }
        }
        this.e.f23036a = false;
        this.f28606c.c();
        this.e.b();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void b(int i) {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.f23079d.a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void b(String str, Exception exc) {
        final String c2 = c(str, exc);
        String valueOf = String.valueOf(c2);
        zzd.zzez(valueOf.length() != 0 ? "ExoPlayerAdapter exception: ".concat(valueOf) : new String("ExoPlayerAdapter exception: "));
        zzj.zzegq.post(new Runnable(this, c2) { // from class: com.google.android.gms.internal.ads.abj

            /* renamed from: a  reason: collision with root package name */
            private final zzbcv f23052a;

            /* renamed from: b  reason: collision with root package name */
            private final String f23053b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23052a = this;
                this.f23053b = c2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f23052a;
                String str2 = this.f23053b;
                if (zzbcvVar.f28612d != null) {
                    zzbcvVar.f28612d.b("ExoPlayerAdapter exception", str2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void c() {
        if (q()) {
            if (this.g.f23027a) {
                u();
            }
            this.i.g.a(true);
            this.e.c();
            this.f28606c.b();
            this.f28605b.f23019a = true;
            zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abl

                /* renamed from: a  reason: collision with root package name */
                private final zzbcv f23055a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23055a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.f23055a;
                    if (zzbcvVar.f28612d != null) {
                        zzbcvVar.f28612d.c();
                    }
                }
            });
            return;
        }
        this.q = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void c(int i) {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.f23079d.b(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void d() {
        if (q()) {
            if (this.g.f23027a) {
                v();
            }
            this.i.g.a(false);
            this.e.f23036a = false;
            this.f28606c.c();
            zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abk

                /* renamed from: a  reason: collision with root package name */
                private final zzbcv f23054a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23054a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.f23054a;
                    if (zzbcvVar.f28612d != null) {
                        zzbcvVar.f28612d.d();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void d(int i) {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.f23079d.c(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int e() {
        if (q()) {
            return (int) this.i.g.f();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void e(int i) {
        abw abwVar = this.i;
        if (abwVar != null) {
            abwVar.f23079d.d(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int f() {
        if (q()) {
            return (int) this.i.g.g();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void f(int i) {
        abw abwVar = this.i;
        if (abwVar != null) {
            for (WeakReference<abq> weakReference : abwVar.m) {
                abq abqVar = weakReference.get();
                if (abqVar != null) {
                    abqVar.f23064a = i;
                    for (Socket socket : abqVar.f23065b) {
                        if (!socket.isClosed()) {
                            try {
                                socket.setReceiveBufferSize(abqVar.f23064a);
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
    public final int g() {
        return this.r;
    }

    @Override // com.google.android.gms.internal.ads.acg
    public final void g(int i) {
        if (this.m != i) {
            this.m = i;
            if (i == 3) {
                s();
            } else if (i == 4) {
                if (this.g.f23027a) {
                    v();
                }
                this.e.f23036a = false;
                this.f28606c.c();
                zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abf

                    /* renamed from: a  reason: collision with root package name */
                    private final zzbcv f23046a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23046a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbcv zzbcvVar = this.f23046a;
                        if (zzbcvVar.f28612d != null) {
                            zzbcvVar.f28612d.e();
                        }
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int h() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long i() {
        abw abwVar = this.i;
        if (abwVar != null) {
            return abwVar.b();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long j() {
        abw abwVar = this.i;
        if (abwVar != null) {
            return abwVar.c();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long k() {
        abw abwVar = this.i;
        if (abwVar != null) {
            return abwVar.d();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int l() {
        abw abwVar = this.i;
        if (abwVar != null) {
            return abwVar.j;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz, com.google.android.gms.internal.ads.abe
    public final void m() {
        a(this.f28606c.a(), false);
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.v;
        int i4 = measuredWidth;
        int i5 = measuredHeight;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            i4 = measuredWidth;
            i5 = measuredHeight;
            if (this.n == null) {
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
        aaz aazVar = this.n;
        if (aazVar != null) {
            aazVar.a(i4, i5);
        }
        if (Build.VERSION.SDK_INT == 16) {
            int i6 = this.t;
            if (((i6 > 0 && i6 != i4) || ((i3 = this.u) > 0 && i3 != i5)) && this.f && p()) {
                dvl dvlVar = this.i.g;
                if (dvlVar.g() > 0 && !dvlVar.b()) {
                    a(BitmapDescriptorFactory.HUE_RED, true);
                    dvlVar.a(true);
                    long g = dvlVar.g();
                    long a2 = zzr.zzlc().a();
                    while (p() && dvlVar.g() == g && zzr.zzlc().a() - a2 <= 250) {
                    }
                    dvlVar.a(false);
                    m();
                }
            }
            this.t = i4;
            this.u = i5;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = surfaceTexture;
        if (this.o) {
            aaz aazVar = new aaz(getContext());
            this.n = aazVar;
            aazVar.a(surfaceTexture, i, i2);
            this.n.start();
            surfaceTexture2 = this.n.c();
            if (surfaceTexture2 == null) {
                this.n.b();
                this.n = null;
                surfaceTexture2 = surfaceTexture;
            }
        }
        Surface surface = new Surface(surfaceTexture2);
        this.h = surface;
        if (this.i == null) {
            r();
        } else {
            a(surface, true);
            if (!this.g.f23027a) {
                u();
            }
        }
        if (this.r == 0 || this.s == 0) {
            b(i, i2);
        } else {
            t();
        }
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abn

            /* renamed from: a  reason: collision with root package name */
            private final zzbcv f23059a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23059a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f23059a;
                if (zzbcvVar.f28612d != null) {
                    zzbcvVar.f28612d.a();
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        d();
        aaz aazVar = this.n;
        if (aazVar != null) {
            aazVar.b();
            this.n = null;
        }
        if (this.i != null) {
            v();
            Surface surface = this.h;
            if (surface != null) {
                surface.release();
            }
            this.h = null;
            a((Surface) null, true);
        }
        zzj.zzegq.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.abp

            /* renamed from: a  reason: collision with root package name */
            private final zzbcv f23062a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23062a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f23062a;
                if (zzbcvVar.f28612d != null) {
                    zzbcvVar.f28612d.f();
                }
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        aaz aazVar = this.n;
        if (aazVar != null) {
            aazVar.a(i, i2);
        }
        zzj.zzegq.post(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.abm

            /* renamed from: a  reason: collision with root package name */
            private final zzbcv f23056a;

            /* renamed from: b  reason: collision with root package name */
            private final int f23057b;

            /* renamed from: c  reason: collision with root package name */
            private final int f23058c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23056a = this;
                this.f23057b = i;
                this.f23058c = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f23056a;
                int i3 = this.f23057b;
                int i4 = this.f23058c;
                if (zzbcvVar.f28612d != null) {
                    zzbcvVar.f28612d.a(i3, i4);
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.e.b(this);
        this.f28605b.a(surfaceTexture, this.f28612d);
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzd.zzed(sb.toString());
        zzj.zzegq.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.abo

            /* renamed from: a  reason: collision with root package name */
            private final zzbcv f23060a;

            /* renamed from: b  reason: collision with root package name */
            private final int f23061b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23060a = this;
                this.f23061b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.f23060a;
                int i2 = this.f23061b;
                if (zzbcvVar.f28612d != null) {
                    zzbcvVar.f28612d.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void setVideoPath(String str) {
        if (str != null) {
            this.j = str;
            this.k = new String[]{str};
            r();
        }
    }
}
