package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzag;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbn.class */
public final class zzbn extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ Long f8276j;

    /* renamed from: k */
    private final /* synthetic */ String f8277k;

    /* renamed from: l */
    private final /* synthetic */ String f8278l;

    /* renamed from: m */
    private final /* synthetic */ Bundle f8279m;

    /* renamed from: n */
    private final /* synthetic */ boolean f8280n;

    /* renamed from: o */
    private final /* synthetic */ boolean f8281o;

    /* renamed from: p */
    private final /* synthetic */ zzag f8282p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbn(zzag zzagVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzagVar);
        this.f8282p = zzagVar;
        this.f8276j = l;
        this.f8277k = str;
        this.f8278l = str2;
        this.f8279m = bundle;
        this.f8280n = z;
        this.f8281o = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    final void mo13397a() throws RemoteException {
        zzv zzvVar;
        Long l = this.f8276j;
        long longValue = l == null ? this.f8189f : l.longValue();
        zzvVar = this.f8282p.f8187h;
        zzvVar.logEvent(this.f8277k, this.f8278l, this.f8279m, this.f8280n, this.f8281o, longValue);
    }
}
