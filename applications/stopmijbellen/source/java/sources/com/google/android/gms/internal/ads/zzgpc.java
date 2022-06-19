package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpc.class */
public class zzgpc implements Iterator<zzaif>, Closeable, zzaig {
    private static final zzaif zza = new zzgpb("eof ");
    private static final zzgpj zzb = zzgpj.zzb(zzgpc.class);
    public zzaic zzc;
    public zzgpd zzd;
    public zzaif zze = null;
    public long zzf = 0;
    public long zzg = 0;
    private final List<zzaif> zzh = new ArrayList();

    public void close() throws IOException {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzaif zzaifVar = this.zze;
        if (zzaifVar == zza) {
            return false;
        }
        if (zzaifVar != null) {
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

    /* renamed from: zzd */
    public final zzaif next() {
        zzaif zzb2;
        zzaif zzaifVar = this.zze;
        if (zzaifVar != null && zzaifVar != zza) {
            this.zze = null;
            return zzaifVar;
        }
        zzgpd zzgpdVar = this.zzd;
        if (zzgpdVar == null || this.zzf >= this.zzg) {
            this.zze = zza;
            throw new NoSuchElementException();
        }
        try {
            synchronized (zzgpdVar) {
                this.zzd.zze(this.zzf);
                zzb2 = this.zzc.zzb(this.zzd, this);
                this.zzf = this.zzd.zzb();
            }
            return zzb2;
        } catch (EOFException e) {
            throw new NoSuchElementException();
        } catch (IOException e2) {
            throw new NoSuchElementException();
        }
    }

    public final List<zzaif> zze() {
        return (this.zzd == null || this.zze == zza) ? this.zzh : new zzgpi(this.zzh, this);
    }

    public final void zzf(zzgpd zzgpdVar, long j, zzaic zzaicVar) throws IOException {
        this.zzd = zzgpdVar;
        this.zzf = zzgpdVar.zzb();
        zzgpdVar.zze(zzgpdVar.zzb() + j);
        this.zzg = zzgpdVar.zzb();
        this.zzc = zzaicVar;
    }
}
