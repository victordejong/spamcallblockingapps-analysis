package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.internal.common.zzi;
/* renamed from: e.m.a.f.e.b.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/m.class */
public final class HandlerC24976m extends zzi {

    /* renamed from: a */
    public final /* synthetic */ BaseGmsClient f69925a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC24976m(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.f69925a = baseGmsClient;
    }

    /* renamed from: a */
    public static final boolean m4249a(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        TListener tlistener;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3;
        ConnectionResult connectionResult4;
        ConnectionResult connectionResult5;
        ConnectionResult connectionResult6;
        boolean z;
        if (this.f69925a.zzd.get() != message.arg1) {
            if (!m4249a(message)) {
                return;
            }
            zzc zzcVar = (zzc) message.obj;
            zzcVar.mo4253b();
            zzcVar.m38820c();
            return;
        }
        int i = message.what;
        if ((i == 1 || i == 7 || ((i == 4 && !this.f69925a.enableLocalFallback()) || message.what == 5)) && !this.f69925a.isConnecting()) {
            zzc zzcVar2 = (zzc) message.obj;
            zzcVar2.mo4253b();
            zzcVar2.m38820c();
            return;
        }
        int i2 = message.what;
        PendingIntent pendingIntent = null;
        if (i2 == 4) {
            this.f69925a.zzB = new ConnectionResult(message.arg2);
            if (BaseGmsClient.zzo(this.f69925a)) {
                BaseGmsClient baseGmsClient = this.f69925a;
                z = baseGmsClient.zzC;
                if (!z) {
                    baseGmsClient.zzp(3, null);
                    return;
                }
            }
            BaseGmsClient baseGmsClient2 = this.f69925a;
            connectionResult4 = baseGmsClient2.zzB;
            if (connectionResult4 != null) {
                connectionResult6 = baseGmsClient2.zzB;
                connectionResult5 = connectionResult6;
            } else {
                connectionResult5 = new ConnectionResult(8);
            }
            this.f69925a.zzc.mo4289a(connectionResult5);
            this.f69925a.onConnectionFailed(connectionResult5);
        } else if (i2 == 5) {
            BaseGmsClient baseGmsClient3 = this.f69925a;
            connectionResult = baseGmsClient3.zzB;
            if (connectionResult != null) {
                connectionResult3 = baseGmsClient3.zzB;
                connectionResult2 = connectionResult3;
            } else {
                connectionResult2 = new ConnectionResult(8);
            }
            this.f69925a.zzc.mo4289a(connectionResult2);
            this.f69925a.onConnectionFailed(connectionResult2);
        } else if (i2 == 3) {
            Object obj = message.obj;
            if (obj instanceof PendingIntent) {
                pendingIntent = (PendingIntent) obj;
            }
            ConnectionResult connectionResult7 = new ConnectionResult(message.arg2, pendingIntent);
            this.f69925a.zzc.mo4289a(connectionResult7);
            this.f69925a.onConnectionFailed(connectionResult7);
        } else if (i2 == 6) {
            this.f69925a.zzp(5, null);
            BaseGmsClient baseGmsClient4 = this.f69925a;
            baseConnectionCallbacks = baseGmsClient4.zzw;
            if (baseConnectionCallbacks != null) {
                baseConnectionCallbacks2 = baseGmsClient4.zzw;
                baseConnectionCallbacks2.onConnectionSuspended(message.arg2);
            }
            this.f69925a.onConnectionSuspended(message.arg2);
            BaseGmsClient.zzn(this.f69925a, 5, 1, null);
        } else if (i2 == 2 && !this.f69925a.isConnected()) {
            zzc zzcVar3 = (zzc) message.obj;
            zzcVar3.mo4253b();
            zzcVar3.m38820c();
        } else if (!m4249a(message)) {
            int i3 = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i3);
            Log.wtf("GmsClient", sb.toString(), new Exception());
        } else {
            zzc zzcVar4 = (zzc) message.obj;
            synchronized (zzcVar4) {
                tlistener = zzcVar4.f6045a;
                if (zzcVar4.f6046b) {
                    zzcVar4.toString().length();
                }
            }
            if (tlistener != 0) {
                try {
                    zzcVar4.mo4254a(tlistener);
                } catch (RuntimeException e) {
                    throw e;
                }
            }
            synchronized (zzcVar4) {
                zzcVar4.f6046b = true;
            }
            zzcVar4.m38820c();
        }
    }
}
