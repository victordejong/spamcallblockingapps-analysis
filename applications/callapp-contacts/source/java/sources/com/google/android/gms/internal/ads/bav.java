package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.C13019wo;
import com.google.android.gms.internal.ads.eht;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bav.class */
public final class bav implements aro, axx {

    /* renamed from: a */
    private final C13016wl f43420a;

    /* renamed from: b */
    private final Context f43421b;

    /* renamed from: c */
    private final C13019wo f43422c;

    /* renamed from: d */
    private final View f43423d;

    /* renamed from: e */
    private String f43424e;

    /* renamed from: f */
    private final eht.C12447a.EnumC12448a f43425f;

    public bav(C13016wl c13016wl, Context context, C13019wo c13019wo, View view, eht.C12447a.EnumC12448a enumC12448a) {
        this.f43420a = c13016wl;
        this.f43421b = context;
        this.f43422c = c13019wo;
        this.f43423d = view;
        this.f43425f = enumC12448a;
    }

    @Override // com.google.android.gms.internal.ads.axx
    /* renamed from: a */
    public final void mo18265a() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
        if (this.f43422c.m14044a(this.f43421b)) {
            try {
                C13019wo c13019wo = this.f43422c;
                Context context = this.f43421b;
                String m14024f = c13019wo.m14024f(context);
                String str3 = this.f43420a.f49973a;
                String mo14154a = abstractC12939tp.mo14154a();
                int mo14153b = abstractC12939tp.mo14153b();
                if (!c13019wo.m14044a(context)) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putString("_ai", str3);
                bundle.putString("reward_type", mo14154a);
                bundle.putInt("reward_value", mo14153b);
                c13019wo.m14041a(context, "_ar", m14024f, bundle);
                StringBuilder sb = new StringBuilder(String.valueOf(mo14154a).length() + 75);
                sb.append("Log a Firebase reward video event, reward type: ");
                sb.append(mo14154a);
                sb.append(", reward value: ");
                sb.append(mo14153b);
                zzd.zzed(sb.toString());
            } catch (RemoteException e) {
                zzd.zzd("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
        View view = this.f43423d;
        if (view != null && this.f43424e != null) {
            C13019wo c13019wo = this.f43422c;
            Context context = view.getContext();
            String str = this.f43424e;
            if (c13019wo.m14044a(context) && (context instanceof Activity)) {
                if (C13019wo.m14033b(context)) {
                    c13019wo.m14038a("setScreenName", new C13019wo.AbstractC13020a(context, str) { // from class: com.google.android.gms.internal.ads.wy

                        /* renamed from: a */
                        private final Context f50006a;

                        /* renamed from: b */
                        private final String f50007b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f50006a = context;
                            this.f50007b = str;
                        }

                        @Override // com.google.android.gms.internal.ads.C13019wo.AbstractC13020a
                        /* renamed from: a */
                        public final void mo14021a(afl aflVar) {
                            Context context2 = this.f50006a;
                            aflVar.mo14508a(BinderC12129d.m18979a(context2), this.f50007b, context2.getPackageName());
                        }
                    });
                } else if (c13019wo.m14040a(context, "com.google.firebase.analytics.FirebaseAnalytics", c13019wo.f49981a, false)) {
                    try {
                        c13019wo.m14029c(context, "setCurrentScreen").invoke(c13019wo.f49981a.get(), (Activity) context, str, context.getPackageName());
                    } catch (Exception e) {
                        c13019wo.m14035a("setCurrentScreen", false);
                    }
                }
            }
        }
        this.f43420a.m14046a(true);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
        this.f43420a.m14046a(false);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
    }

    @Override // com.google.android.gms.internal.ads.axx
    /* renamed from: h */
    public final void mo18264h() {
        String m14030c = this.f43422c.m14030c(this.f43421b);
        this.f43424e = m14030c;
        String valueOf = String.valueOf(m14030c);
        String str = this.f43425f == eht.C12447a.EnumC12448a.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.f43424e = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }
}
