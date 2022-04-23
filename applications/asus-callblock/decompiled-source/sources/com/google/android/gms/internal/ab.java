package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ab.class */
public final class ab extends zzg<ab> {

    /* renamed from: a  reason: collision with root package name */
    public String f4096a;

    /* renamed from: b  reason: collision with root package name */
    public String f4097b;
    public String c;
    public String d;

    /* renamed from: a */
    public final void zzb(ab abVar) {
        if (!TextUtils.isEmpty(this.f4096a)) {
            abVar.f4096a = this.f4096a;
        }
        if (!TextUtils.isEmpty(this.f4097b)) {
            abVar.f4097b = this.f4097b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            abVar.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            abVar.d = this.d;
        }
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("appName", this.f4096a);
        hashMap.put("appVersion", this.f4097b);
        hashMap.put("appId", this.c);
        hashMap.put("appInstallerId", this.d);
        return zzj(hashMap);
    }
}
