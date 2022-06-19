package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdo.class */
public final class bdo {

    /* renamed from: a */
    final zzf f43655a;

    /* renamed from: b */
    final cpo f43656b;

    /* renamed from: c */
    final bcv f43657c;

    /* renamed from: d */
    final bcr f43658d;

    /* renamed from: e */
    final bdw f43659e;

    /* renamed from: f */
    final Executor f43660f;

    /* renamed from: g */
    final zzaei f43661g;

    /* renamed from: h */
    final bcm f43662h;

    /* renamed from: i */
    private final bef f43663i;

    /* renamed from: j */
    private final Executor f43664j;

    public bdo(zzf zzfVar, cpo cpoVar, bcv bcvVar, bcr bcrVar, bdw bdwVar, bef befVar, Executor executor, Executor executor2, bcm bcmVar) {
        this.f43655a = zzfVar;
        this.f43656b = cpoVar;
        this.f43661g = cpoVar.f46329i;
        this.f43657c = bcvVar;
        this.f43658d = bcrVar;
        this.f43659e = bdwVar;
        this.f43663i = befVar;
        this.f43664j = executor;
        this.f43660f = executor2;
        this.f43662h = bcmVar;
    }

    /* renamed from: a */
    public static void m18124a(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    /* renamed from: a */
    public final void m18123a(ben benVar) {
        this.f43664j.execute(new Runnable(this, benVar) { // from class: com.google.android.gms.internal.ads.bdn

            /* renamed from: a */
            private final bdo f43653a;

            /* renamed from: b */
            private final ben f43654b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43653a = this;
                this.f43654b = benVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ViewGroup viewGroup;
                zzaec zzaecVar;
                ViewGroup viewGroup2;
                AbstractC12126b abstractC12126b;
                Drawable drawable;
                final bdo bdoVar = this.f43653a;
                ben benVar2 = this.f43654b;
                if (bdoVar.f43657c.mo18138e() || bdoVar.f43657c.mo18140c()) {
                    for (int i = 0; i < 2; i++) {
                        View mo17928a_ = benVar2.mo17928a_(new String[]{NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"}[i]);
                        if (mo17928a_ != null && (mo17928a_ instanceof ViewGroup)) {
                            viewGroup = (ViewGroup) mo17928a_;
                            break;
                        }
                    }
                }
                viewGroup = null;
                boolean z = viewGroup != null;
                Context context = benVar2.mo17926c().getContext();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (bdoVar.f43658d.m18168d() != null) {
                    View m18168d = bdoVar.f43658d.m18168d();
                    if (bdoVar.f43661g == null) {
                        zzaecVar = m18168d;
                    } else {
                        zzaecVar = m18168d;
                        if (!z) {
                            bdo.m18124a(layoutParams, bdoVar.f43661g.zzbof);
                            m18168d.setLayoutParams(layoutParams);
                            zzaecVar = m18168d;
                        }
                    }
                } else if (!(bdoVar.f43658d.m18170c() instanceof BinderC12321dd)) {
                    zzaecVar = null;
                } else {
                    BinderC12321dd binderC12321dd = (BinderC12321dd) bdoVar.f43658d.m18170c();
                    if (!z) {
                        bdo.m18124a(layoutParams, binderC12321dd.f46964g);
                    }
                    zzaecVar = new zzaec(context, binderC12321dd, layoutParams);
                    zzaecVar.setContentDescription((CharSequence) ekb.m14831e().m18571a(C12187aq.f42715bY));
                }
                if (zzaecVar != null) {
                    if (zzaecVar.getParent() instanceof ViewGroup) {
                        ((ViewGroup) zzaecVar.getParent()).removeView(zzaecVar);
                    }
                    if (z) {
                        viewGroup.removeAllViews();
                        viewGroup.addView(zzaecVar);
                    } else {
                        AdChoicesView adChoicesView = new AdChoicesView(benVar2.mo17926c().getContext());
                        adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        adChoicesView.addView(zzaecVar);
                        FrameLayout mo17927b = benVar2.mo17927b();
                        if (mo17927b != null) {
                            mo17927b.addView(adChoicesView);
                        }
                    }
                    benVar2.mo17929a(benVar2.mo17921h(), zzaecVar);
                }
                String[] strArr = bdm.f43639a;
                int length = strArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        viewGroup2 = null;
                        break;
                    }
                    View mo17928a_2 = benVar2.mo17928a_(strArr[i2]);
                    if (mo17928a_2 instanceof ViewGroup) {
                        viewGroup2 = (ViewGroup) mo17928a_2;
                        break;
                    }
                    i2++;
                }
                final ViewGroup viewGroup3 = viewGroup2;
                bdoVar.f43660f.execute(new Runnable(bdoVar, viewGroup3) { // from class: com.google.android.gms.internal.ads.bdq

                    /* renamed from: a */
                    private final bdo f43668a;

                    /* renamed from: b */
                    private final ViewGroup f43669b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43668a = bdoVar;
                        this.f43669b = viewGroup3;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        bdo bdoVar2 = this.f43668a;
                        boolean z2 = this.f43669b != null;
                        if (bdoVar2.f43658d.m18159m() != null) {
                            if (2 == bdoVar2.f43658d.m18198a() || 1 == bdoVar2.f43658d.m18198a()) {
                                bdoVar2.f43655a.zza(bdoVar2.f43656b.f46326f, String.valueOf(bdoVar2.f43658d.m18198a()), z2);
                            } else if (6 != bdoVar2.f43658d.m18198a()) {
                            } else {
                                bdoVar2.f43655a.zza(bdoVar2.f43656b.f46326f, "2", z2);
                                bdoVar2.f43655a.zza(bdoVar2.f43656b.f46326f, "1", z2);
                            }
                        }
                    }
                });
                if (viewGroup2 != null) {
                    if (bdoVar.m18125a(viewGroup2)) {
                        if (bdoVar.f43658d.m18150v() == null) {
                            return;
                        }
                        bdoVar.f43658d.m18150v().mo13779a(new bdp(bdoVar, benVar2, viewGroup2));
                        return;
                    }
                    viewGroup2.removeAllViews();
                    View mo17926c = benVar2.mo17926c();
                    Context context2 = mo17926c != null ? mo17926c.getContext() : null;
                    if (context2 == null) {
                        return;
                    }
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42714bX)).booleanValue()) {
                        AbstractC12389dq m18206a = bdoVar.f43662h.m18206a();
                        if (m18206a == null) {
                            return;
                        }
                        try {
                            abstractC12126b = m18206a.mo15785b();
                        } catch (RemoteException e) {
                            zzd.zzez("Could not get main image drawable");
                            return;
                        }
                    } else {
                        AbstractC12394dr m18165g = bdoVar.f43658d.m18165g();
                        if (m18165g == null) {
                            return;
                        }
                        try {
                            abstractC12126b = m18165g.mo15752a();
                        } catch (RemoteException e2) {
                            zzd.zzez("Could not get drawable from image");
                            return;
                        }
                    }
                    if (abstractC12126b == null || (drawable = (Drawable) BinderC12129d.m18980a(abstractC12126b)) == null) {
                        return;
                    }
                    ImageView imageView = new ImageView(context2);
                    imageView.setImageDrawable(drawable);
                    AbstractC12126b abstractC12126b2 = null;
                    if (benVar2 != null) {
                        abstractC12126b2 = benVar2.mo17920i();
                    }
                    if (abstractC12126b2 == null || !((Boolean) ekb.m14831e().m18571a(C12187aq.f42808dL)).booleanValue()) {
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    } else {
                        imageView.setScaleType((ImageView.ScaleType) BinderC12129d.m18980a(abstractC12126b2));
                    }
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                }
            }
        });
    }

    /* renamed from: a */
    public final boolean m18125a(ViewGroup viewGroup) {
        View m18159m = this.f43658d.m18159m();
        if (m18159m == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (m18159m.getParent() instanceof ViewGroup) {
            ((ViewGroup) m18159m.getParent()).removeView(m18159m);
        }
        viewGroup.addView(m18159m, ((Boolean) ekb.m14831e().m18571a(C12187aq.f42770ca)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    /* renamed from: b */
    public final void m18122b(ben benVar) {
        if (benVar == null) {
            return;
        }
        Context context = benVar.mo17926c().getContext();
        if (!zzbn.zza(context, this.f43657c.f43603a)) {
            return;
        }
        if (!(context instanceof Activity)) {
            zzd.zzdz("Activity context is needed for policy validator.");
        } else if (this.f43663i == null || benVar.mo17927b() == null) {
        } else {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                FrameLayout mo17927b = benVar.mo17927b();
                bef befVar = this.f43663i;
                adt m17828a = befVar.f43706a.m17828a(zzvt.zzqk(), null, null);
                m17828a.mo13731s().setVisibility(4);
                m17828a.mo13731s().setContentDescription("policy_validator");
                m17828a.mo13772a("/sendMessageToSdk", new AbstractC12607hi(befVar) { // from class: com.google.android.gms.internal.ads.bee

                    /* renamed from: a */
                    private final bef f43705a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43705a = befVar;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                    /* renamed from: a */
                    public final void mo14250a(Object obj, Map map) {
                        this.f43705a.f43707b.m17868a("sendMessageToNativeJs", map);
                    }
                });
                m17828a.mo13772a("/hideValidatorOverlay", new AbstractC12607hi(befVar, windowManager, mo17927b) { // from class: com.google.android.gms.internal.ads.beh

                    /* renamed from: a */
                    private final bef f43712a;

                    /* renamed from: b */
                    private final WindowManager f43713b;

                    /* renamed from: c */
                    private final View f43714c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43712a = befVar;
                        this.f43713b = windowManager;
                        this.f43714c = mo17927b;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                    /* renamed from: a */
                    public final void mo14250a(Object obj, Map map) {
                        bef befVar2 = this.f43712a;
                        WindowManager windowManager2 = this.f43713b;
                        View view = this.f43714c;
                        adt adtVar = (adt) obj;
                        zzd.zzdz("Hide native ad policy validator overlay.");
                        adtVar.mo13731s().setVisibility(8);
                        if (adtVar.mo13731s().getWindowToken() != null) {
                            windowManager2.removeView(adtVar.mo13731s());
                        }
                        adtVar.destroy();
                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                        if (befVar2.f43708c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
                            return;
                        }
                        viewTreeObserver.removeOnScrollChangedListener(befVar2.f43708c);
                    }
                });
                m17828a.mo13772a("/open", new C12615hq(null, null, null, null, null));
                befVar.f43707b.m17866a(new WeakReference(m17828a), "/loadNativeAdPolicyViolations", new AbstractC12607hi(befVar, mo17927b, windowManager) { // from class: com.google.android.gms.internal.ads.beg

                    /* renamed from: a */
                    private final bef f43709a;

                    /* renamed from: b */
                    private final View f43710b;

                    /* renamed from: c */
                    private final WindowManager f43711c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f43709a = befVar;
                        this.f43710b = mo17927b;
                        this.f43711c = windowManager;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                    /* renamed from: a */
                    public final void mo14250a(Object obj, final Map map) {
                        final bef befVar2 = this.f43709a;
                        final View view = this.f43710b;
                        final WindowManager windowManager2 = this.f43711c;
                        final adt adtVar = (adt) obj;
                        adtVar.mo13808B().mo18789a(new afd(befVar2, map) { // from class: com.google.android.gms.internal.ads.bel

                            /* renamed from: a */
                            private final bef f43724a;

                            /* renamed from: b */
                            private final Map f43725b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f43724a = befVar2;
                                this.f43725b = map;
                            }

                            @Override // com.google.android.gms.internal.ads.afd
                            public final void zzam(boolean z) {
                                bef befVar3 = this.f43724a;
                                Map map2 = this.f43725b;
                                HashMap hashMap = new HashMap();
                                hashMap.put("messageType", "validatorHtmlLoaded");
                                hashMap.put("id", (String) map2.get("id"));
                                befVar3.f43707b.m17868a("sendMessageToNativeJs", hashMap);
                            }
                        });
                        if (map != null) {
                            Context context2 = view.getContext();
                            int m17930a = bef.m17930a(context2, (String) map.get("validator_width"), ((Integer) ekb.m14831e().m18571a(C12187aq.f42857eH)).intValue());
                            int m17930a2 = bef.m17930a(context2, (String) map.get("validator_height"), ((Integer) ekb.m14831e().m18571a(C12187aq.f42858eI)).intValue());
                            int m17930a3 = bef.m17930a(context2, (String) map.get("validator_x"), 0);
                            int m17930a4 = bef.m17930a(context2, (String) map.get("validator_y"), 0);
                            adtVar.mo13782a(afh.m18776a(m17930a, m17930a2));
                            try {
                                adtVar.mo13732r().getSettings().setUseWideViewPort(((Boolean) ekb.m14831e().m18571a(C12187aq.f42859eJ)).booleanValue());
                                adtVar.mo13732r().getSettings().setLoadWithOverviewMode(((Boolean) ekb.m14831e().m18571a(C12187aq.f42860eK)).booleanValue());
                            } catch (NullPointerException e) {
                            }
                            final WindowManager.LayoutParams zzaaj = zzbn.zzaaj();
                            zzaaj.x = m17930a3;
                            zzaaj.y = m17930a4;
                            windowManager2.updateViewLayout(adtVar.mo13731s(), zzaaj);
                            final String str = (String) map.get("orientation");
                            Rect rect = new Rect();
                            if (view.getGlobalVisibleRect(rect)) {
                                final int i = (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - m17930a4;
                                befVar2.f43708c = new ViewTreeObserver.OnScrollChangedListener(view, adtVar, str, zzaaj, i, windowManager2) { // from class: com.google.android.gms.internal.ads.bei

                                    /* renamed from: a */
                                    private final View f43715a;

                                    /* renamed from: b */
                                    private final adt f43716b;

                                    /* renamed from: c */
                                    private final String f43717c;

                                    /* renamed from: d */
                                    private final WindowManager.LayoutParams f43718d;

                                    /* renamed from: e */
                                    private final int f43719e;

                                    /* renamed from: f */
                                    private final WindowManager f43720f;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f43715a = view;
                                        this.f43716b = adtVar;
                                        this.f43717c = str;
                                        this.f43718d = zzaaj;
                                        this.f43719e = i;
                                        this.f43720f = windowManager2;
                                    }

                                    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                                    public final void onScrollChanged() {
                                        View view2 = this.f43715a;
                                        adt adtVar2 = this.f43716b;
                                        String str2 = this.f43717c;
                                        WindowManager.LayoutParams layoutParams = this.f43718d;
                                        int i2 = this.f43719e;
                                        WindowManager windowManager3 = this.f43720f;
                                        Rect rect2 = new Rect();
                                        if (!view2.getGlobalVisibleRect(rect2) || adtVar2.mo13731s().getWindowToken() == null) {
                                            return;
                                        }
                                        if ("1".equals(str2) || "2".equals(str2)) {
                                            layoutParams.y = rect2.bottom - i2;
                                        } else {
                                            layoutParams.y = rect2.top - i2;
                                        }
                                        windowManager3.updateViewLayout(adtVar2.mo13731s(), layoutParams);
                                    }
                                };
                                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                                    viewTreeObserver.addOnScrollChangedListener(befVar2.f43708c);
                                }
                            }
                            String str2 = (String) map.get("overlay_url");
                            if (TextUtils.isEmpty(str2)) {
                                return;
                            }
                            adtVar.loadUrl(str2);
                        }
                    }
                });
                befVar.f43707b.m17866a(new WeakReference(m17828a), "/showValidatorOverlay", bej.f43721a);
                windowManager.addView(m17828a.mo13731s(), zzbn.zzaaj());
            } catch (zzbfu e) {
                zzd.zza("web view can not be obtained", e);
            }
        }
    }
}
