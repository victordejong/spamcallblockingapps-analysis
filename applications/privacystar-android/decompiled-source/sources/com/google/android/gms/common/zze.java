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
import org.spongycastle.i18n.LocalizedMessage;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zze.class */
public abstract class zze extends zzj {
    private int zzt;

    /* JADX INFO: Access modifiers changed from: protected */
    public zze(byte[] bArr) {
        Preconditions.checkArgument(bArr.length == 25);
        this.zzt = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] zza(String str) {
        try {
            return str.getBytes(LocalizedMessage.DEFAULT_ENCODING);
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
            if (zziVar.zzc() == hashCode() && (zzb = zziVar.zzb()) != null) {
                return Arrays.equals(getBytes(), (byte[]) ObjectWrapper.unwrap(zzb));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
