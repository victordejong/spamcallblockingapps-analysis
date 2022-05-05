package com.google.android.gms.common.api.internal;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.GoogleApiAvailabilityCache;
import com.google.android.gms.signin.zac;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaal.class */
public final class zaal extends zaau {

    /* renamed from: g */
    private final Map<Api.Client, zaam> f7164g;

    /* renamed from: h */
    final /* synthetic */ zaak f7165h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaal(zaak zaakVar, Map<Api.Client, zaam> map) {
        super(zaakVar, null);
        this.f7165h = zaakVar;
        this.f7164g = map;
    }

    @Override // com.google.android.gms.common.api.internal.zaau
    @GuardedBy
    @WorkerThread
    /* renamed from: a */
    public final void mo14822a() {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        boolean z;
        Context context;
        zabe zabeVar;
        zac zacVar;
        zac zacVar2;
        zabe zabeVar2;
        Context context2;
        Context context3;
        boolean z2;
        googleApiAvailabilityLight = this.f7165h.f7146d;
        GoogleApiAvailabilityCache googleApiAvailabilityCache = new GoogleApiAvailabilityCache(googleApiAvailabilityLight);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.Client client : this.f7164g.keySet()) {
            if (client.requiresGooglePlayServices()) {
                z2 = this.f7164g.get(client).f7168c;
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
            int size = arrayList2.size();
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList2.get(i3);
                i3++;
                context3 = this.f7165h.f7145c;
                int b = googleApiAvailabilityCache.m14542b(context3, (Api.Client) obj);
                i = b;
                if (b == 0) {
                    i = b;
                    break;
                }
            }
        } else {
            int size2 = arrayList.size();
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList.get(i2);
                i2++;
                context2 = this.f7165h.f7145c;
                int b2 = googleApiAvailabilityCache.m14542b(context2, (Api.Client) obj2);
                i = b2;
                if (b2 != 0) {
                    i = b2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zabeVar2 = this.f7165h.f7143a;
            zabeVar2.m14793f(new zaao(this, this.f7165h, connectionResult));
            return;
        }
        z = this.f7165h.f7155m;
        if (z) {
            zacVar = this.f7165h.f7153k;
            if (zacVar != null) {
                zacVar2 = this.f7165h.f7153k;
                zacVar2.connect();
            }
        }
        for (Api.Client client2 : this.f7164g.keySet()) {
            zaam zaamVar = this.f7164g.get(client2);
            if (client2.requiresGooglePlayServices()) {
                context = this.f7165h.f7145c;
                if (googleApiAvailabilityCache.m14542b(context, client2) != 0) {
                    zabeVar = this.f7165h.f7143a;
                    zabeVar.m14793f(new zaan(this, this.f7165h, zaamVar));
                }
            }
            client2.connect(zaamVar);
        }
    }
}
