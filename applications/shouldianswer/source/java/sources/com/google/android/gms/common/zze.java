package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zze.class */
public abstract class zze extends zzj {
    private int zzt;

    public zze(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 25);
        this.zzt = Arrays.hashCode(bArr);
    }

    public static byte[] zza(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        IObjectWrapper zzb;
        if (obj == null || !(obj instanceof zzi)) {
            return false;
        }
        try {
            zzi zziVar = (zzi) obj;
            if (zziVar.zzc() != hashCode() || (zzb = zziVar.zzb()) == null) {
                return false;
            }
            return Arrays.equals(getBytes(), (byte[]) ObjectWrapper.unwrap(zzb));
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public abstract byte[] getBytes();

    public int hashCode() {
        return this.zzt;
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(getBytes());
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final int zzc() {
        return hashCode();
    }
}
