package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.zzc;
import com.google.android.datatransport.runtime.retries.RetryStrategy;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/zzb.class */
final /* synthetic */ class zzb implements RetryStrategy {

    /* renamed from: a */
    private static final zzb f6583a = new zzb();

    private zzb() {
    }

    /* renamed from: b */
    public static RetryStrategy m15480b() {
        return f6583a;
    }

    @Override // com.google.android.datatransport.runtime.retries.RetryStrategy
    /* renamed from: a */
    public Object mo15369a(Object obj, Object obj2) {
        return zzc.m15479c((zzc.zza) obj, (zzc.zzb) obj2);
    }
}
