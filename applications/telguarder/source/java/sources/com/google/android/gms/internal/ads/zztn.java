package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztn.class */
public final class zztn {
    private final Context context;
    private final Object lock = new Object();
    private zzte zzbve;
    private boolean zzbvv;

    public zztn(Context context) {
        this.context = context;
    }

    public final void disconnect() {
        synchronized (this.lock) {
            zzte zzteVar = this.zzbve;
            if (zzteVar == null) {
                return;
            }
            zzteVar.disconnect();
            this.zzbve = null;
            Binder.flushPendingCommands();
        }
    }

    public final Future<zztv> zzd(zzth zzthVar) {
        zztm zztmVar = new zztm(this);
        zztp zztpVar = new zztp(this, zzthVar, zztmVar);
        zztt zzttVar = new zztt(this, zztmVar);
        synchronized (this.lock) {
            zzte zzteVar = new zzte(this.context, zzr.zzlf().zzzp(), zztpVar, zzttVar);
            this.zzbve = zzteVar;
            zzteVar.checkAvailabilityAndConnect();
        }
        return zztmVar;
    }
}
