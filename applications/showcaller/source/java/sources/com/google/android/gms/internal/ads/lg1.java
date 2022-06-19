package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.C5674b1;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lg1.class */
public final class lg1 {

    /* renamed from: a */
    private final bl1 f26110a;

    /* renamed from: b */
    private final qj1 f26111b;

    /* renamed from: c */
    private ViewTreeObserver.OnScrollChangedListener f26112c = null;

    public lg1(bl1 bl1Var, qj1 qj1Var) {
        this.f26110a = bl1Var;
        this.f26111b = qj1Var;
    }

    /* renamed from: f */
    private static final int m13521f(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        C7118wr.m9485a();
        return xh0.m9161q(context, i);
    }

    /* renamed from: a */
    public final View m13526a(View view, WindowManager windowManager) {
        wn0 m16322b = this.f26110a.m16322b(zzbdl.m8082l0(), null, null);
        View view2 = (View) m16322b;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        m16322b.mo7899l0("/sendMessageToSdk", new n20(this) { // from class: com.google.android.gms.internal.ads.eg1

            /* renamed from: a */
            private final lg1 f22163a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22163a = this;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f22163a.m13522e((wn0) obj, map);
            }
        });
        m16322b.mo7899l0("/hideValidatorOverlay", new n20(this, windowManager, view) { // from class: com.google.android.gms.internal.ads.fg1

            /* renamed from: a */
            private final lg1 f22883a;

            /* renamed from: b */
            private final WindowManager f22884b;

            /* renamed from: c */
            private final View f22885c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22883a = this;
                this.f22884b = windowManager;
                this.f22885c = view;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f22883a.m13523d(this.f22884b, this.f22885c, (wn0) obj, map);
            }
        });
        m16322b.mo7899l0("/open", new z20(null, null, null, null, null));
        this.f26111b.m11872i(new WeakReference(m16322b), "/loadNativeAdPolicyViolations", new n20(this, view, windowManager) { // from class: com.google.android.gms.internal.ads.hg1

            /* renamed from: a */
            private final lg1 f23895a;

            /* renamed from: b */
            private final View f23896b;

            /* renamed from: c */
            private final WindowManager f23897c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23895a = this;
                this.f23896b = view;
                this.f23897c = windowManager;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                this.f23895a.m13525b(this.f23896b, this.f23897c, (wn0) obj, map);
            }
        });
        this.f26111b.m11872i(new WeakReference(m16322b), "/showValidatorOverlay", ig1.f24266a);
        return (View) m16322b;
    }

    /* renamed from: b */
    public final /* synthetic */ void m13525b(View view, WindowManager windowManager, wn0 wn0Var, Map map) {
        wn0Var.mo7914c0().mo14085f0(new hp0(this, map) { // from class: com.google.android.gms.internal.ads.kg1

            /* renamed from: d */
            private final lg1 f25209d;

            /* renamed from: e */
            private final Map f25210e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25209d = this;
                this.f25210e = map;
            }

            @Override // com.google.android.gms.internal.ads.hp0
            /* renamed from: b */
            public final void mo8634b(boolean z) {
                this.f25209d.m13524c(this.f25210e, z);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int m13521f = m13521f(context, (String) map.get("validator_width"), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25521K5)).intValue());
        int m13521f2 = m13521f(context, (String) map.get("validator_height"), ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25529L5)).intValue());
        int m13521f3 = m13521f(context, (String) map.get("validator_x"), 0);
        int m13521f4 = m13521f(context, (String) map.get("validator_y"), 0);
        wn0Var.mo7950I0(mp0.m13132c(m13521f, m13521f2));
        try {
            wn0Var.mo7956F().getSettings().setUseWideViewPort(((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25537M5)).booleanValue());
            wn0Var.mo7956F().getSettings().setLoadWithOverviewMode(((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25545N5)).booleanValue());
        } catch (NullPointerException e) {
        }
        WindowManager.LayoutParams m18110j = C5674b1.m18110j();
        m18110j.x = m13521f3;
        m18110j.y = m13521f4;
        windowManager.updateViewLayout(wn0Var.mo7960D(), m18110j);
        String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            this.f26112c = new ViewTreeObserver.OnScrollChangedListener(view, wn0Var, str, m18110j, (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - m13521f4, windowManager) { // from class: com.google.android.gms.internal.ads.jg1

                /* renamed from: d */
                private final View f24860d;

                /* renamed from: e */
                private final wn0 f24861e;

                /* renamed from: f */
                private final String f24862f;

                /* renamed from: g */
                private final WindowManager.LayoutParams f24863g;

                /* renamed from: h */
                private final int f24864h;

                /* renamed from: i */
                private final WindowManager f24865i;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24860d = view;
                    this.f24861e = wn0Var;
                    this.f24862f = str;
                    this.f24863g = m18110j;
                    this.f24864h = i;
                    this.f24865i = windowManager;
                }

                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = this.f24860d;
                    wn0 wn0Var2 = this.f24861e;
                    String str2 = this.f24862f;
                    WindowManager.LayoutParams layoutParams = this.f24863g;
                    int i2 = this.f24864h;
                    WindowManager windowManager2 = this.f24865i;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || wn0Var2.mo7960D().getWindowToken() == null) {
                        return;
                    }
                    if ("1".equals(str2) || "2".equals(str2)) {
                        layoutParams.y = rect2.bottom - i2;
                    } else {
                        layoutParams.y = rect2.top - i2;
                    }
                    windowManager2.updateViewLayout(wn0Var2.mo7960D(), layoutParams);
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.f26112c);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        wn0Var.loadUrl(str2);
    }

    /* renamed from: c */
    public final /* synthetic */ void m13524c(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f26111b.m11874g("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: d */
    public final /* synthetic */ void m13523d(WindowManager windowManager, View view, wn0 wn0Var, Map map) {
        ei0.m15469a("Hide native ad policy validator overlay.");
        wn0Var.mo7960D().setVisibility(8);
        if (wn0Var.mo7960D().getWindowToken() != null) {
            windowManager.removeView(wn0Var.mo7960D());
        }
        wn0Var.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.f26112c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.f26112c);
    }

    /* renamed from: e */
    public final /* synthetic */ void m13522e(wn0 wn0Var, Map map) {
        this.f26111b.m11874g("sendMessageToNativeJs", map);
    }
}
