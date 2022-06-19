package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ax0.class */
public final class ax0 extends xw0 {

    /* renamed from: i */
    private final Context f20167i;

    /* renamed from: j */
    private final View f20168j;

    /* renamed from: k */
    private final wn0 f20169k;

    /* renamed from: l */
    private final hj2 f20170l;

    /* renamed from: m */
    private final vy0 f20171m;

    /* renamed from: n */
    private final cf1 f20172n;

    /* renamed from: o */
    private final sa1 f20173o;

    /* renamed from: p */
    private final vi3<a32> f20174p;

    /* renamed from: q */
    private final Executor f20175q;

    /* renamed from: r */
    private zzbdl f20176r;

    public ax0(wy0 wy0Var, Context context, hj2 hj2Var, View view, wn0 wn0Var, vy0 vy0Var, cf1 cf1Var, sa1 sa1Var, vi3<a32> vi3Var, Executor executor) {
        super(wy0Var);
        this.f20167i = context;
        this.f20168j = view;
        this.f20169k = wn0Var;
        this.f20170l = hj2Var;
        this.f20171m = vy0Var;
        this.f20172n = cf1Var;
        this.f20173o = sa1Var;
        this.f20174p = vi3Var;
        this.f20175q = executor;
    }

    @Override // com.google.android.gms.internal.ads.xy0
    /* renamed from: a */
    public final void mo9021a() {
        this.f20175q.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zw0

            /* renamed from: d */
            private final ax0 f33438d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f33438d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f33438d.m16469n();
            }
        });
        super.mo9021a();
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: g */
    public final View mo9037g() {
        return this.f20168j;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: h */
    public final void mo9036h(ViewGroup viewGroup, zzbdl zzbdlVar) {
        wn0 wn0Var;
        if (viewGroup == null || (wn0Var = this.f20169k) == null) {
            return;
        }
        wn0Var.mo7950I0(mp0.m13134a(zzbdlVar));
        viewGroup.setMinimumHeight(zzbdlVar.f33684f);
        viewGroup.setMinimumWidth(zzbdlVar.f33687i);
        this.f20176r = zzbdlVar;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: i */
    public final AbstractC6640ju mo9035i() {
        try {
            return this.f20171m.zza();
        } catch (zzfaw e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: j */
    public final hj2 mo9034j() {
        zzbdl zzbdlVar = this.f20176r;
        if (zzbdlVar != null) {
            return bk2.m16325c(zzbdlVar);
        }
        ej2 ej2Var = this.f32349b;
        if (ej2Var.f22217Y) {
            for (String str : ej2Var.f22219a) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            return new hj2(this.f20168j.getWidth(), this.f20168j.getHeight(), false);
        }
        return bk2.m16327a(this.f32349b.f22246r, this.f20170l);
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: k */
    public final hj2 mo9033k() {
        return this.f20170l;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: l */
    public final int mo9032l() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25449B5)).booleanValue() && this.f32349b.f22226d0) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25457C5)).booleanValue()) {
                return 0;
            }
        }
        return this.f32348a.f28999b.f28519b.f24898c;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: m */
    public final void mo9031m() {
        this.f20173o.zza();
    }

    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void m16469n() {
        if (this.f20172n.m16066d() == null) {
            return;
        }
        try {
            this.f20172n.m16066d().mo12057a2(this.f20174p.m9997b(), BinderC6255b.m16744m2(this.f20167i));
        } catch (RemoteException e) {
            ei0.m15466d("RemoteException when notifyAdLoad is called", e);
        }
    }
}
