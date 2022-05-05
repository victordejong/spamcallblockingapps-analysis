package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.b;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ak.class */
public final class ak extends zzg<ak> {

    /* renamed from: a  reason: collision with root package name */
    public String f4111a;

    /* renamed from: b  reason: collision with root package name */
    public String f4112b;
    public String c;
    public String d;
    public boolean e;
    public String f;
    public boolean g;
    public double h;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("hitType", this.f4111a);
        hashMap.put("clientId", this.f4112b);
        hashMap.put("userId", this.c);
        hashMap.put("androidAdId", this.d);
        hashMap.put("AdTargetingEnabled", Boolean.valueOf(this.e));
        hashMap.put("sessionControl", this.f);
        hashMap.put("nonInteraction", Boolean.valueOf(this.g));
        hashMap.put("sampleRate", Double.valueOf(this.h));
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ak akVar) {
        boolean z = true;
        ak akVar2 = akVar;
        if (!TextUtils.isEmpty(this.f4111a)) {
            akVar2.f4111a = this.f4111a;
        }
        if (!TextUtils.isEmpty(this.f4112b)) {
            akVar2.f4112b = this.f4112b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            akVar2.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            akVar2.d = this.d;
        }
        if (this.e) {
            akVar2.e = true;
        }
        if (!TextUtils.isEmpty(this.f)) {
            akVar2.f = this.f;
        }
        if (this.g) {
            akVar2.g = this.g;
        }
        if (this.h != 0.0d) {
            double d = this.h;
            if (d < 0.0d || d > 100.0d) {
                z = false;
            }
            b.b(z, "Sample rate must be between 0% and 100%");
            akVar2.h = d;
        }
    }
}
