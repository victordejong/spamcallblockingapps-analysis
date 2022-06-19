package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyx.class */
public final class zzyx {
    private final ByteArrayOutputStream zza;
    private final DataOutputStream zzb;

    public zzyx() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(AdRequest.MAX_CONTENT_URL_LENGTH);
        this.zza = byteArrayOutputStream;
        this.zzb = new DataOutputStream(byteArrayOutputStream);
    }

    private static void zzb(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] zza(zzyw zzywVar) {
        this.zza.reset();
        try {
            zzb(this.zzb, zzywVar.zza);
            String str = zzywVar.zzb;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            zzb(this.zzb, str2);
            this.zzb.writeLong(zzywVar.zzc);
            this.zzb.writeLong(zzywVar.zzd);
            this.zzb.write(zzywVar.zze);
            this.zzb.flush();
            return this.zza.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
