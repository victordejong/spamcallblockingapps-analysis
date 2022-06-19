package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zal;
import com.google.android.gms.signin.zae;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaal.class */
public final class zaal extends zaaq {
    public final /* synthetic */ zaar zaa;
    private final Map<Api.Client, zaai> zac;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaal(zaar zaarVar, Map<Api.Client, zaai> map) {
        super(zaarVar, null);
        this.zaa = zaarVar;
        this.zac = map;
    }

    @Override // com.google.android.gms.common.api.internal.zaaq
    @GuardedBy("mLock")
    public final void zaa() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        boolean z;
        Context context;
        zabd zabdVar;
        zae zaeVar;
        zae zaeVar2;
        zabd zabdVar2;
        Context context2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.zaa.zad;
        zal zalVar = new zal(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.zac.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z2 = this.zac.get(client).zac;
                if (!z2) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i = -1;
        int i2 = 0;
        if (arrayList.isEmpty()) {
            int size = arrayList2.size();
            while (true) {
                if (i2 >= size) {
                    break;
                }
                context3 = this.zaa.zac;
                int zaa = zalVar.zaa(context3, (Api.Client) arrayList2.get(i2));
                i2++;
                i = zaa;
                if (zaa == 0) {
                    i = zaa;
                    break;
                }
            }
        } else {
            int size2 = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    break;
                }
                context2 = this.zaa.zac;
                int zaa2 = zalVar.zaa(context2, (Api.Client) arrayList.get(i3));
                i3++;
                i = zaa2;
                if (zaa2 != 0) {
                    i = zaa2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zabdVar2 = this.zaa.zaa;
            zabdVar2.zar(new zaaj(this, this.zaa, connectionResult));
            return;
        }
        z = this.zaa.zam;
        if (z) {
            zaeVar = this.zaa.zak;
            if (zaeVar != null) {
                zaeVar2 = this.zaa.zak;
                zaeVar2.zad();
            }
        }
        for (Api.Client client2 : this.zac.keySet()) {
            zaai zaaiVar = this.zac.get(client2);
            if (client2.requiresGooglePlayServices()) {
                context = this.zaa.zac;
                if (zalVar.zaa(context, client2) != 0) {
                    zabdVar = this.zaa.zaa;
                    zabdVar.zar(new zaak(this, this.zaa, zaaiVar));
                }
            }
            client2.connect(zaaiVar);
        }
    }
}
