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
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdm.class */
public final class bdm extends AbstractBinderC12432dy implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ben {

    /* renamed from: a */
    public static final String[] f43639a = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, "3010"};

    /* renamed from: b */
    FrameLayout f43640b;

    /* renamed from: c */
    View f43641c;

    /* renamed from: d */
    private final String f43642d;

    /* renamed from: f */
    private FrameLayout f43644f;

    /* renamed from: g */
    private dbs f43645g;

    /* renamed from: i */
    private bcf f43647i;

    /* renamed from: j */
    private eec f43648j;

    /* renamed from: l */
    private AbstractC12389dq f43650l;

    /* renamed from: m */
    private boolean f43651m;

    /* renamed from: e */
    private Map<String, WeakReference<View>> f43643e = new HashMap();

    /* renamed from: k */
    private AbstractC12126b f43649k = null;

    /* renamed from: n */
    private boolean f43652n = false;

    /* renamed from: h */
    private final int f43646h = 204890000;

    public bdm(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.f43640b = frameLayout;
        this.f43644f = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f43642d = str;
        zzr.zzls();
        C13111zx.m13890a((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzls();
        C13111zx.m13889a((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f43645g = C13091zd.f50122e;
        this.f43648j = new eec(this.f43640b.getContext(), this.f43640b);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    /* renamed from: k */
    private final void m18126k() {
        synchronized (this) {
            this.f43645g.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bdl

                /* renamed from: a */
                private final bdm f43638a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43638a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    bdm bdmVar = this.f43638a;
                    if (bdmVar.f43641c == null) {
                        bdmVar.f43641c = new View(bdmVar.f43640b.getContext());
                        bdmVar.f43641c.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                    }
                    if (bdmVar.f43640b != bdmVar.f43641c.getParent()) {
                        bdmVar.f43640b.addView(bdmVar.f43641c);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final AbstractC12126b mo14471a(String str) {
        AbstractC12126b m18979a;
        synchronized (this) {
            m18979a = BinderC12129d.m18979a(mo17928a_(str));
        }
        return m18979a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14475a() {
        synchronized (this) {
            if (this.f43652n) {
                return;
            }
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.m18218b(this);
                this.f43647i = null;
            }
            this.f43643e.clear();
            this.f43640b.removeAllViews();
            this.f43644f.removeAllViews();
            this.f43643e = null;
            this.f43640b = null;
            this.f43644f = null;
            this.f43641c = null;
            this.f43648j = null;
            this.f43652n = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14474a(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            if (this.f43652n) {
                return;
            }
            Object m18980a = BinderC12129d.m18980a(abstractC12126b);
            if (!(m18980a instanceof bcf)) {
                zzd.zzez("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.m18218b(this);
            }
            m18126k();
            bcf bcfVar2 = (bcf) m18980a;
            this.f43647i = bcfVar2;
            bcfVar2.m18228a(this);
            this.f43647i.m18215c(this.f43640b);
            bcf bcfVar3 = this.f43647i;
            FrameLayout frameLayout = this.f43644f;
            AbstractC12126b m18148x = bcfVar3.f43523a.m18148x();
            if (bcfVar3.f43525c.mo18139d() && m18148x != null && frameLayout != null) {
                C12862qt zzlk = zzr.zzlk();
                synchronized (C12862qt.f49750a) {
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42763cT)).booleanValue() && C12862qt.f49751b) {
                        try {
                            zzlk.f49753c.mo17199b(m18148x, BinderC12129d.m18979a(frameLayout));
                        } catch (RemoteException | NullPointerException e) {
                            C13088za.zze("#007 Could not call remote method.", e);
                        }
                    }
                }
            }
            if (this.f43651m) {
                this.f43647i.f43533q.m18205a(this.f43650l);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14473a(AbstractC12126b abstractC12126b, int i) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14472a(AbstractC12389dq abstractC12389dq) {
        synchronized (this) {
            if (this.f43652n) {
                return;
            }
            this.f43651m = true;
            this.f43650l = abstractC12389dq;
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.f43533q.m18205a(abstractC12389dq);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: a */
    public final void mo17929a(String str, View view) {
        synchronized (this) {
            if (this.f43652n) {
                return;
            }
            if (view == null) {
                this.f43643e.remove(str);
                return;
            }
            this.f43643e.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                if (zzbn.zzdn(this.f43646h)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14470a(String str, AbstractC12126b abstractC12126b) {
        synchronized (this) {
            mo17929a(str, (View) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: a_ */
    public final View mo17928a_(String str) {
        synchronized (this) {
            if (this.f43652n) {
                return null;
            }
            WeakReference<View> weakReference = this.f43643e.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: b */
    public final FrameLayout mo17927b() {
        return this.f43644f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: b */
    public final void mo14469b(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            this.f43647i.m18232a((View) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: c */
    public final /* synthetic */ View mo17926c() {
        return this.f43640b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: c */
    public final void mo14468c(AbstractC12126b abstractC12126b) {
        onTouch(this.f43640b, (MotionEvent) BinderC12129d.m18980a(abstractC12126b));
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: d */
    public final eec mo17925d() {
        return this.f43648j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: d */
    public final void mo14467d(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            if (this.f43652n) {
                return;
            }
            this.f43649k = abstractC12126b;
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: e */
    public final Map<String, WeakReference<View>> mo17924e() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f43643e;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: f */
    public final Map<String, WeakReference<View>> mo17923f() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f43643e;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: g */
    public final Map<String, WeakReference<View>> mo17922g() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: h */
    public final String mo17921h() {
        String str;
        synchronized (this) {
            str = this.f43642d;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: i */
    public final AbstractC12126b mo17920i() {
        return this.f43649k;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: j */
    public final JSONObject mo17919j() {
        synchronized (this) {
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                return bcfVar.m18230a(this.f43640b, mo17924e(), mo17923f());
            }
            return null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.m18217c();
                this.f43647i.m18231a(view, this.f43640b, mo17924e(), mo17923f(), false);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.m18229a(this.f43640b, mo17924e(), mo17923f(), bcf.m18219b(this.f43640b));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.m18229a(this.f43640b, mo17924e(), mo17923f(), bcf.m18219b(this.f43640b));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            bcf bcfVar = this.f43647i;
            if (bcfVar != null) {
                bcfVar.m18233a(motionEvent, this.f43640b);
            }
        }
        return false;
    }
}
