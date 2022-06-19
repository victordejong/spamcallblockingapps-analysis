package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhc.class */
public final class zzfhc implements zzfha {
    private final zzfha zza;

    public zzfhc(zzfha zzfhaVar) {
        this.zza = zzfhaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfha
    public final JSONObject zza(View view) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfha
    public final void zzb(View view, JSONObject jSONObject, zzfgz zzfgzVar, boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        zzfgr zza = zzfgr.zza();
        if (zza != null) {
            Collection<zzfgg> zzf = zza.zzf();
            int size = zzf.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (zzfgg zzfggVar : zzf) {
                View zzi = zzfggVar.zzi();
                if (zzi != null && zzi.isAttachedToWindow() && zzi.isShown()) {
                    View view2 = zzi;
                    while (true) {
                        View view3 = view2;
                        if (view3 == null) {
                            View rootView = zzi.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float zza2 = zzfhl.zza(rootView);
                                int size2 = arrayList.size();
                                while (true) {
                                    i = size2;
                                    if (i <= 0) {
                                        break;
                                    }
                                    int i2 = i - 1;
                                    if (zzfhl.zza((View) arrayList.get(i2)) <= zza2) {
                                        break;
                                    }
                                    size2 = i2;
                                }
                                arrayList.add(i, rootView);
                            }
                        } else if (view3.getAlpha() != 0.0f) {
                            ViewParent parent = view3.getParent();
                            view2 = parent instanceof View ? (View) parent : null;
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i3 = 0; i3 < size3; i3++) {
            zzfgzVar.zza((View) arrayList.get(i3), this.zza, jSONObject);
        }
    }
}
