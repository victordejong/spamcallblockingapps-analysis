package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepw.class */
public final class zzepw implements zzevn<zzepx> {
    private final zzfxb zza;
    private final Context zzb;
    private final zzfef zzc;
    private final View zzd;

    public zzepw(zzfxb zzfxbVar, Context context, zzfef zzfefVar, ViewGroup viewGroup) {
        this.zza = zzfxbVar;
        this.zzb = context;
        this.zzc = zzfefVar;
        this.zzd = viewGroup;
    }

    public final /* synthetic */ zzepx zza() throws Exception {
        ViewParent parent;
        Context context = this.zzb;
        zzbfi zzbfiVar = this.zzc.zze;
        ArrayList arrayList = new ArrayList();
        View view = this.zzd;
        while (true) {
            View view2 = view;
            if (view2 != null && (parent = view2.getParent()) != null) {
                int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view2) : -1;
                Bundle bundle = new Bundle();
                bundle.putString("type", parent.getClass().getName());
                bundle.putInt("index_of_child", indexOfChild);
                arrayList.add(bundle);
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                break;
            }
        }
        return new zzepx(context, zzbfiVar, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzepx> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzepv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzepw.this.zza();
            }
        });
    }
}
