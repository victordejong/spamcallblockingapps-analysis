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
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emt.class */
public final class emt {

    /* renamed from: a */
    public final VideoController f49198a;

    /* renamed from: b */
    public AdListener f49199b;

    /* renamed from: c */
    public AdSize[] f49200c;

    /* renamed from: d */
    public AppEventListener f49201d;

    /* renamed from: e */
    public com.google.android.gms.ads.doubleclick.AppEventListener f49202e;

    /* renamed from: f */
    public ekw f49203f;

    /* renamed from: g */
    public OnCustomRenderedAdLoadedListener f49204g;

    /* renamed from: h */
    public VideoOptions f49205h;

    /* renamed from: i */
    public OnPaidEventListener f49206i;

    /* renamed from: j */
    private final BinderC12743mj f49207j;

    /* renamed from: k */
    private final ejb f49208k;

    /* renamed from: l */
    private final AtomicBoolean f49209l;

    /* renamed from: m */
    private final eka f49210m;

    /* renamed from: n */
    private eir f49211n;

    /* renamed from: o */
    private String f49212o;

    /* renamed from: p */
    private ViewGroup f49213p;

    /* renamed from: q */
    private int f49214q;

    /* renamed from: r */
    private boolean f49215r;

    public emt(ViewGroup viewGroup) {
        this(viewGroup, null, false, ejb.f49085a, 0);
    }

    public emt(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, ejb.f49085a, i);
    }

    public emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, ejb.f49085a, 0);
    }

    public emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, ejb.f49085a, i);
    }

    private emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, ejb ejbVar, int i) {
        this(viewGroup, attributeSet, z, ejbVar, null, i);
    }

    private emt(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, ejb ejbVar, ekw ekwVar, int i) {
        zzvt zzvtVar;
        this.f49207j = new BinderC12743mj();
        this.f49198a = new VideoController();
        this.f49210m = new emw(this);
        this.f49213p = viewGroup;
        this.f49208k = ejbVar;
        this.f49203f = null;
        this.f49209l = new AtomicBoolean(false);
        this.f49214q = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzwe zzweVar = new zzwe(context, attributeSet);
                if (!z && zzweVar.f50247a.length != 1) {
                    throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
                }
                this.f49200c = zzweVar.f50247a;
                this.f49212o = zzweVar.f50248b;
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                ekb.m14835a();
                AdSize adSize = this.f49200c[0];
                int i2 = this.f49214q;
                if (adSize.equals(AdSize.INVALID)) {
                    zzvtVar = zzvt.zzqn();
                } else {
                    zzvtVar = new zzvt(context, adSize);
                    zzvtVar.zzciu = m14773a(i2);
                }
                C13077yq.m13945a(viewGroup, zzvtVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                ekb.m14835a();
                C13077yq.m13943a(viewGroup, new zzvt(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    /* renamed from: a */
    private static zzvt m14772a(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzvt.zzqn();
            }
        }
        zzvt zzvtVar = new zzvt(context, adSizeArr);
        zzvtVar.zzciu = m14773a(i);
        return zzvtVar;
    }

    /* renamed from: a */
    private static boolean m14773a(int i) {
        return i == 1;
    }

    /* renamed from: a */
    public final void m14774a() {
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.destroy();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14771a(AdListener adListener) {
        this.f49199b = adListener;
        this.f49210m.m14836a(adListener);
    }

    /* renamed from: a */
    public final void m14770a(VideoOptions videoOptions) {
        this.f49205h = videoOptions;
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.zza(videoOptions == null ? null : new zzaaz(videoOptions));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14769a(com.google.android.gms.ads.doubleclick.AppEventListener appEventListener) {
        try {
            this.f49202e = appEventListener;
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.zza(appEventListener != null ? new ejg(this.f49202e) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14768a(eir eirVar) {
        try {
            this.f49211n = eirVar;
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.zza(eirVar != null ? new eis(eirVar) : null);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14766a(emr emrVar) {
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                if ((this.f49200c == null || this.f49212o == null) && ekwVar == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.f49213p.getContext();
                zzvt m14772a = m14772a(context, this.f49200c, this.f49214q);
                ekw m14843a = "search_v2".equals(m14772a.zzadd) ? new ejt(ekb.m14834b(), context, m14772a, this.f49212o).m14843a(context, false) : new ejl(ekb.m14834b(), context, m14772a, this.f49212o, this.f49207j).m14843a(context, false);
                this.f49203f = m14843a;
                m14843a.zza(new eiu(this.f49210m));
                if (this.f49211n != null) {
                    this.f49203f.zza(new eis(this.f49211n));
                }
                if (this.f49201d != null) {
                    this.f49203f.zza(new eew(this.f49201d));
                }
                if (this.f49202e != null) {
                    this.f49203f.zza(new ejg(this.f49202e));
                }
                if (this.f49204g != null) {
                    this.f49203f.zza(new BinderC12251bs(this.f49204g));
                }
                if (this.f49205h != null) {
                    this.f49203f.zza(new zzaaz(this.f49205h));
                }
                this.f49203f.zza(new BinderC12896s(this.f49206i));
                this.f49203f.setManualImpressionsEnabled(this.f49215r);
                try {
                    AbstractC12126b zzki = this.f49203f.zzki();
                    if (zzki != null) {
                        this.f49213p.addView((View) BinderC12129d.m18980a(zzki));
                    }
                } catch (RemoteException e) {
                    C13088za.zze("#007 Could not call remote method.", e);
                }
            }
            if (!this.f49203f.zza(ejb.m14863a(this.f49213p.getContext(), emrVar))) {
                return;
            }
            this.f49207j.f49559a = emrVar.f49184h;
        } catch (RemoteException e2) {
            C13088za.zze("#007 Could not call remote method.", e2);
        }
    }

    /* renamed from: a */
    public final void m14765a(String str) {
        if (this.f49212o == null) {
            this.f49212o = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    /* renamed from: a */
    public final void m14764a(boolean z) {
        this.f49215r = z;
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.setManualImpressionsEnabled(z);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public final void m14763a(AdSize... adSizeArr) {
        if (this.f49200c == null) {
            m14761b(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    /* renamed from: a */
    public final boolean m14767a(ekw ekwVar) {
        if (ekwVar == null) {
            return false;
        }
        try {
            AbstractC12126b zzki = ekwVar.zzki();
            if (zzki == null || ((View) BinderC12129d.m18980a(zzki)).getParent() != null) {
                return false;
            }
            this.f49213p.addView((View) BinderC12129d.m18980a(zzki));
            this.f49203f = ekwVar;
            return true;
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: b */
    public final AdSize m14762b() {
        zzvt zzkk;
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar != null && (zzkk = ekwVar.zzkk()) != null) {
                return zzkk.zzqo();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.f49200c;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    /* renamed from: b */
    public final void m14761b(AdSize... adSizeArr) {
        this.f49200c = adSizeArr;
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar != null) {
                ekwVar.zza(m14772a(this.f49213p.getContext(), this.f49200c, this.f49214q));
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        this.f49213p.requestLayout();
    }

    /* renamed from: c */
    public final String m14760c() {
        ekw ekwVar;
        if (this.f49212o == null && (ekwVar = this.f49203f) != null) {
            try {
                this.f49212o = ekwVar.getAdUnitId();
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
        return this.f49212o;
    }

    /* renamed from: d */
    public final void m14759d() {
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.pause();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: e */
    public final void m14758e() {
        if (this.f49209l.getAndSet(true)) {
            return;
        }
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.zzkj();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: f */
    public final void m14757f() {
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return;
            }
            ekwVar.resume();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: g */
    public final String m14756g() {
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return null;
            }
            return ekwVar.zzkl();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    /* renamed from: h */
    public final boolean m14755h() {
        try {
            ekw ekwVar = this.f49203f;
            if (ekwVar == null) {
                return false;
            }
            return ekwVar.isLoading();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    /* renamed from: i */
    public final ResponseInfo m14754i() {
        emj emjVar;
        try {
            ekw ekwVar = this.f49203f;
            emjVar = null;
            if (ekwVar != null) {
                emjVar = ekwVar.zzkm();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            emjVar = null;
        }
        return ResponseInfo.zza(emjVar);
    }

    /* renamed from: j */
    public final emk m14753j() {
        ekw ekwVar = this.f49203f;
        if (ekwVar == null) {
            return null;
        }
        try {
            return ekwVar.getVideoController();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
