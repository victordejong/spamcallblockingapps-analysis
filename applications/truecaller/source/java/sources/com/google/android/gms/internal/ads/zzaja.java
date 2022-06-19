package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaja.class */
public final class zzaja {
    private final ByteArrayOutputStream zza;
    private final DataOutputStream zzb;

    public zzaja() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.zza = byteArrayOutputStream;
        this.zzb = new DataOutputStream(byteArrayOutputStream);
    }

    private static void zzb(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] zza(zzaiz zzaizVar) {
        this.zza.reset();
        try {
            zzb(this.zzb, zzaizVar.zza);
            String str = zzaizVar.zzb;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            zzb(this.zzb, str2);
            this.zzb.writeLong(zzaizVar.zzc);
            this.zzb.writeLong(zzaizVar.zzd);
            this.zzb.write(zzaizVar.zze);
            this.zzb.flush();
            return this.zza.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
