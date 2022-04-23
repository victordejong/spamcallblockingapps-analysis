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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zze.class */
public abstract class zze extends zzj {

    /* renamed from: a */
    private int f7675a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zze(byte[] bArr) {
        Preconditions.m14533a(bArr.length == 25);
        this.f7675a = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public static byte[] m14272f(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract byte[] mo14271c();

    public boolean equals(Object obj) {
        IObjectWrapper zzb;
        if (obj == null || !(obj instanceof zzi)) {
            return false;
        }
        try {
            zzi zziVar = (zzi) obj;
            if (zziVar.zzc() == hashCode() && (zzb = zziVar.zzb()) != null) {
                return Arrays.equals(mo14271c(), (byte[]) ObjectWrapper.m14258c(zzb));
            }
            return false;
        } catch (RemoteException e) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            return false;
        }
    }

    public int hashCode() {
        return this.f7675a;
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final IObjectWrapper zzb() {
        return ObjectWrapper.m14257f(mo14271c());
    }

    @Override // com.google.android.gms.common.internal.zzi
    public final int zzc() {
        return hashCode();
    }
}
