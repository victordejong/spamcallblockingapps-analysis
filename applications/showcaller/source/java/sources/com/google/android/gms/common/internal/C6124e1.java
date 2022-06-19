package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.common.internal.e1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e1.class */
public final class C6124e1 extends AbstractC6162q0 {

    /* renamed from: g */
    public final IBinder f19547g;

    /* renamed from: h */
    final /* synthetic */ AbstractC6113d f19548h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6124e1(AbstractC6113d abstractC6113d, int i, IBinder iBinder, Bundle bundle) {
        super(abstractC6113d, i, bundle);
        this.f19548h = abstractC6113d;
        this.f19547g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6162q0
    /* renamed from: f */
    protected final boolean mo16998f() {
        AbstractC6113d.AbstractC6114a abstractC6114a;
        AbstractC6113d.AbstractC6114a abstractC6114a2;
        try {
            IBinder iBinder = this.f19547g;
            C6155o.m17018j(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f19548h.mo5861D().equals(interfaceDescriptor)) {
                String mo5861D = this.f19548h.mo5861D();
                StringBuilder sb = new StringBuilder(String.valueOf(mo5861D).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(mo5861D);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.e("GmsClient", sb.toString());
                return false;
            }
            IInterface mo5854s = this.f19548h.mo5854s(this.f19547g);
            if (mo5854s == null) {
                return false;
            }
            if (!AbstractC6113d.m17106d0(this.f19548h, 2, 4, mo5854s) && !AbstractC6113d.m17106d0(this.f19548h, 3, 4, mo5854s)) {
                return false;
            }
            this.f19548h.f19499B = null;
            Bundle m17090w = this.f19548h.m17090w();
            abstractC6114a = this.f19548h.f19523w;
            if (abstractC6114a == null) {
                return true;
            }
            abstractC6114a2 = this.f19548h.f19523w;
            abstractC6114a2.mo6337J0(m17090w);
            return true;
        } catch (RemoteException e) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6162q0
    /* renamed from: g */
    protected final void mo16997g(ConnectionResult connectionResult) {
        if (this.f19548h.f19524x != null) {
            this.f19548h.f19524x.mo6338D0(connectionResult);
        }
        this.f19548h.m17127K(connectionResult);
    }
}
