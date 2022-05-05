package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.apptentive.android.sdk.module.engagement.interaction.model.NavigateToLinkInteraction;
import com.google.android.gms.analytics.zzi;
import com.privacystar.core.util.BlockingManager;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzai.class */
public final class zzai extends zzi<zzai> {
    public String zzvd;
    public String zzve;
    public String zzvf;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("network", this.zzvd);
        hashMap.put(BlockingManager.ACTION_CONSTANT, this.zzve);
        hashMap.put(NavigateToLinkInteraction.KEY_TARGET, this.zzvf);
        return zza((Object) hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzai zzaiVar) {
        zzai zzaiVar2 = zzaiVar;
        if (!TextUtils.isEmpty(this.zzvd)) {
            zzaiVar2.zzvd = this.zzvd;
        }
        if (!TextUtils.isEmpty(this.zzve)) {
            zzaiVar2.zzve = this.zzve;
        }
        if (!TextUtils.isEmpty(this.zzvf)) {
            zzaiVar2.zzvf = this.zzvf;
        }
    }
}
