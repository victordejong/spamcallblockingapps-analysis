package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfla.class */
public final class zzfla implements zzfky {
    private final zzfky zza;

    public zzfla(zzfky zzfkyVar) {
        this.zza = zzfkyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfky
    public final JSONObject zza(View view) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfky
    public final void zzb(View view, JSONObject jSONObject, zzfkx zzfkxVar, boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        zzfkp zza = zzfkp.zza();
        if (zza != null) {
            Collection<zzfke> zzb = zza.zzb();
            int size = zzb.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (zzfke zzfkeVar : zzb) {
                View zzf = zzfkeVar.zzf();
                if (zzf != null && zzf.isAttachedToWindow() && zzf.isShown()) {
                    View view2 = zzf;
                    while (true) {
                        View view3 = view2;
                        if (view3 == null) {
                            View rootView = zzf.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float zza2 = zzflj.zza(rootView);
                                int size2 = arrayList.size();
                                while (true) {
                                    i = size2;
                                    if (i <= 0) {
                                        break;
                                    }
                                    int i2 = i - 1;
                                    if (zzflj.zza((View) arrayList.get(i2)) <= zza2) {
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
            zzfkxVar.zza((View) arrayList.get(i3), this.zza, jSONObject);
        }
    }
}
