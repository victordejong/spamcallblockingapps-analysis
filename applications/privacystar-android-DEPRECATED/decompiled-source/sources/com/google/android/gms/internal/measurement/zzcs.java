package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcs.class */
public final class zzcs {
    private int zzabo;
    private ByteArrayOutputStream zzabp = new ByteArrayOutputStream();
    private final /* synthetic */ zzcr zzabq;

    public zzcs(zzcr zzcrVar) {
        this.zzabq = zzcrVar;
    }

    public final byte[] getPayload() {
        return this.zzabp.toByteArray();
    }

    public final boolean zze(zzck zzckVar) {
        byte[] bArr;
        Preconditions.checkNotNull(zzckVar);
        if (this.zzabo + 1 > zzbx.zzec()) {
            return false;
        }
        String zza = this.zzabq.zza(zzckVar, false);
        if (zza == null) {
            this.zzabq.zzby().zza(zzckVar, "Error formatting hit");
            return true;
        }
        byte[] bytes = zza.getBytes();
        int length = bytes.length;
        if (length > zzbx.zzdy()) {
            this.zzabq.zzby().zza(zzckVar, "Hit size exceeds the maximum size limit");
            return true;
        }
        int i = length;
        if (this.zzabp.size() > 0) {
            i = length + 1;
        }
        if (this.zzabp.size() + i > zzcf.zzzv.get().intValue()) {
            return false;
        }
        try {
            if (this.zzabp.size() > 0) {
                ByteArrayOutputStream byteArrayOutputStream = this.zzabp;
                bArr = zzcr.zzabn;
                byteArrayOutputStream.write(bArr);
            }
            this.zzabp.write(bytes);
            this.zzabo++;
            return true;
        } catch (IOException e) {
            this.zzabq.zze("Failed to write payload when batching hits", e);
            return true;
        }
    }

    public final int zzfe() {
        return this.zzabo;
    }
}
