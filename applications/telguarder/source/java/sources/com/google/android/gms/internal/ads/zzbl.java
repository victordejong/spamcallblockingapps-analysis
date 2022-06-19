package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbl.class */
public abstract class zzbl implements zzbn {
    private static Logger zzcz = Logger.getLogger(zzbl.class.getName());
    private ThreadLocal<ByteBuffer> zzda = new zzbo(this);

    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzbn
    public final zzbs zza(zzepn zzepnVar, zzbr zzbrVar) throws IOException {
        int read;
        char c;
        long position = zzepnVar.position();
        this.zzda.get().rewind().limit(8);
        do {
            read = zzepnVar.read(this.zzda.get());
            if (read == 8) {
                this.zzda.get().rewind();
                long zzf = zzbp.zzf(this.zzda.get());
                byte[] bArr = null;
                if (zzf < 8 && zzf > 1) {
                    Logger logger = zzcz;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zzf);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                String zzk = zzbp.zzk(this.zzda.get());
                if (zzf == 1) {
                    this.zzda.get().limit(16);
                    zzepnVar.read(this.zzda.get());
                    this.zzda.get().position(8);
                    c = zzbp.zzh(this.zzda.get()) - 16;
                } else {
                    c = zzf == 0 ? zzepnVar.size() - zzepnVar.position() : zzf - 8;
                }
                char c2 = c;
                if ("uuid".equals(zzk)) {
                    this.zzda.get().limit(this.zzda.get().limit() + 16);
                    zzepnVar.read(this.zzda.get());
                    bArr = new byte[16];
                    for (int position2 = this.zzda.get().position() - 16; position2 < this.zzda.get().position(); position2++) {
                        bArr[position2 - (this.zzda.get().position() - 16)] = this.zzda.get().get(position2);
                    }
                    c2 = c - 16;
                }
                zzbs zza = zza(zzk, bArr, zzbrVar instanceof zzbs ? ((zzbs) zzbrVar).getType() : "");
                zza.zza(zzbrVar);
                this.zzda.get().rewind();
                zza.zza(zzepnVar, this.zzda.get(), c2, this);
                return zza;
            }
        } while (read >= 0);
        zzepnVar.zzfc(position);
        throw new EOFException();
    }

    public abstract zzbs zza(String str, byte[] bArr, String str2);
}
