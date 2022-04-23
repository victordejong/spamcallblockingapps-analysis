package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdm.class */
public final class bdm extends dy implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ben {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f24216a = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, "3010"};

    /* renamed from: b  reason: collision with root package name */
    FrameLayout f24217b;

    /* renamed from: c  reason: collision with root package name */
    View f24218c;

    /* renamed from: d  reason: collision with root package name */
    private final String f24219d;
    private FrameLayout f;
    private dbs g;
    private bcf i;
    private eec j;
    private dq l;
    private boolean m;
    private Map<String, WeakReference<View>> e = new HashMap();
    private b k = null;
    private boolean n = false;
    private final int h = 204890000;

    public bdm(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.f24217b = frameLayout;
        this.f = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f24219d = str;
        zzr.zzls();
        zx.a((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzls();
        zx.a((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.g = zd.e;
        this.j = new eec(this.f24217b.getContext(), this.f24217b);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final void k() {
        synchronized (this) {
            this.g.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bdl

                /* renamed from: a  reason: collision with root package name */
                private final bdm f24215a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24215a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bdm bdmVar = this.f24215a;
                    if (bdmVar.f24218c == null) {
                        bdmVar.f24218c = new View(bdmVar.f24217b.getContext());
                        bdmVar.f24218c.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                    }
                    if (bdmVar.f24217b != bdmVar.f24218c.getParent()) {
                        bdmVar.f24217b.addView(bdmVar.f24218c);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final b a(String str) {
        b a2;
        synchronized (this) {
            a2 = d.a(a_(str));
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a() {
        synchronized (this) {
            if (!this.n) {
                bcf bcfVar = this.i;
                if (bcfVar != null) {
                    bcfVar.b(this);
                    this.i = null;
                }
                this.e.clear();
                this.f24217b.removeAllViews();
                this.f.removeAllViews();
                this.e = null;
                this.f24217b = null;
                this.f = null;
                this.f24218c = null;
                this.j = null;
                this.n = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(b bVar) {
        synchronized (this) {
            if (!this.n) {
                Object a2 = d.a(bVar);
                if (!(a2 instanceof bcf)) {
                    zzd.zzez("Not an instance of native engine. This is most likely a transient error");
                    return;
                }
                bcf bcfVar = this.i;
                if (bcfVar != null) {
                    bcfVar.b(this);
                }
                k();
                bcf bcfVar2 = (bcf) a2;
                this.i = bcfVar2;
                bcfVar2.a(this);
                this.i.c(this.f24217b);
                bcf bcfVar3 = this.i;
                FrameLayout frameLayout = this.f;
                b x = bcfVar3.f24159a.x();
                if (!(!bcfVar3.f24161c.d() || x == null || frameLayout == null)) {
                    qt zzlk = zzr.zzlk();
                    synchronized (qt.f28344a) {
                        if (((Boolean) ekb.e().a(aq.cT)).booleanValue() && qt.f28345b) {
                            try {
                                zzlk.f28347c.b(x, d.a(frameLayout));
                            } catch (RemoteException | NullPointerException e) {
                                za.zze("#007 Could not call remote method.", e);
                            }
                        }
                    }
                }
                if (this.m) {
                    this.i.q.a(this.l);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(b bVar, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(dq dqVar) {
        synchronized (this) {
            if (!this.n) {
                this.m = true;
                this.l = dqVar;
                bcf bcfVar = this.i;
                if (bcfVar != null) {
                    bcfVar.q.a(dqVar);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final void a(String str, View view) {
        synchronized (this) {
            if (!this.n) {
                if (view == null) {
                    this.e.remove(str);
                    return;
                }
                this.e.put(str, new WeakReference<>(view));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                    if (zzbn.zzdn(this.h)) {
                        view.setOnTouchListener(this);
                    }
                    view.setClickable(true);
                    view.setOnClickListener(this);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(String str, b bVar) {
        synchronized (this) {
            a(str, (View) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final View a_(String str) {
        synchronized (this) {
            if (this.n) {
                return null;
            }
            WeakReference<View> weakReference = this.e.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final FrameLayout b() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void b(b bVar) {
        synchronized (this) {
            this.i.a((View) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final /* synthetic */ View c() {
        return this.f24217b;
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void c(b bVar) {
        onTouch(this.f24217b, (MotionEvent) d.a(bVar));
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final eec d() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void d(b bVar) {
        synchronized (this) {
            if (!this.n) {
                this.k = bVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final Map<String, WeakReference<View>> e() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.e;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final Map<String, WeakReference<View>> f() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.e;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final Map<String, WeakReference<View>> g() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final String h() {
        String str;
        synchronized (this) {
            str = this.f24219d;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final b i() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final JSONObject j() {
        synchronized (this) {
            bcf bcfVar = this.i;
            if (bcfVar == null) {
                return null;
            }
            return bcfVar.a(this.f24217b, e(), f());
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            bcf bcfVar = this.i;
            if (bcfVar != null) {
                bcfVar.c();
                this.i.a(view, this.f24217b, e(), f(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            bcf bcfVar = this.i;
            if (bcfVar != null) {
                bcfVar.a(this.f24217b, e(), f(), bcf.b(this.f24217b));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            bcf bcfVar = this.i;
            if (bcfVar != null) {
                bcfVar.a(this.f24217b, e(), f(), bcf.b(this.f24217b));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            bcf bcfVar = this.i;
            if (bcfVar != null) {
                bcfVar.a(motionEvent, this.f24217b);
            }
        }
        return false;
    }
}
