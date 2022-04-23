package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emt.class */
public final class emt {

    /* renamed from: a  reason: collision with root package name */
    public final VideoController f27956a;

    /* renamed from: b  reason: collision with root package name */
    public AdListener f27957b;

    /* renamed from: c  reason: collision with root package name */
    public AdSize[] f27958c;

    /* renamed from: d  reason: collision with root package name */
    public AppEventListener f27959d;
    public com.google.android.gms.ads.doubleclick.AppEventListener e;
    public ekw f;
    public OnCustomRenderedAdLoadedListener g;
    public VideoOptions h;
    public OnPaidEventListener i;
    private final mj j;
    private final ejb k;
    private final AtomicBoolean l;
    private final eka m;
    private eir n;
    private String o;
    private ViewGroup p;
    private int q;
    private boolean r;

    public emt(ViewGroup viewGroup) {
        this(viewGroup, null, false, ejb.f27877a, 0);
    }

    public emt(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, ejb.f27877a, i);
    }

    public emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, ejb.f27877a, 0);
    }

    public emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, ejb.f27877a, i);
    }

    private emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, ejb ejbVar, int i) {
        this(viewGroup, attributeSet, z, ejbVar, null, i);
    }

    private emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, ejb ejbVar, ekw ekwVar, int i) {
        zzvt zzvtVar;
        this.j = new mj();
        this.f27956a = new VideoController();
        this.m = new emw(this);
        this.p = viewGroup;
        this.k = ejbVar;
        this.f = null;
        this.l = new AtomicBoolean(false);
        this.q = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzwe zzweVar = new zzwe(context, attributeSet);
                if (!z && zzweVar.f28649a.length != 1) {
                    throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
                }
                this.f27958c = zzweVar.f28649a;
                this.o = zzweVar.f28650b;
                if (viewGroup.isInEditMode()) {
                    ekb.a();
                    AdSize adSize = this.f27958c[0];
                    int i2 = this.q;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzvtVar = zzvt.zzqn();
                    } else {
                        zzvtVar = new zzvt(context, adSize);
                        zzvtVar.zzciu = a(i2);
                    }
                    yq.a(viewGroup, zzvtVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                ekb.a();
                yq.a(viewGroup, new zzvt(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzvt a(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzvt.zzqn();
            }
        }
        zzvt zzvtVar = new zzvt(context, adSizeArr);
        zzvtVar.zzciu = a(i);
        return zzvtVar;
    }

    private static boolean a(int i) {
        return i == 1;
    }

    public final void a() {
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.destroy();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(AdListener adListener) {
        this.f27957b = adListener;
        this.m.a(adListener);
    }

    public final void a(VideoOptions videoOptions) {
        this.h = videoOptions;
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.zza(videoOptions == null ? null : new zzaaz(videoOptions));
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(com.google.android.gms.ads.doubleclick.AppEventListener appEventListener) {
        try {
            this.e = appEventListener;
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.zza(appEventListener != null ? new ejg(this.e) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(eir eirVar) {
        try {
            this.n = eirVar;
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.zza(eirVar != null ? new eis(eirVar) : null);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(emr emrVar) {
        try {
            ekw ekwVar = this.f;
            if (ekwVar == null) {
                if ((this.f27958c == null || this.o == null) && ekwVar == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.p.getContext();
                zzvt a2 = a(context, this.f27958c, this.q);
                ekw a3 = "search_v2".equals(a2.zzadd) ? new ejt(ekb.b(), context, a2, this.o).a(context, false) : new ejl(ekb.b(), context, a2, this.o, this.j).a(context, false);
                this.f = a3;
                a3.zza(new eiu(this.m));
                if (this.n != null) {
                    this.f.zza(new eis(this.n));
                }
                if (this.f27959d != null) {
                    this.f.zza(new eew(this.f27959d));
                }
                if (this.e != null) {
                    this.f.zza(new ejg(this.e));
                }
                if (this.g != null) {
                    this.f.zza(new bs(this.g));
                }
                if (this.h != null) {
                    this.f.zza(new zzaaz(this.h));
                }
                this.f.zza(new s(this.i));
                this.f.setManualImpressionsEnabled(this.r);
                try {
                    b zzki = this.f.zzki();
                    if (zzki != null) {
                        this.p.addView((View) d.a(zzki));
                    }
                } catch (RemoteException e) {
                    za.zze("#007 Could not call remote method.", e);
                }
            }
            if (this.f.zza(ejb.a(this.p.getContext(), emrVar))) {
                this.j.f28206a = emrVar.h;
            }
        } catch (RemoteException e2) {
            za.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void a(String str) {
        if (this.o == null) {
            this.o = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void a(boolean z) {
        this.r = z;
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.setManualImpressionsEnabled(z);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void a(AdSize... adSizeArr) {
        if (this.f27958c == null) {
            b(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final boolean a(ekw ekwVar) {
        if (ekwVar == null) {
            return false;
        }
        try {
            b zzki = ekwVar.zzki();
            if (zzki == null || ((View) d.a(zzki)).getParent() != null) {
                return false;
            }
            this.p.addView((View) d.a(zzki));
            this.f = ekwVar;
            return true;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final AdSize b() {
        zzvt zzkk;
        try {
            ekw ekwVar = this.f;
            if (!(ekwVar == null || (zzkk = ekwVar.zzkk()) == null)) {
                return zzkk.zzqo();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.f27958c;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final void b(AdSize... adSizeArr) {
        this.f27958c = adSizeArr;
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.zza(a(this.p.getContext(), this.f27958c, this.q));
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        this.p.requestLayout();
    }

    public final String c() {
        ekw ekwVar;
        if (this.o == null && (ekwVar = this.f) != null) {
            try {
                this.o = ekwVar.getAdUnitId();
            } catch (RemoteException e) {
                za.zze("#007 Could not call remote method.", e);
            }
        }
        return this.o;
    }

    public final void d() {
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.pause();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final void e() {
        if (!this.l.getAndSet(true)) {
            try {
                ekw ekwVar = this.f;
                if (ekwVar != null) {
                    ekwVar.zzkj();
                }
            } catch (RemoteException e) {
                za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void f() {
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                ekwVar.resume();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    public final String g() {
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                return ekwVar.zzkl();
            }
            return null;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final boolean h() {
        try {
            ekw ekwVar = this.f;
            if (ekwVar != null) {
                return ekwVar.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final ResponseInfo i() {
        emj emjVar;
        try {
            ekw ekwVar = this.f;
            emjVar = null;
            if (ekwVar != null) {
                emjVar = ekwVar.zzkm();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    public final emk j() {
        ekw ekwVar = this.f;
        if (ekwVar == null) {
            return null;
        }
        try {
            return ekwVar.getVideoController();
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
