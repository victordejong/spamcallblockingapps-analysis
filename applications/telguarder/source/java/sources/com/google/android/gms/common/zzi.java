package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzi.class */
public abstract class zzi extends zzx {
    private final int zza;

    public zzi(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 25);
        this.zza = Arrays.hashCode(bArr);
    }

    public static byte[] zzf(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        IObjectWrapper zzd;
        if (obj == null || !(obj instanceof zzy)) {
            return false;
        }
        try {
            zzy zzyVar = (zzy) obj;
            if (zzyVar.zze() != this.zza || (zzd = zzyVar.zzd()) == null) {
                return false;
            }
            return Arrays.equals(zzc(), (byte[]) ObjectWrapper.unwrap(zzd));
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public final int hashCode() {
        return this.zza;
    }

    public abstract byte[] zzc();

    @Override // com.google.android.gms.common.internal.zzy
    public final IObjectWrapper zzd() {
        return ObjectWrapper.wrap(zzc());
    }

    @Override // com.google.android.gms.common.internal.zzy
    public final int zze() {
        return this.zza;
    }
}
