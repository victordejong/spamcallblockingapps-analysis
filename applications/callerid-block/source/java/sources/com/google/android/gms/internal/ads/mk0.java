package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C1379b;
import com.google.android.gms.ads.internal.util.C1430k0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mk0.class */
public final class mk0 {

    /* renamed from: a */
    private final so0 f7579a;

    /* renamed from: b */
    private final mn0 f7580b;

    /* renamed from: c */
    private ViewTreeObserver.OnScrollChangedListener f7581c = null;

    public mk0(so0 so0Var, mn0 mn0Var) {
        this.f7579a = so0Var;
        this.f7580b = mn0Var;
    }

    /* renamed from: f */
    private static final int m6557f(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
        }
        m03.m6636a();
        return C1786io.m7125s(context, i);
    }

    /* renamed from: a */
    public final View m6562a(View view, WindowManager windowManager) {
        View m5639a = this.f7579a.m5639a(zzyx.p(), null, null);
        View view2 = m5639a;
        view2.setVisibility(4);
        view2.setContentDescription("policy_validator");
        m5639a.T0("/sendMessageToSdk", new gk0(this));
        m5639a.T0("/hideValidatorOverlay", new hk0(this, windowManager, view));
        m5639a.T0("/open", new s9((C1379b) null, (ah) null, (jz0) null, (jr0) null, (aq1) null));
        this.f7580b.m6536h(new WeakReference(m5639a), "/loadNativeAdPolicyViolations", new ik0(this, view, windowManager));
        this.f7580b.m6536h(new WeakReference(m5639a), "/showValidatorOverlay", jk0.a);
        return view2;
    }

    /* renamed from: b */
    final /* synthetic */ void m6561b(View view, WindowManager windowManager, jt jtVar, Map map) {
        jtVar.b1().k0(new lk0(this, map));
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int m6557f = m6557f(context, (String) map.get("validator_width"), ((Integer) C1674c.m7906c().m6878b(C1842m3.f7261H4)).intValue());
        int m6557f2 = m6557f(context, (String) map.get("validator_height"), ((Integer) C1674c.m7906c().m6878b(C1842m3.f7267I4)).intValue());
        int m6557f3 = m6557f(context, (String) map.get("validator_x"), 0);
        int m6557f4 = m6557f(context, (String) map.get("validator_y"), 0);
        jtVar.D0(C2058yu.m4694c(m6557f, m6557f2));
        try {
            jtVar.V().getSettings().setUseWideViewPort(((Boolean) C1674c.m7906c().m6878b(C1842m3.f7273J4)).booleanValue());
            jtVar.V().getSettings().setLoadWithOverviewMode(((Boolean) C1674c.m7906c().m6878b(C1842m3.f7279K4)).booleanValue());
        } catch (NullPointerException e) {
        }
        WindowManager.LayoutParams m8812j = C1430k0.m8812j();
        m8812j.x = m6557f3;
        m8812j.y = m6557f4;
        windowManager.updateViewLayout(jtVar.G(), m8812j);
        String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            this.f7581c = new ViewTreeObserver.OnScrollChangedListener(view, jtVar, str, m8812j, (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - m6557f4, windowManager) { // from class: com.google.android.gms.internal.ads.kk0

                /* renamed from: b */
                private final View f6984b;

                /* renamed from: c */
                private final jt f6985c;

                /* renamed from: d */
                private final String f6986d;

                /* renamed from: e */
                private final WindowManager.LayoutParams f6987e;

                /* renamed from: f */
                private final int f6988f;

                /* renamed from: g */
                private final WindowManager f6989g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6984b = view;
                    this.f6985c = jtVar;
                    this.f6986d = str;
                    this.f6987e = m8812j;
                    this.f6988f = i;
                    this.f6989g = windowManager;
                }

                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    View view2 = this.f6984b;
                    jt jtVar2 = this.f6985c;
                    String str2 = this.f6986d;
                    WindowManager.LayoutParams layoutParams = this.f6987e;
                    int i2 = this.f6988f;
                    WindowManager windowManager2 = this.f6989g;
                    Rect rect2 = new Rect();
                    if (!view2.getGlobalVisibleRect(rect2) || jtVar2.G().getWindowToken() == null) {
                        return;
                    }
                    layoutParams.y = (("1".equals(str2) || "2".equals(str2)) ? rect2.bottom : rect2.top) - i2;
                    windowManager2.updateViewLayout(jtVar2.G(), layoutParams);
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(this.f7581c);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jtVar.loadUrl(str2);
    }

    /* renamed from: c */
    final /* synthetic */ void m6560c(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "validatorHtmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f7580b.m6538f("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: d */
    final /* synthetic */ void m6559d(WindowManager windowManager, View view, jt jtVar, Map map) {
        C1894po.m6185a("Hide native ad policy validator overlay.");
        jtVar.G().setVisibility(8);
        if (jtVar.G().getWindowToken() != null) {
            windowManager.removeView(jtVar.G());
        }
        jtVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (this.f7581c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this.f7581c);
    }

    /* renamed from: e */
    final /* synthetic */ void m6558e(jt jtVar, Map map) {
        this.f7580b.m6538f("sendMessageToNativeJs", map);
    }
}
