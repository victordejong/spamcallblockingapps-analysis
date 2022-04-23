package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.zzdbo;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbo.class */
public final class zzdbo implements zzdgx<zzdbp> {

    /* renamed from: a */
    public final zzdzb f26883a;

    /* renamed from: b */
    public final Context f26884b;

    /* renamed from: c */
    public final zzdok f26885c;

    /* renamed from: d */
    public final View f26886d;

    public zzdbo(zzdzb zzdzbVar, Context context, zzdok zzdokVar, ViewGroup viewGroup) {
        this.f26883a = zzdzbVar;
        this.f26884b = context;
        this.f26885c = zzdokVar;
        this.f26886d = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdbp> mo13576a() {
        return this.f26883a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ks

            /* renamed from: a */
            public final zzdbo f13909a;

            {
                this.f13909a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13909a.m13663b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdbp m13663b() throws Exception {
        ViewParent parent;
        Context context = this.f26884b;
        zzvn zzvnVar = this.f26885c.f27643e;
        ArrayList arrayList = new ArrayList();
        View view = this.f26886d;
        while (view != null && (parent = view.getParent()) != null) {
            int i = -1;
            if (parent instanceof ViewGroup) {
                i = ((ViewGroup) parent).indexOfChild(view);
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", i);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zzdbp(context, zzvnVar, arrayList);
    }
}
