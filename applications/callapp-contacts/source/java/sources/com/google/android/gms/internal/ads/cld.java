package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cld.class */
public final class cld implements dbi<alq> {

    /* renamed from: a */
    final /* synthetic */ clb f46013a;

    /* renamed from: b */
    private final /* synthetic */ cal f46014b;

    /* renamed from: c */
    private final /* synthetic */ amn f46015c;

    public cld(clb clbVar, cal calVar, amn amnVar) {
        this.f46013a = clbVar;
        this.f46014b = calVar;
        this.f46015c = amnVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(alq alqVar) {
        alq alqVar2 = alqVar;
        synchronized (this.f46013a) {
            this.f46013a.f46009h = null;
            this.f46013a.f46005d.removeAllViews();
            if (alqVar2.mo18545b() != null) {
                ViewParent parent = alqVar2.mo18545b().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (alqVar2.f42490l != null) {
                        str = alqVar2.f42490l.f43089a;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzd.zzez(sb.toString());
                    ((ViewGroup) parent).removeView(alqVar2.mo18545b());
                }
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42861eL)).booleanValue()) {
                alqVar2.f42491m.f43178a.m18384a(this.f46013a.f46003b).f43216a.f43180c = this.f46013a.f46004c;
            }
            this.f46013a.f46005d.addView(alqVar2.mo18545b());
            this.f46014b.mo17372a(alqVar2);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42861eL)).booleanValue()) {
                Executor executor = this.f46013a.f46002a;
                bza bzaVar = this.f46013a.f46003b;
                bzaVar.getClass();
                executor.execute(clc.m17424a(bzaVar));
            }
            this.f46013a.f46007f.m18412a(alqVar2.mo18541f());
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        zzvh m18505a = this.f46015c.mo18558b().m18505a(th);
        synchronized (this.f46013a) {
            this.f46013a.f46009h = null;
            this.f46015c.mo18561a().mo17319a(m18505a);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42861eL)).booleanValue()) {
                this.f46013a.f46002a.execute(new Runnable(this, m18505a) { // from class: com.google.android.gms.internal.ads.clf

                    /* renamed from: a */
                    private final cld f46023a;

                    /* renamed from: b */
                    private final zzvh f46024b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46023a = this;
                        this.f46024b = m18505a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cld cldVar = this.f46023a;
                        cldVar.f46013a.f46003b.mo17319a(this.f46024b);
                    }
                });
            }
            this.f46013a.f46007f.m18412a(60);
            cqb.m17342a(m18505a.errorCode, th, "BannerAdLoader.onFailure");
            this.f46014b.mo17373a();
        }
    }
}
