package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxl.class */
public abstract class zzxl implements zzxm {
    private static final Logger zzb = Logger.getLogger(zzxl.class.getName());
    public final ThreadLocal<ByteBuffer> zza = new zzxk(this);

    public abstract zzxp zza(String str, byte[] bArr, String str2);

    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzxm
    public final zzxp zzb(zzgkm zzgkmVar, zzxq zzxqVar) throws IOException {
        int zza;
        char c;
        long zzc = zzgkmVar.zzc();
        this.zza.get().rewind().limit(8);
        do {
            zza = zzgkmVar.zza(this.zza.get());
            if (zza == 8) {
                this.zza.get().rewind();
                long zza2 = zzxo.zza(this.zza.get());
                byte[] bArr = null;
                if (zza2 < 8 && zza2 > 1) {
                    zzb.logp(Level.SEVERE, "com.coremedia.iso.AbstractBoxParser", "parseBox", C22128a.m8677P1(80, "Plausibility check failed: size < 8 (size = ", zza2, "). Stop parsing!"));
                    return null;
                }
                byte[] bArr2 = new byte[4];
                this.zza.get().get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (zza2 == 1) {
                        this.zza.get().limit(16);
                        zzgkmVar.zza(this.zza.get());
                        this.zza.get().position(8);
                        c = zzxo.zzd(this.zza.get()) - 16;
                    } else {
                        c = zza2 == 0 ? zzgkmVar.zzb() - zzgkmVar.zzc() : zza2 - 8;
                    }
                    char c2 = c;
                    if ("uuid".equals(str)) {
                        this.zza.get().limit(this.zza.get().limit() + 16);
                        zzgkmVar.zza(this.zza.get());
                        bArr = new byte[16];
                        for (int position = this.zza.get().position() - 16; position < this.zza.get().position(); position++) {
                            bArr[position - (this.zza.get().position() - 16)] = this.zza.get().get(position);
                        }
                        c2 = c - 16;
                    }
                    zzxp zza3 = zza(str, bArr, zzxqVar instanceof zzxp ? ((zzxp) zzxqVar).zzb() : "");
                    zza3.zza(zzxqVar);
                    this.zza.get().rewind();
                    zza3.zzc(zzgkmVar, this.zza.get(), c2, this);
                    return zza3;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (zza >= 0);
        zzgkmVar.zzd(zzc);
        throw new EOFException();
    }
}
