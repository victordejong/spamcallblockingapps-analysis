package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztp.class */
public final class zztp implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zztn zzbvu;
    private final /* synthetic */ zzth zzbwa;
    private final /* synthetic */ zzbaa zzbwb;

    public zztp(zztn zztnVar, zzth zzthVar, zzbaa zzbaaVar) {
        this.zzbvu = zztnVar;
        this.zzbwa = zzthVar;
        this.zzbwb = zzbaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        boolean z;
        zzte zzteVar;
        obj = this.zzbvu.lock;
        synchronized (obj) {
            z = this.zzbvu.zzbvv;
            if (z) {
                return;
            }
            this.zzbvu.zzbvv = true;
            zzteVar = this.zzbvu.zzbve;
            if (zzteVar == null) {
                return;
            }
            zzdzw<?> zzg = zzazp.zzeic.zzg(new Runnable(this, zzteVar, this.zzbwa, this.zzbwb) { // from class: com.google.android.gms.internal.ads.zzto
                private final zztp zzbvw;
                private final zzte zzbvx;
                private final zzth zzbvy;
                private final zzbaa zzbvz;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbvw = this;
                    this.zzbvx = zzteVar;
                    this.zzbvy = zzthVar;
                    this.zzbvz = zzbaaVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zztp zztpVar = this.zzbvw;
                    zzte zzteVar2 = this.zzbvx;
                    zzth zzthVar2 = this.zzbvy;
                    zzbaa zzbaaVar2 = this.zzbvz;
                    try {
                        zzti zznd = zzteVar2.zznd();
                        zztc zzc = zzteVar2.zzne() ? zznd.zzc(zzthVar2) : zznd.zza(zzthVar2);
                        if (!zzc.zzmw()) {
                            zzbaaVar2.setException(new RuntimeException("No entry contents."));
                            zztpVar.zzbvu.disconnect();
                            return;
                        }
                        zztq zztqVar = new zztq(zztpVar, zzc.zzmx(), 1);
                        int read = zztqVar.read();
                        if (read == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zztqVar.unread(read);
                        zzbaaVar2.set(zztv.zza(zztqVar, zzc.zzmz(), zzc.zznc(), zzc.zznb(), zzc.zzna()));
                    } catch (RemoteException | IOException e) {
                        zzd.zzc("Unable to obtain a cache service instance.", e);
                        zzbaaVar2.setException(e);
                        zztpVar.zzbvu.disconnect();
                    }
                }
            });
            zzbaa zzbaaVar = this.zzbwb;
            zzbaaVar.addListener(new Runnable(zzbaaVar, zzg) { // from class: com.google.android.gms.internal.ads.zztr
                private final zzbaa zzbwd;
                private final Future zzbwe;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbwd = zzbaaVar;
                    this.zzbwe = zzg;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbaa zzbaaVar3 = this.zzbwd;
                    Future future = this.zzbwe;
                    if (zzbaaVar3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzazp.zzeih);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
