package com.google.android.gms.analytics.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzd.class */
public abstract class zzd extends zzc {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3855a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzd(zzf zzfVar) {
        super(zzfVar);
    }

    public void initialize() {
        zzkO();
        this.f3855a = true;
    }

    public boolean isInitialized() {
        return this.f3855a;
    }

    public abstract void zzkO();

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzma() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
