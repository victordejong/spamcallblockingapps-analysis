package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/am.class */
public final class am extends zzg<am> {

    /* renamed from: a  reason: collision with root package name */
    public String f4115a;

    /* renamed from: b  reason: collision with root package name */
    public String f4116b;
    public String c;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("network", this.f4115a);
        hashMap.put("action", this.f4116b);
        hashMap.put("target", this.c);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(am amVar) {
        am amVar2 = amVar;
        if (!TextUtils.isEmpty(this.f4115a)) {
            amVar2.f4115a = this.f4115a;
        }
        if (!TextUtils.isEmpty(this.f4116b)) {
            amVar2.f4116b = this.f4116b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            amVar2.c = this.c;
        }
    }
}
