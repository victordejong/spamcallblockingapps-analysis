package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmc.class */
public final class zzcmc implements zzavw {
    private final zzawl<zzavw> zza;
    private final Context zzb;
    private final zzavw zzc;
    private final String zzd;
    private final int zze;
    private InputStream zzg;
    private boolean zzh;
    private Uri zzi;
    private volatile zzbak zzj;
    private final zzcml zzr;
    private boolean zzk = false;
    private boolean zzl = false;
    private boolean zzm = false;
    private boolean zzn = false;
    private long zzo = 0;
    private final AtomicLong zzq = new AtomicLong(-1);
    private zzfxa<Long> zzp = null;
    private final boolean zzf = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue();

    /* JADX WARN: Multi-variable type inference failed */
    public zzcmc(Context context, Context context2, zzavw zzavwVar, String str, int i, zzawl<zzavw> zzawlVar, zzcml zzcmlVar) {
        this.zzb = context;
        this.zzc = context2;
        this.zza = i;
        this.zzr = zzawlVar;
        this.zzd = zzavwVar;
        this.zze = str;
    }

    private final void zzl(zzavy zzavyVar) {
        zzawl<zzavw> zzawlVar = this.zza;
        if (zzawlVar != null) {
            ((zzcmn) zzawlVar).zzk(this, zzavyVar);
        }
    }

    private final boolean zzm() {
        if (!this.zzf) {
            return false;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcS)).booleanValue() && !this.zzm) {
            return true;
        }
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzcT)).booleanValue() && !this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        zzawl<zzavw> zzawlVar;
        if (this.zzh) {
            InputStream inputStream = this.zzg;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.zzc.zza(bArr, i, i2);
            if ((!this.zzf || this.zzg != null) && (zzawlVar = this.zza) != null) {
                ((zzcmn) zzawlVar).zzW(this, read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0337  */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzavw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzavy r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcmc.zzb(com.google.android.gms.internal.ads.zzavy):long");
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final Uri zzc() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final void zzd() throws IOException {
        if (this.zzh) {
            this.zzh = false;
            this.zzi = null;
            InputStream inputStream = this.zzg;
            if (inputStream == null) {
                this.zzc.zzd();
                return;
            }
            IOUtils.closeQuietly(inputStream);
            this.zzg = null;
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    public final long zze() {
        return this.zzo;
    }

    public final long zzf() {
        if (this.zzj == null) {
            return -1L;
        }
        if (this.zzq.get() != -1) {
            return this.zzq.get();
        }
        synchronized (this) {
            if (this.zzp == null) {
                this.zzp = zzcjm.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcmb
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzcmc.this.zzg();
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

    public final /* synthetic */ Long zzg() throws Exception {
        return Long.valueOf(zzt.zzc().zza(this.zzj));
    }

    public final boolean zzh() {
        return this.zzk;
    }

    public final boolean zzi() {
        return this.zzn;
    }

    public final boolean zzj() {
        return this.zzm;
    }

    public final boolean zzk() {
        return this.zzl;
    }
}
