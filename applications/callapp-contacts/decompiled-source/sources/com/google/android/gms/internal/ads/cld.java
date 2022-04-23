package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cld.class */
public final class cld implements dbi<alq> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ clb f26013a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cal f26014b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ amn f26015c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cld(clb clbVar, cal calVar, amn amnVar) {
        this.f26013a = clbVar;
        this.f26014b = calVar;
        this.f26015c = amnVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(alq alqVar) {
        alq alqVar2 = alqVar;
        synchronized (this.f26013a) {
            this.f26013a.h = null;
            this.f26013a.f26011d.removeAllViews();
            if (alqVar2.b() != null) {
                ViewParent parent = alqVar2.b().getParent();
                if (parent instanceof ViewGroup) {
                    String str = "";
                    if (alqVar2.l != null) {
                        str = alqVar2.l.f23815a;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(str);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzd.zzez(sb.toString());
                    ((ViewGroup) parent).removeView(alqVar2.b());
                }
            }
            if (((Boolean) ekb.e().a(aq.eL)).booleanValue()) {
                alqVar2.m.f23890a.a(this.f26013a.f26009b).f23927a.f23892c = this.f26013a.f26010c;
            }
            this.f26013a.f26011d.addView(alqVar2.b());
            this.f26014b.a(alqVar2);
            if (((Boolean) ekb.e().a(aq.eL)).booleanValue()) {
                Executor executor = this.f26013a.f26008a;
                bza bzaVar = this.f26013a.f26009b;
                bzaVar.getClass();
                executor.execute(clc.a(bzaVar));
            }
            this.f26013a.f.a(alqVar2.f());
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        final zzvh a2 = this.f26015c.b().a(th);
        synchronized (this.f26013a) {
            this.f26013a.h = null;
            this.f26015c.a().a(a2);
            if (((Boolean) ekb.e().a(aq.eL)).booleanValue()) {
                this.f26013a.f26008a.execute(new Runnable(this, a2) { // from class: com.google.android.gms.internal.ads.clf

                    /* renamed from: a  reason: collision with root package name */
                    private final cld f26020a;

                    /* renamed from: b  reason: collision with root package name */
                    private final zzvh f26021b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26020a = this;
                        this.f26021b = a2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        cld cldVar = this.f26020a;
                        cldVar.f26013a.f26009b.a(this.f26021b);
                    }
                });
            }
            this.f26013a.f.a(60);
            cqb.a(a2.errorCode, th, "BannerAdLoader.onFailure");
            this.f26014b.a();
        }
    }
}
