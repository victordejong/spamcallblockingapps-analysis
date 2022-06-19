package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/l.class */
public final class BinderC12706l extends elq {

    /* renamed from: a */
    AbstractC12645it f49460a;

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14548a() throws RemoteException {
        C13088za.zzex("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        C13077yq.f50094a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.k

            /* renamed from: a */
            private final BinderC12706l f49406a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49406a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                BinderC12706l binderC12706l = this.f49406a;
                if (binderC12706l.f49460a != null) {
                    try {
                        binderC12706l.f49460a.mo14595a(Collections.emptyList());
                    } catch (RemoteException e) {
                        C13088za.zzd("Could not notify onComplete event.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14547a(float f) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14546a(AbstractC12126b abstractC12126b, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14545a(AbstractC12645it abstractC12645it) throws RemoteException {
        this.f49460a = abstractC12645it;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14544a(AbstractC12746mm abstractC12746mm) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14543a(zzaat zzaatVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14542a(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14541a(String str, AbstractC12126b abstractC12126b) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14540a(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: b */
    public final float mo14539b() throws RemoteException {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: b */
    public final void mo14538b(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: c */
    public final boolean mo14537c() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: d */
    public final String mo14536d() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: e */
    public final List<zzajm> mo14535e() throws RemoteException {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: f */
    public final void mo14534f() {
    }
}
