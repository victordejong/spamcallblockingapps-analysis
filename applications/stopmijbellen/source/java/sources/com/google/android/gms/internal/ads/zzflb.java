package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflb.class */
public final class zzflb implements zzfky {
    private final int[] zza = new int[2];

    @Override // com.google.android.gms.internal.ads.zzfky
    public final JSONObject zza(View view) {
        if (view == null) {
            return zzflg.zza(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.zza);
        int[] iArr = this.zza;
        return zzflg.zza(iArr[0], iArr[1], width, height);
    }

    @Override // com.google.android.gms.internal.ads.zzfky
    public final void zzb(View view, JSONObject jSONObject, zzfkx zzfkxVar, boolean z) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (!z) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                zzfkxVar.zza(viewGroup.getChildAt(i), this, jSONObject);
            }
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(childAt.getZ()));
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
                hashMap.put(Float.valueOf(childAt.getZ()), arrayList2);
            }
            arrayList2.add(childAt);
        }
        ArrayList arrayList3 = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList3);
        int size = arrayList3.size();
        for (int i3 = 0; i3 < size; i3++) {
            ArrayList arrayList4 = (ArrayList) hashMap.get((Float) arrayList3.get(i3));
            int size2 = arrayList4.size();
            for (int i4 = 0; i4 < size2; i4++) {
                zzfkxVar.zza((View) arrayList4.get(i4), this, jSONObject);
            }
        }
    }
}
