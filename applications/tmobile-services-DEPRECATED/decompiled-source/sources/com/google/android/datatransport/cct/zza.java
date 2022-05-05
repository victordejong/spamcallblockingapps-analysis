package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.zzc;
import com.google.android.datatransport.runtime.retries.Function;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/zza.class */
final /* synthetic */ class zza implements Function {

    /* renamed from: a */
    private final zzc f6582a;

    private zza(zzc zzcVar) {
        this.f6582a = zzcVar;
    }

    /* renamed from: a */
    public static Function m15481a(zzc zzcVar) {
        return new zza(zzcVar);
    }

    @Override // com.google.android.datatransport.runtime.retries.Function
    public Object apply(Object obj) {
        zzc.zzb d;
        d = this.f6582a.m15478d((zzc.zza) obj);
        return d;
    }
}
