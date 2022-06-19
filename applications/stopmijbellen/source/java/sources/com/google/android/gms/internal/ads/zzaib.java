package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaib.class */
public abstract class zzaib implements zzaic {
    private static final Logger zzb = Logger.getLogger(zzaib.class.getName());
    public final ThreadLocal<ByteBuffer> zza = new zzaia(this);

    public abstract zzaif zza(String str, byte[] bArr, String str2);

    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaic
    public final zzaif zzb(zzgpd zzgpdVar, zzaig zzaigVar) throws IOException {
        int zza;
        char c;
        long zzb2 = zzgpdVar.zzb();
        this.zza.get().rewind().limit(8);
        do {
            zza = zzgpdVar.zza(this.zza.get());
            if (zza == 8) {
                this.zza.get().rewind();
                long zze = zzaie.zze(this.zza.get());
                byte[] bArr = null;
                if (zze < 8 && zze > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zze);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                this.zza.get().get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (zze == 1) {
                        this.zza.get().limit(16);
                        zzgpdVar.zza(this.zza.get());
                        this.zza.get().position(8);
                        c = zzaie.zzf(this.zza.get()) - 16;
                    } else {
                        c = zze == 0 ? zzgpdVar.zzc() - zzgpdVar.zzb() : zze - 8;
                    }
                    char c2 = c;
                    if ("uuid".equals(str)) {
                        this.zza.get().limit(this.zza.get().limit() + 16);
                        zzgpdVar.zza(this.zza.get());
                        bArr = new byte[16];
                        for (int position = this.zza.get().position() - 16; position < this.zza.get().position(); position++) {
                            bArr[position - (this.zza.get().position() - 16)] = this.zza.get().get(position);
                        }
                        c2 = c - 16;
                    }
                    zzaif zza2 = zza(str, bArr, zzaigVar instanceof zzaif ? ((zzaif) zzaigVar).zza() : "");
                    zza2.zzc(zzaigVar);
                    this.zza.get().rewind();
                    zza2.zzb(zzgpdVar, this.zza.get(), c2, this);
                    return zza2;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (zza >= 0);
        zzgpdVar.zze(zzb2);
        throw new EOFException();
    }
}
