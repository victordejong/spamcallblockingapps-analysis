package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.eht;
import com.google.android.gms.internal.ads.wo;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bav.class */
public final class bav implements aro, axx {

    /* renamed from: a  reason: collision with root package name */
    private final wl f24097a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f24098b;

    /* renamed from: c  reason: collision with root package name */
    private final wo f24099c;

    /* renamed from: d  reason: collision with root package name */
    private final View f24100d;
    private String e;
    private final eht.a.EnumC0477a f;

    public bav(wl wlVar, Context context, wo woVar, View view, eht.a.EnumC0477a aVar) {
        this.f24097a = wlVar;
        this.f24098b = context;
        this.f24099c = woVar;
        this.f24100d = view;
        this.f = aVar;
    }

    @Override // com.google.android.gms.internal.ads.axx
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(tp tpVar, String str, String str2) {
        if (this.f24099c.a(this.f24098b)) {
            try {
                wo woVar = this.f24099c;
                Context context = this.f24098b;
                String f = woVar.f(context);
                String str3 = this.f24097a.f28474a;
                String a2 = tpVar.a();
                int b2 = tpVar.b();
                if (woVar.a(context)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_ai", str3);
                    bundle.putString("reward_type", a2);
                    bundle.putInt("reward_value", b2);
                    woVar.a(context, "_ar", f, bundle);
                    StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 75);
                    sb.append("Log a Firebase reward video event, reward type: ");
                    sb.append(a2);
                    sb.append(", reward value: ");
                    sb.append(b2);
                    zzd.zzed(sb.toString());
                }
            } catch (RemoteException e) {
                zzd.zzd("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
        View view = this.f24100d;
        if (!(view == null || this.e == null)) {
            wo woVar = this.f24099c;
            final Context context = view.getContext();
            final String str = this.e;
            if (woVar.a(context) && (context instanceof Activity)) {
                if (wo.b(context)) {
                    woVar.a("setScreenName", new wo.a(context, str) { // from class: com.google.android.gms.internal.ads.wy

                        /* renamed from: a  reason: collision with root package name */
                        private final Context f28498a;

                        /* renamed from: b  reason: collision with root package name */
                        private final String f28499b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28498a = context;
                            this.f28499b = str;
                        }

                        @Override // com.google.android.gms.internal.ads.wo.a
                        public final void a(afl aflVar) {
                            Context context2 = this.f28498a;
                            aflVar.a(d.a(context2), this.f28499b, context2.getPackageName());
                        }
                    });
                } else if (woVar.a(context, "com.google.firebase.analytics.FirebaseAnalytics", woVar.f28482a, false)) {
                    try {
                        woVar.c(context, "setCurrentScreen").invoke(woVar.f28482a.get(), (Activity) context, str, context.getPackageName());
                    } catch (Exception e) {
                        woVar.a("setCurrentScreen", false);
                    }
                }
            }
        }
        this.f24097a.a(true);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
        this.f24097a.a(false);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.axx
    public final void h() {
        String c2 = this.f24099c.c(this.f24098b);
        this.e = c2;
        String valueOf = String.valueOf(c2);
        String str = this.f == eht.a.EnumC0477a.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.e = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }
}
