package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.common.internal.be */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/be.class */
public final class C12006be extends AbstractC11991aq {

    /* renamed from: e */
    public final IBinder f39510e;

    /* renamed from: f */
    final /* synthetic */ AbstractC12025d f39511f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12006be(AbstractC12025d abstractC12025d, int i, IBinder iBinder, Bundle bundle) {
        super(abstractC12025d, i, bundle);
        this.f39511f = abstractC12025d;
        this.f39510e = iBinder;
    }

    @Override // com.google.android.gms.common.internal.AbstractC11991aq
    /* renamed from: a */
    protected final void mo19207a(ConnectionResult connectionResult) {
        if (this.f39511f.zzx != null) {
            this.f39511f.zzx.mo11761a(connectionResult);
        }
        this.f39511f.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.AbstractC11991aq
    /* renamed from: a */
    protected final boolean mo19208a() {
        AbstractC12025d.AbstractC12026a abstractC12026a;
        AbstractC12025d.AbstractC12026a abstractC12026a2;
        try {
            IBinder iBinder = this.f39510e;
            C12045o.m19162a(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f39511f.getServiceDescriptor().equals(interfaceDescriptor)) {
                String serviceDescriptor = this.f39511f.getServiceDescriptor();
                StringBuilder sb = new StringBuilder(String.valueOf(serviceDescriptor).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(serviceDescriptor);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface createServiceInterface = this.f39511f.createServiceInterface(this.f39510e);
            if (createServiceInterface == null) {
                return false;
            }
            if (!AbstractC12025d.zzl(this.f39511f, 2, 4, createServiceInterface) && !AbstractC12025d.zzl(this.f39511f, 3, 4, createServiceInterface)) {
                return false;
            }
            this.f39511f.zzB = null;
            this.f39511f.getConnectionHint();
            abstractC12026a = this.f39511f.zzw;
            if (abstractC12026a == null) {
                return true;
            }
            abstractC12026a2 = this.f39511f.zzw;
            abstractC12026a2.mo11764a();
            return true;
        } catch (RemoteException e) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
