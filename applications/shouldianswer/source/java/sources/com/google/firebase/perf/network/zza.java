package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zza.class */
public final class zza extends OutputStream {
    private final zzaz zzfv;
    private OutputStream zzfz;
    private long zzga = -1;
    private zzam zzgb;

    public zza(OutputStream outputStream, zzam zzamVar, zzaz zzazVar) {
        this.zzfz = outputStream;
        this.zzgb = zzamVar;
        this.zzfv = zzazVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j = this.zzga;
        if (j != -1) {
            this.zzgb.zzd(j);
        }
        this.zzgb.zzf(this.zzfv.zzby());
        try {
            this.zzfz.close();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        try {
            this.zzfz.flush();
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        try {
            this.zzfz.write(i);
            this.zzga++;
            this.zzgb.zzd(this.zzga);
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        try {
            this.zzfz.write(bArr);
            this.zzga += bArr.length;
            this.zzgb.zzd(this.zzga);
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        try {
            this.zzfz.write(bArr, i, i2);
            this.zzga += i2;
            this.zzgb.zzd(this.zzga);
        } catch (IOException e) {
            this.zzgb.zzh(this.zzfv.zzby());
            zzg.zza(this.zzgb);
            throw e;
        }
    }
}
