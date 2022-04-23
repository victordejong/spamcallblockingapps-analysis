package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ah.class */
final class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ConnectionResult f22640a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ai f22641b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(ai aiVar, ConnectionResult connectionResult) {
        this.f22641b = aiVar;
        this.f22640a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        map = this.f22641b.f22645d.s;
        af afVar = (af) map.get(this.f22641b.f22643b);
        if (afVar != null) {
            if (this.f22640a.isSuccess()) {
                this.f22641b.f22644c = true;
                if (this.f22641b.f22642a.requiresSignIn()) {
                    this.f22641b.a();
                    return;
                }
                try {
                    this.f22641b.f22642a.getRemoteService(null, this.f22641b.f22642a.a());
                } catch (SecurityException e) {
                    Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                    this.f22641b.f22642a.disconnect("Failed to get service from broker.");
                    afVar.a(new ConnectionResult(10), (Exception) null);
                }
            } else {
                afVar.a(this.f22640a, (Exception) null);
            }
        }
    }
}
