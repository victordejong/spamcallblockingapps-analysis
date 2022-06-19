package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmv.class */
public final class zzmv implements zzpb {
    private final Uri uri;
    private final zzon zzaop;
    private final /* synthetic */ zzms zzbdl;
    private final zzmy zzbdt;
    private final zzpi zzbdu;
    private volatile boolean zzbeo;
    private long zzbeq;
    private final zzkg zzben = new zzkg();
    private boolean zzbep = true;
    private long zzco = -1;

    public zzmv(zzms zzmsVar, Uri uri, zzon zzonVar, zzmy zzmyVar, zzpi zzpiVar) {
        this.zzbdl = zzmsVar;
        this.uri = (Uri) zzpg.checkNotNull(uri);
        this.zzaop = (zzon) zzpg.checkNotNull(zzonVar);
        this.zzbdt = (zzmy) zzpg.checkNotNull(zzmyVar);
        this.zzbdu = zzpiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpb
    public final void cancelLoad() {
        this.zzbeo = true;
    }

    public final void zze(long j, long j2) {
        this.zzben.position = j;
        this.zzbeq = j2;
        this.zzbep = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpb
    public final boolean zzhx() {
        return this.zzbeo;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpb
    public final void zzhy() throws IOException, InterruptedException {
        Throwable th;
        ?? r0;
        String str;
        zzjx zzjxVar;
        int i;
        int i2;
        long j;
        Handler handler;
        Runnable runnable;
        int i3 = 0;
        while (i3 == 0 && !this.zzbeo) {
            zzjx zzjxVar2 = null;
            try {
                r0 = this.zzben.position;
                zzon zzonVar = this.zzaop;
                Uri uri = this.uri;
                str = this.zzbdl.zzbdq;
                long zza = zzonVar.zza(new zzos(uri, r0, -1L, str));
                this.zzco = zza;
                if (zza != -1) {
                    this.zzco = zza + r0;
                }
                zzjxVar = new zzjx(this.zzaop, r0, this.zzco);
                i = i3;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                zzka zza2 = this.zzbdt.zza(zzjxVar, this.zzaop.getUri());
                int i4 = i3;
                char c = r0;
                if (this.zzbep) {
                    int i5 = i3;
                    zza2.zzc(r0, this.zzbeq);
                    int i6 = i3;
                    this.zzbep = false;
                    c = r0;
                    i4 = i3;
                }
                while (i4 == 0 && !this.zzbeo) {
                    int i7 = i4;
                    this.zzbdu.block();
                    int i8 = i4;
                    int zza3 = zza2.zza(zzjxVar, this.zzben);
                    i4 = zza3;
                    long position = zzjxVar.getPosition();
                    j = this.zzbdl.zzbdr;
                    if (position > j + c) {
                        c = zzjxVar.getPosition();
                        this.zzbdu.zziu();
                        handler = this.zzbdl.handler;
                        runnable = this.zzbdl.zzbdw;
                        handler.post(runnable);
                        i4 = zza3;
                    }
                }
                if (i4 == 1) {
                    i2 = 0;
                } else {
                    this.zzben.position = zzjxVar.getPosition();
                    i2 = i4;
                }
                i3 = i2;
                zzpt.zza(this.zzaop);
            } catch (Throwable th3) {
                th = th3;
                zzjxVar2 = zzjxVar;
                i3 = i;
                if (i3 != 1 && zzjxVar2 != null) {
                    this.zzben.position = zzjxVar2.getPosition();
                }
                zzpt.zza(this.zzaop);
                throw th;
            }
        }
    }
}
