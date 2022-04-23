package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.internal.c.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ba.class */
public final class ba extends h {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f22853a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ba(d dVar, Looper looper) {
        super(looper);
        this.f22853a = dVar;
    }

    private static final void a(Message message) {
        ((bb) message.obj).d();
    }

    private static final boolean b(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        d.a aVar;
        d.a aVar2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        boolean z;
        if (this.f22853a.zzd.get() != message.arg1) {
            if (b(message)) {
                a(message);
            }
        } else if ((message.what == 1 || message.what == 7 || ((message.what == 4 && !this.f22853a.enableLocalFallback()) || message.what == 5)) && !this.f22853a.isConnecting()) {
            a(message);
        } else {
            PendingIntent pendingIntent = null;
            if (message.what == 4) {
                this.f22853a.zzB = new ConnectionResult(message.arg2);
                if (d.zzg(this.f22853a)) {
                    z = this.f22853a.zzC;
                    if (!z) {
                        this.f22853a.zzp(3, null);
                        return;
                    }
                }
                connectionResult2 = this.f22853a.zzB;
                ConnectionResult connectionResult3 = connectionResult2 != null ? this.f22853a.zzB : new ConnectionResult(8);
                this.f22853a.zzc.a(connectionResult3);
                this.f22853a.onConnectionFailed(connectionResult3);
            } else if (message.what == 5) {
                connectionResult = this.f22853a.zzB;
                ConnectionResult connectionResult4 = connectionResult != null ? this.f22853a.zzB : new ConnectionResult(8);
                this.f22853a.zzc.a(connectionResult4);
                this.f22853a.onConnectionFailed(connectionResult4);
            } else if (message.what == 3) {
                if (message.obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) message.obj;
                }
                ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, pendingIntent);
                this.f22853a.zzc.a(connectionResult5);
                this.f22853a.onConnectionFailed(connectionResult5);
            } else if (message.what == 6) {
                this.f22853a.zzp(5, null);
                aVar = this.f22853a.zzw;
                if (aVar != null) {
                    aVar2 = this.f22853a.zzw;
                    aVar2.a(message.arg2);
                }
                this.f22853a.onConnectionSuspended(message.arg2);
                d.zzl(this.f22853a, 5, 1, null);
            } else if (message.what == 2 && !this.f22853a.isConnected()) {
                a(message);
            } else if (b(message)) {
                ((bb) message.obj).c();
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
