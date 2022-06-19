package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdam.class */
public final class zzdam implements zzdfi<zzdan> {
    private final Context context;
    private final zzdnp zzfwy;
    private final zzdzv zzhah;
    private final View zzhai;

    public zzdam(zzdzv zzdzvVar, Context context, zzdnp zzdnpVar, ViewGroup viewGroup) {
        this.zzhah = zzdzvVar;
        this.context = context;
        this.zzfwy = zzdnpVar;
        this.zzhai = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdan> zzasy() {
        return this.zzhah.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdap
            private final zzdam zzhal;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhal = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhal.zzasz();
            }
        });
    }

    public final /* synthetic */ zzdan zzasz() throws Exception {
        ViewParent parent;
        Context context = this.context;
        zzvs zzvsVar = this.zzfwy.zzbpo;
        ArrayList arrayList = new ArrayList();
        View view = this.zzhai;
        while (true) {
            View view2 = view;
            if (view2 != null && (parent = view2.getParent()) != null) {
                int i = -1;
                if (parent instanceof ViewGroup) {
                    i = ((ViewGroup) parent).indexOfChild(view2);
                }
                Bundle bundle = new Bundle();
                bundle.putString("type", parent.getClass().getName());
                bundle.putInt("index_of_child", i);
                arrayList.add(bundle);
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                break;
            }
        }
        return new zzdan(context, zzvsVar, arrayList);
    }
}
