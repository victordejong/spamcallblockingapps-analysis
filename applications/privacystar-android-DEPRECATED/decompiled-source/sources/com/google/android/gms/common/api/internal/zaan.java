package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.GoogleApiAvailabilityCache;
import com.google.android.gms.signin.zad;
import java.util.ArrayList;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaan.class */
public final class zaan extends zaau {
    final /* synthetic */ zaak zagi;
    private final Map<Api.Client, zaam> zagk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaan(zaak zaakVar, Map<Api.Client, zaam> map) {
        super(zaakVar, null);
        this.zagi = zaakVar;
        this.zagk = map;
    }

    @Override // com.google.android.gms.common.api.internal.zaau
    @WorkerThread
    public final void zaan() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        boolean z;
        Context context;
        zabe zabeVar;
        zad zadVar;
        zabe zabeVar2;
        Context context2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.zagi.zaex;
        GoogleApiAvailabilityCache googleApiAvailabilityCache = new GoogleApiAvailabilityCache(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.zagk.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z2 = this.zagk.get(client).zaeb;
                if (!z2) {
                    arrayList.add(client);
                }
            }
            arrayList2.add(client);
        }
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        if (arrayList.isEmpty()) {
            ArrayList arrayList3 = arrayList2;
            int size = arrayList3.size();
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList3.get(i3);
                i3++;
                context3 = this.zagi.mContext;
                int clientAvailability = googleApiAvailabilityCache.getClientAvailability(context3, (Api.Client) obj);
                i = clientAvailability;
                if (clientAvailability == 0) {
                    i = clientAvailability;
                    break;
                }
            }
        } else {
            ArrayList arrayList4 = arrayList;
            int size2 = arrayList4.size();
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList4.get(i2);
                i2++;
                context2 = this.zagi.mContext;
                int clientAvailability2 = googleApiAvailabilityCache.getClientAvailability(context2, (Api.Client) obj2);
                i = clientAvailability2;
                if (clientAvailability2 != 0) {
                    i = clientAvailability2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zabeVar2 = this.zagi.zafs;
            zabeVar2.zaa(new zaao(this, this.zagi, connectionResult));
            return;
        }
        z = this.zagi.zagc;
        if (z) {
            zadVar = this.zagi.zaga;
            zadVar.connect();
        }
        for (Api.Client client2 : this.zagk.keySet()) {
            zaam zaamVar = this.zagk.get(client2);
            if (client2.requiresGooglePlayServices()) {
                context = this.zagi.mContext;
                if (googleApiAvailabilityCache.getClientAvailability(context, client2) != 0) {
                    zabeVar = this.zagi.zafs;
                    zabeVar.zaa(new zaap(this, this.zagi, zaamVar));
                }
            }
            client2.connect(zaamVar);
        }
    }
}
