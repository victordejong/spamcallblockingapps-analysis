package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzb.class */
public final class zzb implements zzd {
    private final /* synthetic */ zza zzayv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar) {
        this.zzayv = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzd
    public final AdvertisingIdClient.Info zzna() {
        AdvertisingIdClient.Info info;
        Context context;
        try {
            context = this.zzayv.zzri;
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            this.zzayv.close();
            zzdi.zzb("GooglePlayServicesNotAvailableException getting Advertising Id Info", e);
            info = null;
            return info;
        } catch (GooglePlayServicesRepairableException e2) {
            zzdi.zzb("GooglePlayServicesRepairableException getting Advertising Id Info", e2);
            info = null;
            return info;
        } catch (IOException e3) {
            zzdi.zzb("IOException getting Ad Id Info", e3);
            info = null;
            return info;
        } catch (IllegalStateException e4) {
            zzdi.zzb("IllegalStateException getting Advertising Id Info", e4);
            info = null;
            return info;
        } catch (Exception e5) {
            zzdi.zzb("Unknown exception. Could not get the Advertising Id Info.", e5);
            info = null;
            return info;
        }
        return info;
    }
}
