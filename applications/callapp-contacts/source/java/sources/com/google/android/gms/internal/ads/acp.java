package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acp.class */
public final class acp extends zza {

    /* renamed from: a */
    final abb f39912a;

    /* renamed from: b */
    final acu f39913b;

    /* renamed from: c */
    private final String f39914c;

    /* renamed from: d */
    private final String[] f39915d;

    public acp(abb abbVar, acu acuVar, String str, String[] strArr) {
        this.f39912a = abbVar;
        this.f39913b = acuVar;
        this.f39914c = str;
        this.f39915d = strArr;
        zzr.zzlr().f39916a.add(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        try {
            this.f39913b.mo18865a(this.f39914c, this.f39915d);
            zzj.zzegq.post(new acs(this));
        } catch (Throwable th) {
            zzj.zzegq.post(new acs(this));
            throw th;
        }
    }
}
