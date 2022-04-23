package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acp.class */
public final class acp extends zza {

    /* renamed from: a  reason: collision with root package name */
    final abb f23108a;

    /* renamed from: b  reason: collision with root package name */
    final acu f23109b;

    /* renamed from: c  reason: collision with root package name */
    private final String f23110c;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f23111d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acp(abb abbVar, acu acuVar, String str, String[] strArr) {
        this.f23108a = abbVar;
        this.f23109b = acuVar;
        this.f23110c = str;
        this.f23111d = strArr;
        zzr.zzlr().f23112a.add(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwp() {
        try {
            this.f23109b.a(this.f23110c, this.f23111d);
            zzj.zzegq.post(new acs(this));
        } catch (Throwable th) {
            zzj.zzegq.post(new acs(this));
            throw th;
        }
    }
}
