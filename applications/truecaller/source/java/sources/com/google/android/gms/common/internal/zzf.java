package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.ConnectionResult;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.AbstractC24974k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzf.class */
public final class zzf extends AbstractC24974k {

    /* renamed from: g */
    public final IBinder f6052g;

    /* renamed from: h */
    public final /* synthetic */ BaseGmsClient f6053h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.f6053h = baseGmsClient;
        this.f6052g = iBinder;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1656b.AbstractC24974k
    /* renamed from: d */
    public final void mo4252d(ConnectionResult connectionResult) {
        if (this.f6053h.zzx != null) {
            this.f6053h.zzx.onConnectionFailed(connectionResult);
        }
        this.f6053h.onConnectionFailed(connectionResult);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0066, code lost:
        if (com.google.android.gms.common.internal.BaseGmsClient.zzn(r5.f6053h, 3, 4, r0) != false) goto L14;
     */
    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1656b.AbstractC24974k
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4251e() {
        /*
            r5 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            android.os.IBinder r0 = r0.f6052g     // Catch: android.os.RemoteException -> L96
            r7 = r0
            r0 = r7
            java.lang.String r1 = "null reference"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)     // Catch: android.os.RemoteException -> L96
            r0 = r7
            java.lang.String r0 = r0.getInterfaceDescriptor()     // Catch: android.os.RemoteException -> L96
            r7 = r0
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            java.lang.String r0 = r0.getServiceDescriptor()
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3b
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            java.lang.String r0 = r0.getServiceDescriptor()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r0 = r0.length()
            r0 = r7
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r0 = r0.length()
            r0 = 0
            return r0
        L3b:
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            r1 = r5
            android.os.IBinder r1 = r1.f6052g
            android.os.IInterface r0 = r0.createServiceInterface(r1)
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L94
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            r1 = 2
            r2 = 4
            r3 = r7
            boolean r0 = com.google.android.gms.common.internal.BaseGmsClient.zzn(r0, r1, r2, r3)
            if (r0 != 0) goto L69
            r0 = r6
            r8 = r0
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            r1 = 3
            r2 = 4
            r3 = r7
            boolean r0 = com.google.android.gms.common.internal.BaseGmsClient.zzn(r0, r1, r2, r3)
            if (r0 == 0) goto L94
        L69:
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            r1 = 0
            com.google.android.gms.common.internal.BaseGmsClient.zzg(r0, r1)
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            android.os.Bundle r0 = r0.getConnectionHint()
            r7 = r0
            r0 = r5
            com.google.android.gms.common.internal.BaseGmsClient r0 = r0.f6053h
            r9 = r0
            r0 = r9
            com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks r0 = com.google.android.gms.common.internal.BaseGmsClient.zzb(r0)
            if (r0 == 0) goto L92
            r0 = r9
            com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks r0 = com.google.android.gms.common.internal.BaseGmsClient.zzb(r0)
            r1 = r7
            r0.onConnected(r1)
        L92:
            r0 = 1
            r8 = r0
        L94:
            r0 = r8
            return r0
        L96:
            r7 = move-exception
            r0 = r6
            r8 = r0
            goto L94
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzf.mo4251e():boolean");
    }
}
