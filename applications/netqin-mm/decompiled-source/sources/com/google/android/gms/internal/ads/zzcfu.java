package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcfu;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.C3583gi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfu.class */
public final class zzcfu {

    /* renamed from: a */
    public final zzcjt f25953a;

    /* renamed from: b */
    public final zzcil f25954b;

    /* renamed from: c */
    public ViewTreeObserver.OnScrollChangedListener f25955c = null;

    public zzcfu(zzcjt zzcjtVar, zzcil zzcilVar) {
        this.f25953a = zzcjtVar;
        this.f25954b = zzcilVar;
    }

    /* renamed from: a */
    public static int m14335a(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        zzwm.m11170a();
        return zzbbg.m15897b(context, i);
    }

    /* renamed from: a */
    public final View m14334a(final View view, final WindowManager windowManager) throws zzbgv {
        zzbgj a = this.f25953a.m14129a(zzvn.m11195i());
        a.getView().setVisibility(4);
        a.getView().setContentDescription("policy_validator");
        a.mo15570b("/sendMessageToSdk", new zzahq(this) { // from class: c.d.b.d.g.a.ci

            /* renamed from: a */
            public final zzcfu f12561a;

            {
                this.f12561a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f12561a.m14331a((zzbgj) obj, map);
            }
        });
        a.mo15570b("/hideValidatorOverlay", new zzahq(this, windowManager, view) { // from class: c.d.b.d.g.a.ei

            /* renamed from: a */
            public final zzcfu f12843a;

            /* renamed from: b */
            public final WindowManager f12844b;

            /* renamed from: c */
            public final View f12845c;

            {
                this.f12843a = this;
                this.f12844b = windowManager;
                this.f12845c = view;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f12843a.m14332a(this.f12844b, this.f12845c, (zzbgj) obj, map);
            }
        });
        a.mo15570b("/open", new zzahu(null, null));
        this.f25954b.m14172a(new WeakReference(a), "/loadNativeAdPolicyViolations", new zzahq(this, view, windowManager) { // from class: c.d.b.d.g.a.di

            /* renamed from: a */
            public final zzcfu f12753a;

            /* renamed from: b */
            public final View f12754b;

            /* renamed from: c */
            public final WindowManager f12755c;

            {
                this.f12753a = this;
                this.f12754b = view;
                this.f12755c = windowManager;
            }

            @Override // com.google.android.gms.internal.ads.zzahq
            /* renamed from: a */
            public final void mo14168a(Object obj, Map map) {
                this.f12753a.m14333a(this.f12754b, this.f12755c, (zzbgj) obj, map);
            }
        });
        this.f25954b.m14172a(new WeakReference(a), "/showValidatorOverlay", C3583gi.f13210a);
        return a.getView();
    }

    /* renamed from: a */
    public final /* synthetic */ void m14333a(final View view, final WindowManager windowManager, final zzbgj zzbgjVar, final Map map) {
        zzbgjVar.mo15543z().mo15492a(new zzbhu(this, map) { // from class: c.d.b.d.g.a.ii

            /* renamed from: a */
            public final zzcfu f13544a;

            /* renamed from: b */
            public final Map f13545b;

            {
                this.f13544a = this;
                this.f13545b = map;
            }

            @Override // com.google.android.gms.internal.ads.zzbhu
            /* renamed from: a */
            public final void mo15515a(boolean z) {
                this.f13544a.m14330a(this.f13545b, z);
            }
        });
        if (map != null) {
            Context context = view.getContext();
            int a = m14335a(context, (String) map.get("validator_width"), ((Integer) zzwm.m11166e().m16921a(zzabb.f23772Y3)).intValue());
            int a2 = m14335a(context, (String) map.get("validator_height"), ((Integer) zzwm.m11166e().m16921a(zzabb.f23777Z3)).intValue());
            int a3 = m14335a(context, (String) map.get("validator_x"), 0);
            int a4 = m14335a(context, (String) map.get("validator_y"), 0);
            zzbgjVar.mo15585a(zzbhy.m15512a(a, a2));
            try {
                zzbgjVar.getWebView().getSettings().setUseWideViewPort(((Boolean) zzwm.m11166e().m16921a(zzabb.f23783a4)).booleanValue());
                zzbgjVar.getWebView().getSettings().setLoadWithOverviewMode(((Boolean) zzwm.m11166e().m16921a(zzabb.f23789b4)).booleanValue());
            } catch (NullPointerException e) {
            }
            final WindowManager.LayoutParams a5 = zzbau.m15946a();
            a5.x = a3;
            a5.y = a4;
            windowManager.updateViewLayout(zzbgjVar.getView(), a5);
            final String str = (String) map.get("orientation");
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                final int i = (("1".equals(str) || InternalAvidAdSessionContext.AVID_API_LEVEL.equals(str)) ? rect.bottom : rect.top) - a4;
                this.f25955c = new ViewTreeObserver.OnScrollChangedListener(view, zzbgjVar, str, a5, i, windowManager) { // from class: c.d.b.d.g.a.fi

                    /* renamed from: a */
                    public final View f12971a;

                    /* renamed from: b */
                    public final zzbgj f12972b;

                    /* renamed from: c */
                    public final String f12973c;

                    /* renamed from: d */
                    public final WindowManager.LayoutParams f12974d;

                    /* renamed from: e */
                    public final int f12975e;

                    /* renamed from: f */
                    public final WindowManager f12976f;

                    {
                        this.f12971a = view;
                        this.f12972b = zzbgjVar;
                        this.f12973c = str;
                        this.f12974d = a5;
                        this.f12975e = i;
                        this.f12976f = windowManager;
                    }

                    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                    public final void onScrollChanged() {
                        View view2 = this.f12971a;
                        zzbgj zzbgjVar2 = this.f12972b;
                        String str2 = this.f12973c;
                        WindowManager.LayoutParams layoutParams = this.f12974d;
                        int i2 = this.f12975e;
                        WindowManager windowManager2 = this.f12976f;
                        Rect rect2 = new Rect();
                        if (view2.getGlobalVisibleRect(rect2) && zzbgjVar2.getView().getWindowToken() != null) {
                            if ("1".equals(str2) || InternalAvidAdSessionContext.AVID_API_LEVEL.equals(str2)) {
                                layoutParams.y = rect2.bottom - i2;
                            } else {
                                layoutParams.y = rect2.top - i2;
                            }
                            windowManager2.updateViewLayout(zzbgjVar2.getView(), layoutParams);
                        }
                    }
                };
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnScrollChangedListener(this.f25955c);
                }
            }
            String str2 = (String) map.get("overlay_url");
            if (!TextUtils.isEmpty(str2)) {
                zzbgjVar.loadUrl(str2);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14332a(WindowManager windowManager, View view, zzbgj zzbgjVar, Map map) {
        zzbbq.m15858a("Hide native ad policy validator overlay.");
        zzbgjVar.getView().setVisibility(8);
        if (zzbgjVar.getView().getWindowToken() != null) {
            windowManager.removeView(zzbgjVar.getView());
        }
        zzbgjVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.f25955c != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this.f25955c);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m14331a(zzbgj zzbgjVar, Map map) {
        this.f25954b.m14175a("sendMessageToNativeJs", map);
    }

    /* renamed from: a */
    public final /* synthetic */ void m14330a(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f25954b.m14175a("sendMessageToNativeJs", hashMap);
    }
}
