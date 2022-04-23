package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/l.class */
public final class l extends elq {

    /* renamed from: a  reason: collision with root package name */
    it f28143a;

    @Override // com.google.android.gms.internal.ads.eln
    public final void a() throws RemoteException {
        za.zzex("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        yq.f28555a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.k

            /* renamed from: a  reason: collision with root package name */
            private final l f28094a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28094a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                l lVar = this.f28094a;
                if (lVar.f28143a != null) {
                    try {
                        lVar.f28143a.a(Collections.emptyList());
                    } catch (RemoteException e) {
                        za.zzd("Could not notify onComplete event.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(float f) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(b bVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(it itVar) throws RemoteException {
        this.f28143a = itVar;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(mm mmVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(zzaat zzaatVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(String str, b bVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final float b() throws RemoteException {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void b(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final boolean c() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final String d() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final List<zzajm> e() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void f() {
    }
}
