package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.internal.p357c.HandlerC13168h;
/* renamed from: com.google.android.gms.common.internal.ba */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ba.class */
public final class HandlerC12002ba extends HandlerC13168h {

    /* renamed from: a */
    final /* synthetic */ AbstractC12025d f39502a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC12002ba(AbstractC12025d abstractC12025d, Looper looper) {
        super(looper);
        this.f39502a = abstractC12025d;
    }

    /* renamed from: a */
    private static final void m19214a(Message message) {
        ((AbstractC12003bb) message.obj).m19210d();
    }

    /* renamed from: b */
    private static final boolean m19213b(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        AbstractC12025d.AbstractC12026a abstractC12026a;
        AbstractC12025d.AbstractC12026a abstractC12026a2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3;
        ConnectionResult connectionResult4;
        ConnectionResult connectionResult5;
        ConnectionResult connectionResult6;
        boolean z;
        if (this.f39502a.zzd.get() != message.arg1) {
            if (!m19213b(message)) {
                return;
            }
            m19214a(message);
        } else if ((message.what == 1 || message.what == 7 || ((message.what == 4 && !this.f39502a.enableLocalFallback()) || message.what == 5)) && !this.f39502a.isConnecting()) {
            m19214a(message);
        } else {
            PendingIntent pendingIntent = null;
            if (message.what == 4) {
                this.f39502a.zzB = new ConnectionResult(message.arg2);
                if (AbstractC12025d.zzg(this.f39502a)) {
                    z = this.f39502a.zzC;
                    if (!z) {
                        this.f39502a.zzp(3, null);
                        return;
                    }
                }
                connectionResult4 = this.f39502a.zzB;
                if (connectionResult4 != null) {
                    connectionResult6 = this.f39502a.zzB;
                    connectionResult5 = connectionResult6;
                } else {
                    connectionResult5 = new ConnectionResult(8);
                }
                this.f39502a.zzc.mo19188a(connectionResult5);
                this.f39502a.onConnectionFailed(connectionResult5);
            } else if (message.what == 5) {
                connectionResult = this.f39502a.zzB;
                if (connectionResult != null) {
                    connectionResult3 = this.f39502a.zzB;
                    connectionResult2 = connectionResult3;
                } else {
                    connectionResult2 = new ConnectionResult(8);
                }
                this.f39502a.zzc.mo19188a(connectionResult2);
                this.f39502a.onConnectionFailed(connectionResult2);
            } else if (message.what == 3) {
                if (message.obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) message.obj;
                }
                ConnectionResult connectionResult7 = new ConnectionResult(message.arg2, pendingIntent);
                this.f39502a.zzc.mo19188a(connectionResult7);
                this.f39502a.onConnectionFailed(connectionResult7);
            } else if (message.what == 6) {
                this.f39502a.zzp(5, null);
                abstractC12026a = this.f39502a.zzw;
                if (abstractC12026a != null) {
                    abstractC12026a2 = this.f39502a.zzw;
                    abstractC12026a2.mo11763a(message.arg2);
                }
                this.f39502a.onConnectionSuspended(message.arg2);
                AbstractC12025d.zzl(this.f39502a, 5, 1, null);
            } else if (message.what == 2 && !this.f39502a.isConnected()) {
                m19214a(message);
            } else if (m19213b(message)) {
                ((AbstractC12003bb) message.obj).m19211c();
            } else {
                int i = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("GmsClient", sb.toString(), new Exception());
            }
        }
    }
}
