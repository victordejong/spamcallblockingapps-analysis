package com.google.android.gms.common.api.internal;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.GoogleApiAvailabilityCache;
import com.google.android.gms.signin.zad;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaan.class */
public final class zaan extends zaau {
    final /* synthetic */ zaak zagj;
    private final Map<Api.Client, zaam> zagl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaan(zaak zaakVar, Map<Api.Client, zaam> map) {
        super(zaakVar, null);
        this.zagj = zaakVar;
        this.zagl = map;
    }

    @Override // com.google.android.gms.common.api.internal.zaau
    public final void zaan() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        boolean z;
        Context context;
        zabe zabeVar;
        zad zadVar;
        zad zadVar2;
        zabe zabeVar2;
        Context context2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.zagj.zaey;
        GoogleApiAvailabilityCache googleApiAvailabilityCache = new GoogleApiAvailabilityCache(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.zagl.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z2 = this.zagl.get(client).zaec;
                if (!z2) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i = -1;
        int i2 = 0;
        if (arrayList.isEmpty()) {
            ArrayList arrayList3 = arrayList2;
            int size = arrayList3.size();
            while (true) {
                if (i2 >= size) {
                    break;
                }
                i2++;
                context3 = this.zagj.mContext;
                int clientAvailability = googleApiAvailabilityCache.getClientAvailability(context3, (Api.Client) arrayList3.get(i2));
                i = clientAvailability;
                if (clientAvailability == 0) {
                    i = clientAvailability;
                    break;
                }
            }
        } else {
            ArrayList arrayList4 = arrayList;
            int size2 = arrayList4.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size2) {
                    break;
                }
                i3++;
                context2 = this.zagj.mContext;
                int clientAvailability2 = googleApiAvailabilityCache.getClientAvailability(context2, (Api.Client) arrayList4.get(i3));
                i = clientAvailability2;
                if (clientAvailability2 != 0) {
                    i = clientAvailability2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zabeVar2 = this.zagj.zaft;
            zabeVar2.zaa(new zaao(this, this.zagj, connectionResult));
            return;
        }
        z = this.zagj.zagd;
        if (z) {
            zadVar = this.zagj.zagb;
            if (zadVar != null) {
                zadVar2 = this.zagj.zagb;
                zadVar2.connect();
            }
        }
        for (Api.Client client2 : this.zagl.keySet()) {
            zaam zaamVar = this.zagl.get(client2);
            if (client2.requiresGooglePlayServices()) {
                context = this.zagj.mContext;
                if (googleApiAvailabilityCache.getClientAvailability(context, client2) != 0) {
                    zabeVar = this.zagj.zaft;
                    zabeVar.zaa(new zaap(this, this.zagj, zaamVar));
                }
            }
            client2.connect(zaamVar);
        }
    }
}
