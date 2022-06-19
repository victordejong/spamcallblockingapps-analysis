package com.google.android.gms.common.api.internal;

import android.util.Log;
import androidx.p014c.C0374a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaz.class */
public final class zaz implements OnCompleteListener<Map<zai<?>, String>> {
    private final /* synthetic */ zax zafi;

    /* JADX INFO: Access modifiers changed from: private */
    public zaz(zax zaxVar) {
        this.zafi = zaxVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Map<zai<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        Map map;
        ConnectionResult connectionResult;
        Condition condition;
        zaaw zaawVar;
        ConnectionResult connectionResult2;
        Map map2;
        Map map3;
        ConnectionResult zaaf;
        boolean z2;
        ConnectionResult zaaf2;
        Map map4;
        Map map5;
        boolean zaa;
        Map map6;
        Map map7;
        Map map8;
        Map map9;
        Map map10;
        lock = this.zafi.zaeo;
        lock.lock();
        try {
            z = this.zafi.zafd;
            if (!z) {
                return;
            }
            if (task.isSuccessful()) {
                zax zaxVar = this.zafi;
                map8 = this.zafi.zaeu;
                zaxVar.zafe = new C0374a(map8.size());
                map9 = this.zafi.zaeu;
                for (zaw zawVar : map9.values()) {
                    map10 = this.zafi.zafe;
                    map10.put(zawVar.zak(), ConnectionResult.RESULT_SUCCESS);
                }
            } else if (task.getException() instanceof AvailabilityException) {
                AvailabilityException availabilityException = (AvailabilityException) task.getException();
                z2 = this.zafi.zafb;
                if (z2) {
                    zax zaxVar2 = this.zafi;
                    map4 = this.zafi.zaeu;
                    zaxVar2.zafe = new C0374a(map4.size());
                    map5 = this.zafi.zaeu;
                    for (zaw zawVar2 : map5.values()) {
                        Object zak = zawVar2.zak();
                        ConnectionResult connectionResult3 = availabilityException.getConnectionResult(zawVar2);
                        zaa = this.zafi.zaa(zawVar2, connectionResult3);
                        if (zaa) {
                            map6 = this.zafi.zafe;
                            map6.put(zak, new ConnectionResult(16));
                        } else {
                            map7 = this.zafi.zafe;
                            map7.put(zak, connectionResult3);
                        }
                    }
                } else {
                    this.zafi.zafe = availabilityException.zaj();
                }
                zax zaxVar3 = this.zafi;
                zaaf2 = this.zafi.zaaf();
                zaxVar3.zafh = zaaf2;
            } else {
                Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                this.zafi.zafe = Collections.emptyMap();
                this.zafi.zafh = new ConnectionResult(8);
            }
            map = this.zafi.zaff;
            if (map != null) {
                map2 = this.zafi.zafe;
                map3 = this.zafi.zaff;
                map2.putAll(map3);
                zax zaxVar4 = this.zafi;
                zaaf = this.zafi.zaaf();
                zaxVar4.zafh = zaaf;
            }
            connectionResult = this.zafi.zafh;
            if (connectionResult == null) {
                this.zafi.zaad();
                this.zafi.zaae();
            } else {
                this.zafi.zafd = false;
                zaawVar = this.zafi.zaex;
                connectionResult2 = this.zafi.zafh;
                zaawVar.zac(connectionResult2);
            }
            condition = this.zafi.zaez;
            condition.signalAll();
        } finally {
            lock2 = this.zafi.zaeo;
            lock2.unlock();
        }
    }
}
