package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzt;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclp.class */
public final class zzclp extends zzag {
    private final Context zza;
    private final zzaj zzb;
    private final zzclo zzc;
    private final String zzd;
    private final int zze;
    private InputStream zzg;
    private boolean zzh;
    private Uri zzi;
    private volatile zzayn zzj;
    private boolean zzk = false;
    private boolean zzl = false;
    private boolean zzm = false;
    private boolean zzn = false;
    private long zzo = 0;
    private final AtomicLong zzq = new AtomicLong(-1);
    private zzfsm<Long> zzp = null;
    private final boolean zzf = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue();

    public zzclp(Context context, zzaj zzajVar, String str, int i, zzay zzayVar, zzclo zzcloVar) {
        super(false);
        this.zza = context;
        this.zzb = zzajVar;
        this.zzc = zzcloVar;
        this.zzd = str;
        this.zze = i;
        zza(zzayVar);
    }

    private final boolean zzr() {
        if (!this.zzf) {
            return false;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcL)).booleanValue() && !this.zzm) {
            return true;
        }
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzcM)).booleanValue() && !this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzh) {
            InputStream inputStream = this.zzg;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.zzb.zzg(bArr, i, i2);
            if (!this.zzf || this.zzg != null) {
                zzd(read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed GcacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x032e  */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzan r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 872
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzclp.zzh(com.google.android.gms.internal.ads.zzan):long");
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws IOException {
        if (this.zzh) {
            boolean z = false;
            this.zzh = false;
            this.zzi = null;
            if (!this.zzf || this.zzg != null) {
                z = true;
            }
            InputStream inputStream = this.zzg;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                }
                this.zzg = null;
            } else {
                this.zzb.zzj();
            }
            if (!z) {
                return;
            }
            zze();
            return;
        }
        throw new IOException("Attempt to close an already closed GcacheDataSource.");
    }

    public final boolean zzk() {
        return this.zzk;
    }

    public final boolean zzl() {
        return this.zzl;
    }

    public final boolean zzm() {
        return this.zzm;
    }

    public final boolean zzn() {
        return this.zzn;
    }

    public final long zzo() {
        return this.zzo;
    }

    public final long zzp() {
        if (this.zzj == null) {
            return -1L;
        }
        if (this.zzq.get() != -1) {
            return this.zzq.get();
        }
        synchronized (this) {
            if (this.zzp == null) {
                this.zzp = zzchg.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcln
                    private final zzclp zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zza.zzq();
                    }
                });
            }
        }
        if (!this.zzp.isDone()) {
            return -1L;
        }
        try {
            this.zzq.compareAndSet(-1L, this.zzp.get().longValue());
            return this.zzq.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    public final /* synthetic */ Long zzq() throws Exception {
        return Long.valueOf(zzt.zzi().zzg(this.zzj));
    }
}
