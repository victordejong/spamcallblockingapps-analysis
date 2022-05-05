package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzes.class */
final class zzes implements zzag {
    private boolean closed;
    private final String zzazf;
    private String zzbaf;
    private zzdh<zzo> zzbeg;
    private zzal zzbeh;
    private final ScheduledExecutorService zzbej;
    private final zzev zzbek;
    private ScheduledFuture<?> zzbel;
    private final Context zzri;

    public zzes(Context context, String str, zzal zzalVar) {
        this(context, str, zzalVar, null, null);
    }

    @VisibleForTesting
    private zzes(Context context, String str, zzal zzalVar, zzew zzewVar, zzev zzevVar) {
        this.zzbeh = zzalVar;
        this.zzri = context;
        this.zzazf = str;
        this.zzbej = new zzet(this).zzpg();
        this.zzbek = new zzeu(this);
    }

    private final void zzpf() {
        synchronized (this) {
            if (this.closed) {
                throw new IllegalStateException("called method after closed");
            }
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        synchronized (this) {
            zzpf();
            if (this.zzbel != null) {
                this.zzbel.cancel(false);
            }
            this.zzbej.shutdown();
            this.closed = true;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final void zza(long j, String str) {
        synchronized (this) {
            String str2 = this.zzazf;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 55);
            sb.append("loadAfterDelay: containerId=");
            sb.append(str2);
            sb.append(" delay=");
            sb.append(j);
            zzdi.m328v(sb.toString());
            zzpf();
            if (this.zzbeg == null) {
                throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
            }
            if (this.zzbel != null) {
                this.zzbel.cancel(false);
            }
            ScheduledExecutorService scheduledExecutorService = this.zzbej;
            zzer zza = this.zzbek.zza(this.zzbeh);
            zza.zza(this.zzbeg);
            zza.zzdc(this.zzbaf);
            zza.zzdu(str);
            this.zzbel = scheduledExecutorService.schedule(zza, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final void zza(zzdh<zzo> zzdhVar) {
        synchronized (this) {
            zzpf();
            this.zzbeg = zzdhVar;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final void zzdc(String str) {
        synchronized (this) {
            zzpf();
            this.zzbaf = str;
        }
    }
}
