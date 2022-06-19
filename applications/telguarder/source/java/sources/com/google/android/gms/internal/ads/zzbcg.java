package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcg.class */
public final class zzbcg implements zzon {
    private final Context context;
    private boolean isOpen;
    private Uri uri;
    private final String zzbvs;
    private final int zzbvt;
    private final zzpd<zzon> zzenv;
    private final zzon zzenw;
    private final zzbci zzenx;
    private InputStream zzenz;
    private volatile zzth zzeoa;
    private boolean zzbvh = false;
    private boolean zzeob = false;
    private boolean zzbvk = false;
    private boolean zzeoc = false;
    private long zzbvj = 0;
    private final AtomicLong zzeoe = new AtomicLong(-1);
    private zzdzw<Long> zzeod = null;
    private final boolean zzeny = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue();

    public zzbcg(Context context, zzon zzonVar, String str, int i, zzpd<zzon> zzpdVar, zzbci zzbciVar) {
        this.context = context;
        this.zzenw = zzonVar;
        this.zzenv = zzpdVar;
        this.zzenx = zzbciVar;
        this.zzbvs = str;
        this.zzbvt = i;
    }

    private final boolean zzacg() {
        if (!this.zzeny) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuk)).booleanValue() && !this.zzbvk) {
            return true;
        }
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcul)).booleanValue() && !this.zzeoc;
    }

    private final void zzb(zzos zzosVar) {
        zzpd<zzon> zzpdVar = this.zzenv;
        if (zzpdVar != null) {
            zzpdVar.zza(this, zzosVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final void close() throws IOException {
        zzpd<zzon> zzpdVar;
        if (this.isOpen) {
            boolean z = false;
            this.isOpen = false;
            this.uri = null;
            if (!this.zzeny || this.zzenz != null) {
                z = true;
            }
            InputStream inputStream = this.zzenz;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.zzenz = null;
            } else {
                this.zzenw.close();
            }
            if (!z || (zzpdVar = this.zzenv) == null) {
                return;
            }
            zzpdVar.zze(this);
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    public final long getContentLength() {
        if (this.zzeoa == null) {
            return -1L;
        }
        if (this.zzeoe.get() != -1) {
            return this.zzeoe.get();
        }
        synchronized (this) {
            if (this.zzeod == null) {
                this.zzeod = zzazp.zzeic.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzbcf
                    private final zzbcg zzenu;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzenu = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zzenu.zzach();
                    }
                });
            }
        }
        if (!this.zzeod.isDone()) {
            return -1L;
        }
        try {
            this.zzeoe.compareAndSet(-1L, this.zzeod.get().longValue());
            return this.zzeoe.get();
        } catch (InterruptedException | ExecutionException e) {
            return -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        zzpd<zzon> zzpdVar;
        if (this.isOpen) {
            InputStream inputStream = this.zzenz;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.zzenw.read(bArr, i, i2);
            if ((!this.zzeny || this.zzenz != null) && (zzpdVar = this.zzenv) != null) {
                zzpdVar.zzc(this, read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0351  */
    @Override // com.google.android.gms.internal.ads.zzon
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzos r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 913
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcg.zza(com.google.android.gms.internal.ads.zzos):long");
    }

    public final boolean zzace() {
        return this.zzeob;
    }

    public final boolean zzacf() {
        return this.zzeoc;
    }

    public final /* synthetic */ Long zzach() throws Exception {
        return Long.valueOf(zzr.zzkx().zzb(this.zzeoa));
    }

    public final boolean zzmz() {
        return this.zzbvh;
    }

    public final long zznb() {
        return this.zzbvj;
    }

    public final boolean zznc() {
        return this.zzbvk;
    }
}
