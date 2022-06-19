package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemh.class */
public final class zzemh implements zzery<zzemi> {
    private final zzfsn zza;
    private final Context zzb;
    private final zzfar zzc;
    private final View zzd;

    public zzemh(zzfsn zzfsnVar, Context context, zzfar zzfarVar, ViewGroup viewGroup) {
        this.zza = zzfsnVar;
        this.zzb = context;
        this.zzc = zzfarVar;
        this.zzd = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzemi> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzemg
            private final zzemh zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzemi zzb() throws Exception {
        ViewParent parent;
        Context context = this.zzb;
        zzbdl zzbdlVar = this.zzc.zze;
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
        return new zzemi(context, zzbdlVar, arrayList);
    }
}
