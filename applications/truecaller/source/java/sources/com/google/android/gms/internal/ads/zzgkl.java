package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkl.class */
public class zzgkl implements Iterator<zzxp>, Closeable, zzxq {
    private static final zzxp zza = new zzgkk("eof ");
    private static final zzgks zzb = zzgks.zzb(zzgkl.class);
    public zzxm zzc;
    public zzgkm zzd;
    public zzxp zze = null;
    public long zzf = 0;
    public long zzg = 0;
    private final List<zzxp> zzh = new ArrayList();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzxp zzxpVar = this.zze;
        if (zzxpVar == zza) {
            return false;
        }
        if (zzxpVar != null) {
            return true;
        }
        try {
            this.zze = next();
            return true;
        } catch (NoSuchElementException e) {
            this.zze = zza;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.zzh.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.zzh.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    public final List<zzxp> zzd() {
        return (this.zzd == null || this.zze == zza) ? this.zzh : new zzgkr(this.zzh, this);
    }

    public final void zze(zzgkm zzgkmVar, long j, zzxm zzxmVar) throws IOException {
        this.zzd = zzgkmVar;
        this.zzf = zzgkmVar.zzc();
        zzgkmVar.zzd(zzgkmVar.zzc() + j);
        this.zzg = zzgkmVar.zzc();
        this.zzc = zzxmVar;
    }

    /* renamed from: zzf */
    public final zzxp next() {
        zzxp zzb2;
        zzxp zzxpVar = this.zze;
        if (zzxpVar != null && zzxpVar != zza) {
            this.zze = null;
            return zzxpVar;
        }
        zzgkm zzgkmVar = this.zzd;
        if (zzgkmVar == null || this.zzf >= this.zzg) {
            this.zze = zza;
            throw new NoSuchElementException();
        }
        try {
            synchronized (zzgkmVar) {
                this.zzd.zzd(this.zzf);
                zzb2 = this.zzc.zzb(this.zzd, this);
                this.zzf = this.zzd.zzc();
            }
            return zzb2;
        } catch (EOFException e) {
            throw new NoSuchElementException();
        } catch (IOException e2) {
            throw new NoSuchElementException();
        }
    }
}
