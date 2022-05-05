package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.util.BlockingManager;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzae.class */
public final class zzae extends zzi<zzae> {
    private String category;
    private String label;
    private long value;
    private String zzul;

    public final String getAction() {
        return this.zzul;
    }

    public final String getLabel() {
        return this.label;
    }

    public final long getValue() {
        return this.value;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.category);
        hashMap.put(BlockingManager.ACTION_CONSTANT, this.zzul);
        hashMap.put("label", this.label);
        hashMap.put(FirebaseAnalytics.Param.VALUE, Long.valueOf(this.value));
        return zza((Object) hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzae zzaeVar) {
        zzae zzaeVar2 = zzaeVar;
        if (!TextUtils.isEmpty(this.category)) {
            zzaeVar2.category = this.category;
        }
        if (!TextUtils.isEmpty(this.zzul)) {
            zzaeVar2.zzul = this.zzul;
        }
        if (!TextUtils.isEmpty(this.label)) {
            zzaeVar2.label = this.label;
        }
        if (this.value != 0) {
            zzaeVar2.value = this.value;
        }
    }

    public final String zzbb() {
        return this.category;
    }
}
