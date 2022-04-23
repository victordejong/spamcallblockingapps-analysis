package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/be.class */
public final class be extends aq {
    public final IBinder e;
    final /* synthetic */ d f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(d dVar, int i, IBinder iBinder, Bundle bundle) {
        super(dVar, i, bundle);
        this.f = dVar;
        this.e = iBinder;
    }

    @Override // com.google.android.gms.common.internal.aq
    protected final void a(ConnectionResult connectionResult) {
        if (this.f.zzx != null) {
            this.f.zzx.a(connectionResult);
        }
        this.f.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.aq
    protected final boolean a() {
        d.a aVar;
        d.a aVar2;
        try {
            IBinder iBinder = this.e;
            o.a(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f.getServiceDescriptor().equals(interfaceDescriptor)) {
                String serviceDescriptor = this.f.getServiceDescriptor();
                StringBuilder sb = new StringBuilder(String.valueOf(serviceDescriptor).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(serviceDescriptor);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface createServiceInterface = this.f.createServiceInterface(this.e);
            if (createServiceInterface == null) {
                return false;
            }
            if (!d.zzl(this.f, 2, 4, createServiceInterface) && !d.zzl(this.f, 3, 4, createServiceInterface)) {
                return false;
            }
            this.f.zzB = null;
            this.f.getConnectionHint();
            aVar = this.f.zzw;
            if (aVar == null) {
                return true;
            }
            aVar2 = this.f.zzw;
            aVar2.a();
            return true;
        } catch (RemoteException e) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
