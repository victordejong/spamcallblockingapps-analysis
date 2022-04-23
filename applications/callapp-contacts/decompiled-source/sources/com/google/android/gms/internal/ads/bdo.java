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
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdo.class */
public final class bdo {

    /* renamed from: a  reason: collision with root package name */
    final zzf f24222a;

    /* renamed from: b  reason: collision with root package name */
    final cpo f24223b;

    /* renamed from: c  reason: collision with root package name */
    final bcv f24224c;

    /* renamed from: d  reason: collision with root package name */
    final bcr f24225d;
    final bdw e;
    final Executor f;
    final zzaei g;
    final bcm h;
    private final bef i;
    private final Executor j;

    public bdo(zzf zzfVar, cpo cpoVar, bcv bcvVar, bcr bcrVar, bdw bdwVar, bef befVar, Executor executor, Executor executor2, bcm bcmVar) {
        this.f24222a = zzfVar;
        this.f24223b = cpoVar;
        this.g = cpoVar.i;
        this.f24224c = bcvVar;
        this.f24225d = bcrVar;
        this.e = bdwVar;
        this.i = befVar;
        this.j = executor;
        this.f = executor2;
        this.h = bcmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RelativeLayout.LayoutParams layoutParams, int i) {
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

    public final void a(final ben benVar) {
        this.j.execute(new Runnable(this, benVar) { // from class: com.google.android.gms.internal.ads.bdn

            /* renamed from: a  reason: collision with root package name */
            private final bdo f24220a;

            /* renamed from: b  reason: collision with root package name */
            private final ben f24221b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24220a = this;
                this.f24221b = benVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ViewGroup viewGroup;
                View view;
                final ViewGroup viewGroup2;
                b bVar;
                Drawable drawable;
                final bdo bdoVar = this.f24220a;
                ben benVar2 = this.f24221b;
                int i = 0;
                boolean z = true;
                b bVar2 = null;
                if (bdoVar.f24224c.e() || bdoVar.f24224c.c()) {
                    for (int i2 = 0; i2 < 2; i2++) {
                        View a_ = benVar2.a_(new String[]{NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"}[i2]);
                        if (a_ != null && (a_ instanceof ViewGroup)) {
                            viewGroup = (ViewGroup) a_;
                            break;
                        }
                    }
                }
                viewGroup = null;
                if (viewGroup == null) {
                    z = false;
                }
                Context context = benVar2.c().getContext();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (bdoVar.f24225d.d() != null) {
                    View d2 = bdoVar.f24225d.d();
                    if (bdoVar.g == null) {
                        view = d2;
                    } else {
                        view = d2;
                        if (!z) {
                            bdo.a(layoutParams, bdoVar.g.zzbof);
                            d2.setLayoutParams(layoutParams);
                            view = d2;
                        }
                    }
                } else if (!(bdoVar.f24225d.c() instanceof dd)) {
                    view = null;
                } else {
                    dd ddVar = (dd) bdoVar.f24225d.c();
                    if (!z) {
                        bdo.a(layoutParams, ddVar.g);
                    }
                    view = new zzaec(context, ddVar, layoutParams);
                    view.setContentDescription((CharSequence) ekb.e().a(aq.bY));
                }
                if (view != null) {
                    if (view.getParent() instanceof ViewGroup) {
                        ((ViewGroup) view.getParent()).removeView(view);
                    }
                    if (z) {
                        viewGroup.removeAllViews();
                        viewGroup.addView(view);
                    } else {
                        AdChoicesView adChoicesView = new AdChoicesView(benVar2.c().getContext());
                        adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        adChoicesView.addView(view);
                        FrameLayout b2 = benVar2.b();
                        if (b2 != null) {
                            b2.addView(adChoicesView);
                        }
                    }
                    benVar2.a(benVar2.h(), view);
                }
                String[] strArr = bdm.f24216a;
                int length = strArr.length;
                while (true) {
                    if (i >= length) {
                        viewGroup2 = null;
                        break;
                    }
                    View a_2 = benVar2.a_(strArr[i]);
                    if (a_2 instanceof ViewGroup) {
                        viewGroup2 = (ViewGroup) a_2;
                        break;
                    }
                    i++;
                }
                bdoVar.f.execute(new Runnable(bdoVar, viewGroup2) { // from class: com.google.android.gms.internal.ads.bdq

                    /* renamed from: a  reason: collision with root package name */
                    private final bdo f24229a;

                    /* renamed from: b  reason: collision with root package name */
                    private final ViewGroup f24230b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24229a = bdoVar;
                        this.f24230b = viewGroup2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        bdo bdoVar2 = this.f24229a;
                        boolean z2 = this.f24230b != null;
                        if (bdoVar2.f24225d.m() == null) {
                            return;
                        }
                        if (2 == bdoVar2.f24225d.a() || 1 == bdoVar2.f24225d.a()) {
                            bdoVar2.f24222a.zza(bdoVar2.f24223b.f, String.valueOf(bdoVar2.f24225d.a()), z2);
                        } else if (6 == bdoVar2.f24225d.a()) {
                            bdoVar2.f24222a.zza(bdoVar2.f24223b.f, "2", z2);
                            bdoVar2.f24222a.zza(bdoVar2.f24223b.f, "1", z2);
                        }
                    }
                });
                if (viewGroup2 == null) {
                    return;
                }
                if (!bdoVar.a(viewGroup2)) {
                    viewGroup2.removeAllViews();
                    View c2 = benVar2.c();
                    Context context2 = c2 != null ? c2.getContext() : null;
                    if (context2 != null) {
                        if (((Boolean) ekb.e().a(aq.bX)).booleanValue()) {
                            dq a2 = bdoVar.h.a();
                            if (a2 != null) {
                                try {
                                    bVar = a2.b();
                                } catch (RemoteException e) {
                                    zzd.zzez("Could not get main image drawable");
                                    return;
                                }
                            } else {
                                return;
                            }
                        } else {
                            dr g = bdoVar.f24225d.g();
                            if (g != null) {
                                try {
                                    bVar = g.a();
                                } catch (RemoteException e2) {
                                    zzd.zzez("Could not get drawable from image");
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                        if (!(bVar == null || (drawable = (Drawable) d.a(bVar)) == null)) {
                            ImageView imageView = new ImageView(context2);
                            imageView.setImageDrawable(drawable);
                            if (benVar2 != null) {
                                bVar2 = benVar2.i();
                            }
                            if (bVar2 == null || !((Boolean) ekb.e().a(aq.dL)).booleanValue()) {
                                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            } else {
                                imageView.setScaleType((ImageView.ScaleType) d.a(bVar2));
                            }
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            viewGroup2.addView(imageView);
                        }
                    }
                } else if (bdoVar.f24225d.v() != null) {
                    bdoVar.f24225d.v().a(new bdp(bdoVar, benVar2, viewGroup2));
                }
            }
        });
    }

    public final boolean a(ViewGroup viewGroup) {
        View m = this.f24225d.m();
        if (m == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (m.getParent() instanceof ViewGroup) {
            ((ViewGroup) m.getParent()).removeView(m);
        }
        viewGroup.addView(m, ((Boolean) ekb.e().a(aq.ca)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final void b(ben benVar) {
        if (benVar != null) {
            Context context = benVar.c().getContext();
            if (zzbn.zza(context, this.f24224c.f24189a)) {
                if (!(context instanceof Activity)) {
                    zzd.zzdz("Activity context is needed for policy validator.");
                } else if (this.i != null && benVar.b() != null) {
                    try {
                        final WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        final FrameLayout b2 = benVar.b();
                        final bef befVar = this.i;
                        adt a2 = befVar.f24259a.a(zzvt.zzqk(), null, null);
                        a2.s().setVisibility(4);
                        a2.s().setContentDescription("policy_validator");
                        a2.a("/sendMessageToSdk", new hi(befVar) { // from class: com.google.android.gms.internal.ads.bee

                            /* renamed from: a  reason: collision with root package name */
                            private final bef f24258a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24258a = befVar;
                            }

                            @Override // com.google.android.gms.internal.ads.hi
                            public final void a(Object obj, Map map) {
                                this.f24258a.f24260b.a("sendMessageToNativeJs", map);
                            }
                        });
                        a2.a("/hideValidatorOverlay", new hi(befVar, windowManager, b2) { // from class: com.google.android.gms.internal.ads.beh

                            /* renamed from: a  reason: collision with root package name */
                            private final bef f24265a;

                            /* renamed from: b  reason: collision with root package name */
                            private final WindowManager f24266b;

                            /* renamed from: c  reason: collision with root package name */
                            private final View f24267c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24265a = befVar;
                                this.f24266b = windowManager;
                                this.f24267c = b2;
                            }

                            @Override // com.google.android.gms.internal.ads.hi
                            public final void a(Object obj, Map map) {
                                bef befVar2 = this.f24265a;
                                WindowManager windowManager2 = this.f24266b;
                                View view = this.f24267c;
                                adt adtVar = (adt) obj;
                                zzd.zzdz("Hide native ad policy validator overlay.");
                                adtVar.s().setVisibility(8);
                                if (adtVar.s().getWindowToken() != null) {
                                    windowManager2.removeView(adtVar.s());
                                }
                                adtVar.destroy();
                                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                if (befVar2.f24261c != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnScrollChangedListener(befVar2.f24261c);
                                }
                            }
                        });
                        a2.a("/open", new hq(null, null, null, null, null));
                        befVar.f24260b.a(new WeakReference(a2), "/loadNativeAdPolicyViolations", new hi(befVar, b2, windowManager) { // from class: com.google.android.gms.internal.ads.beg

                            /* renamed from: a  reason: collision with root package name */
                            private final bef f24262a;

                            /* renamed from: b  reason: collision with root package name */
                            private final View f24263b;

                            /* renamed from: c  reason: collision with root package name */
                            private final WindowManager f24264c;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24262a = befVar;
                                this.f24263b = b2;
                                this.f24264c = windowManager;
                            }

                            @Override // com.google.android.gms.internal.ads.hi
                            public final void a(Object obj, final Map map) {
                                final bef befVar2 = this.f24262a;
                                final View view = this.f24263b;
                                final WindowManager windowManager2 = this.f24264c;
                                final adt adtVar = (adt) obj;
                                adtVar.B().a(new afd(befVar2, map) { // from class: com.google.android.gms.internal.ads.bel

                                    /* renamed from: a  reason: collision with root package name */
                                    private final bef f24275a;

                                    /* renamed from: b  reason: collision with root package name */
                                    private final Map f24276b;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f24275a = befVar2;
                                        this.f24276b = map;
                                    }

                                    @Override // com.google.android.gms.internal.ads.afd
                                    public final void zzam(boolean z) {
                                        bef befVar3 = this.f24275a;
                                        Map map2 = this.f24276b;
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("messageType", "validatorHtmlLoaded");
                                        hashMap.put("id", (String) map2.get("id"));
                                        befVar3.f24260b.a("sendMessageToNativeJs", hashMap);
                                    }
                                });
                                if (map != null) {
                                    Context context2 = view.getContext();
                                    int a3 = bef.a(context2, (String) map.get("validator_width"), ((Integer) ekb.e().a(aq.eH)).intValue());
                                    int a4 = bef.a(context2, (String) map.get("validator_height"), ((Integer) ekb.e().a(aq.eI)).intValue());
                                    int a5 = bef.a(context2, (String) map.get("validator_x"), 0);
                                    int a6 = bef.a(context2, (String) map.get("validator_y"), 0);
                                    adtVar.a(afh.a(a3, a4));
                                    try {
                                        adtVar.r().getSettings().setUseWideViewPort(((Boolean) ekb.e().a(aq.eJ)).booleanValue());
                                        adtVar.r().getSettings().setLoadWithOverviewMode(((Boolean) ekb.e().a(aq.eK)).booleanValue());
                                    } catch (NullPointerException e) {
                                    }
                                    final WindowManager.LayoutParams zzaaj = zzbn.zzaaj();
                                    zzaaj.x = a5;
                                    zzaaj.y = a6;
                                    windowManager2.updateViewLayout(adtVar.s(), zzaaj);
                                    final String str = (String) map.get("orientation");
                                    Rect rect = new Rect();
                                    if (view.getGlobalVisibleRect(rect)) {
                                        final int i = (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - a6;
                                        befVar2.f24261c = new ViewTreeObserver.OnScrollChangedListener(view, adtVar, str, zzaaj, i, windowManager2) { // from class: com.google.android.gms.internal.ads.bei

                                            /* renamed from: a  reason: collision with root package name */
                                            private final View f24268a;

                                            /* renamed from: b  reason: collision with root package name */
                                            private final adt f24269b;

                                            /* renamed from: c  reason: collision with root package name */
                                            private final String f24270c;

                                            /* renamed from: d  reason: collision with root package name */
                                            private final WindowManager.LayoutParams f24271d;
                                            private final int e;
                                            private final WindowManager f;

                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            {
                                                this.f24268a = view;
                                                this.f24269b = adtVar;
                                                this.f24270c = str;
                                                this.f24271d = zzaaj;
                                                this.e = i;
                                                this.f = windowManager2;
                                            }

                                            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                                            public final void onScrollChanged() {
                                                View view2 = this.f24268a;
                                                adt adtVar2 = this.f24269b;
                                                String str2 = this.f24270c;
                                                WindowManager.LayoutParams layoutParams = this.f24271d;
                                                int i2 = this.e;
                                                WindowManager windowManager3 = this.f;
                                                Rect rect2 = new Rect();
                                                if (view2.getGlobalVisibleRect(rect2) && adtVar2.s().getWindowToken() != null) {
                                                    if ("1".equals(str2) || "2".equals(str2)) {
                                                        layoutParams.y = rect2.bottom - i2;
                                                    } else {
                                                        layoutParams.y = rect2.top - i2;
                                                    }
                                                    windowManager3.updateViewLayout(adtVar2.s(), layoutParams);
                                                }
                                            }
                                        };
                                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                                            viewTreeObserver.addOnScrollChangedListener(befVar2.f24261c);
                                        }
                                    }
                                    String str2 = (String) map.get("overlay_url");
                                    if (!TextUtils.isEmpty(str2)) {
                                        adtVar.loadUrl(str2);
                                    }
                                }
                            }
                        });
                        befVar.f24260b.a(new WeakReference(a2), "/showValidatorOverlay", bej.f24272a);
                        windowManager.addView(a2.s(), zzbn.zzaaj());
                    } catch (zzbfu e) {
                        zzd.zza("web view can not be obtained", e);
                    }
                }
            }
        }
    }
}
