package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/aj.class */
public final class aj extends zzg<aj> {

    /* renamed from: a  reason: collision with root package name */
    public String f4109a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f4110b;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("description", this.f4109a);
        hashMap.put("fatal", Boolean.valueOf(this.f4110b));
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(aj ajVar) {
        aj ajVar2 = ajVar;
        if (!TextUtils.isEmpty(this.f4109a)) {
            ajVar2.f4109a = this.f4109a;
        }
        if (this.f4110b) {
            ajVar2.f4110b = this.f4110b;
        }
    }
}
