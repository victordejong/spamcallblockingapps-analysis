package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
import p078c.p084c.p085a.p086a.p088b.p091c.HandlerC1854h;
/* renamed from: com.google.android.gms.common.internal.a1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a1.class */
public final class HandlerC6106a1 extends HandlerC1854h {

    /* renamed from: a */
    final /* synthetic */ AbstractC6113d f19488a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC6106a1(AbstractC6113d abstractC6113d, Looper looper) {
        super(looper);
        this.f19488a = abstractC6113d;
    }

    /* renamed from: a */
    private static final void m17145a(Message message) {
        AbstractC6109b1 abstractC6109b1 = (AbstractC6109b1) message.obj;
        abstractC6109b1.mo17000a();
        abstractC6109b1.m17141d();
    }

    /* renamed from: b */
    private static final boolean m17144b(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        AbstractC6113d.AbstractC6114a abstractC6114a;
        AbstractC6113d.AbstractC6114a abstractC6114a2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3;
        ConnectionResult connectionResult4;
        ConnectionResult connectionResult5;
        ConnectionResult connectionResult6;
        boolean z;
        if (this.f19488a.f19502E.get() != message.arg1) {
            if (!m17144b(message)) {
                return;
            }
            m17145a(message);
            return;
        }
        int i = message.what;
        if ((i == 1 || i == 7 || ((i == 4 && !this.f19488a.m17091t()) || message.what == 5)) && !this.f19488a.m17103f()) {
            m17145a(message);
            return;
        }
        int i2 = message.what;
        PendingIntent pendingIntent = null;
        if (i2 == 4) {
            this.f19488a.f19499B = new ConnectionResult(message.arg2);
            if (AbstractC6113d.m17114Y(this.f19488a)) {
                z = this.f19488a.f19500C;
                if (!z) {
                    this.f19488a.m17098h0(3, null);
                    return;
                }
            }
            connectionResult4 = this.f19488a.f19499B;
            if (connectionResult4 != null) {
                connectionResult6 = this.f19488a.f19499B;
                connectionResult5 = connectionResult6;
            } else {
                connectionResult5 = new ConnectionResult(8);
            }
            this.f19488a.f19518r.mo17087a(connectionResult5);
            this.f19488a.m17127K(connectionResult5);
        } else if (i2 == 5) {
            connectionResult = this.f19488a.f19499B;
            if (connectionResult != null) {
                connectionResult3 = this.f19488a.f19499B;
                connectionResult2 = connectionResult3;
            } else {
                connectionResult2 = new ConnectionResult(8);
            }
            this.f19488a.f19518r.mo17087a(connectionResult2);
            this.f19488a.m17127K(connectionResult2);
        } else if (i2 == 3) {
            Object obj = message.obj;
            if (obj instanceof PendingIntent) {
                pendingIntent = (PendingIntent) obj;
            }
            ConnectionResult connectionResult7 = new ConnectionResult(message.arg2, pendingIntent);
            this.f19488a.f19518r.mo17087a(connectionResult7);
            this.f19488a.m17127K(connectionResult7);
        } else if (i2 == 6) {
            this.f19488a.m17098h0(5, null);
            abstractC6114a = this.f19488a.f19523w;
            if (abstractC6114a != null) {
                abstractC6114a2 = this.f19488a.f19523w;
                abstractC6114a2.mo6333c0(message.arg2);
            }
            this.f19488a.m17126L(message.arg2);
            AbstractC6113d.m17106d0(this.f19488a, 5, 1, null);
        } else if (i2 == 2 && !this.f19488a.m17110b()) {
            m17145a(message);
        } else if (m17144b(message)) {
            ((AbstractC6109b1) message.obj).m17142c();
        } else {
            int i3 = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i3);
            Log.wtf("GmsClient", sb.toString(), new Exception());
        }
    }
}
