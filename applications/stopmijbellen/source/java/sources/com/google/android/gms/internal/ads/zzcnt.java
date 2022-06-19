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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnt.class */
public final class zzcnt extends zzdf {
    private final Context zza;
    private final zzdi zzb;
    private final String zzc;
    private final int zzd;
    private InputStream zzf;
    private boolean zzg;
    private Uri zzh;
    private volatile zzbak zzi;
    private final zzcod zzq;
    private boolean zzj = false;
    private boolean zzk = false;
    private boolean zzl = false;
    private boolean zzm = false;
    private long zzn = 0;
    private final AtomicLong zzp = new AtomicLong(-1);
    private zzfxa<Long> zzo = null;
    private final boolean zze = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue();

    public zzcnt(Context context, zzdi zzdiVar, String str, int i, zzdx zzdxVar, zzcod zzcodVar, byte[] bArr) {
        super(false);
        this.zza = context;
        this.zzb = zzdiVar;
        this.zzq = zzcodVar;
        this.zzc = str;
        this.zzd = i;
        zzb(zzdxVar);
    }

    private final boolean zzr() {
        if (!this.zze) {
            return false;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcS)).booleanValue() && !this.zzl) {
            return true;
        }
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzcT)).booleanValue() && !this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        if (this.zzg) {
            InputStream inputStream = this.zzf;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.zzb.zzg(bArr, i, i2);
            if (!this.zze || this.zzf != null) {
                zzc(read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed GcacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0333  */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzdm r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcnt.zzh(com.google.android.gms.internal.ads.zzdm):long");
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws IOException {
        if (this.zzg) {
            boolean z = false;
            this.zzg = false;
            this.zzh = null;
            if (!this.zze || this.zzf != null) {
                z = true;
            }
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.zzf = null;
            } else {
                this.zzb.zzj();
            }
            if (!z) {
                return;
            }
            zzd();
            return;
        }
        throw new IOException("Attempt to close an already closed GcacheDataSource.");
    }

    public final long zzk() {
        return this.zzn;
    }

    public final long zzl() {
        if (this.zzi == null) {
            return -1L;
        }
        if (this.zzp.get() != -1) {
            return this.zzp.get();
        }
        synchronized (this) {
            if (this.zzo == null) {
                this.zzo = zzcjm.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcns
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzcnt.this.zzm();
                    }
                });
            }
        }
        if (!this.zzo.isDone()) {
            return -1L;
        }
        try {
            this.zzp.compareAndSet(-1L, this.zzo.get().longValue());
            return this.zzp.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    public final /* synthetic */ Long zzm() throws Exception {
        return Long.valueOf(zzt.zzc().zza(this.zzi));
    }

    public final boolean zzn() {
        return this.zzj;
    }

    public final boolean zzo() {
        return this.zzm;
    }

    public final boolean zzp() {
        return this.zzl;
    }

    public final boolean zzq() {
        return this.zzk;
    }
}
