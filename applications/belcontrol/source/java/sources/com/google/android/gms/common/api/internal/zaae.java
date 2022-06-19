package com.google.android.gms.common.api.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaae.class */
public final class zaae implements Runnable {
    private final /* synthetic */ zaaf zaa;

    public zaae(zaaf zaafVar) {
        this.zaa = zaafVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaaf.zab(this.zaa).cancelAvailabilityErrorNotifications(zaaf.zaa(this.zaa));
    }
}
