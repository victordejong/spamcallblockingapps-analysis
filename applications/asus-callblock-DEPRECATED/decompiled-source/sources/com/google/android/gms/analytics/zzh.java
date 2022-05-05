package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.internal.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzh.class */
public abstract class zzh<T extends zzh> {

    /* renamed from: a  reason: collision with root package name */
    private final zzi f3897a;

    /* renamed from: b  reason: collision with root package name */
    private final List<zzf> f3898b = new ArrayList();
    protected final zze zzUx;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzh(zzi zziVar, d dVar) {
        b.a(zziVar);
        this.f3897a = zziVar;
        zze zzeVar = new zze(this, dVar);
        zzeVar.g = true;
        this.zzUx = zzeVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zze zzeVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzd(zze zzeVar) {
        for (zzf zzfVar : this.f3898b) {
            zzfVar.zza(this, zzeVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzi zzkG() {
        return this.f3897a;
    }

    public zze zzkJ() {
        return this.zzUx;
    }

    public List<zzk> zzkK() {
        return this.zzUx.zzkA();
    }

    public zze zzkk() {
        zze zzky = this.zzUx.zzky();
        zzd(zzky);
        return zzky;
    }
}
