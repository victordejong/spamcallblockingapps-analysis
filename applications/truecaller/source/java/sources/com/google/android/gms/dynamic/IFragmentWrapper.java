package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper.class */
public interface IFragmentWrapper extends IInterface {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/IFragmentWrapper$Stub.class */
    public static abstract class Stub extends zzb implements IFragmentWrapper {
        public Stub() {
            super("com.google.android.gms.dynamic.IFragmentWrapper");
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    IObjectWrapper zzg = zzg();
                    parcel2.writeNoException();
                    zzc.zze(parcel2, zzg);
                    return true;
                case 3:
                    Bundle zzd = zzd();
                    parcel2.writeNoException();
                    zzc.zzd(parcel2, zzd);
                    return true;
                case 4:
                    int zzb = zzb();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzb);
                    return true;
                case 5:
                    IFragmentWrapper zze = zze();
                    parcel2.writeNoException();
                    zzc.zze(parcel2, zze);
                    return true;
                case 6:
                    IObjectWrapper zzh = zzh();
                    parcel2.writeNoException();
                    zzc.zze(parcel2, zzh);
                    return true;
                case 7:
                    boolean zzs = zzs();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzs);
                    return true;
                case 8:
                    String zzj = zzj();
                    parcel2.writeNoException();
                    parcel2.writeString(zzj);
                    return true;
                case 9:
                    IFragmentWrapper zzf = zzf();
                    parcel2.writeNoException();
                    zzc.zze(parcel2, zzf);
                    return true;
                case 10:
                    int zzc = zzc();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzc);
                    return true;
                case 11:
                    boolean zzt = zzt();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzt);
                    return true;
                case 12:
                    IObjectWrapper zzi = zzi();
                    parcel2.writeNoException();
                    zzc.zze(parcel2, zzi);
                    return true;
                case 13:
                    boolean zzu = zzu();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzu);
                    return true;
                case 14:
                    boolean zzv = zzv();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzv);
                    return true;
                case 15:
                    boolean zzw = zzw();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzw);
                    return true;
                case 16:
                    boolean zzx = zzx();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzx);
                    return true;
                case 17:
                    boolean zzy = zzy();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzy);
                    return true;
                case 18:
                    boolean zzz = zzz();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzz);
                    return true;
                case 19:
                    boolean zzA = zzA();
                    parcel2.writeNoException();
                    zzc.zzb(parcel2, zzA);
                    return true;
                case 20:
                    zzk(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    mo38745D(zzc.zzf(parcel));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    mo38743K(zzc.zzf(parcel));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    zzn(zzc.zzf(parcel));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    zzo(zzc.zzf(parcel));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    mo38742W((Intent) zzc.zza(parcel, Intent.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    mo38741X((Intent) zzc.zza(parcel, Intent.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    mo38744H0(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    /* renamed from: D */
    void mo38745D(boolean z) throws RemoteException;

    /* renamed from: H0 */
    void mo38744H0(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: K */
    void mo38743K(boolean z) throws RemoteException;

    /* renamed from: W */
    void mo38742W(Intent intent) throws RemoteException;

    /* renamed from: X */
    void mo38741X(Intent intent, int i) throws RemoteException;

    boolean zzA() throws RemoteException;

    int zzb() throws RemoteException;

    int zzc() throws RemoteException;

    Bundle zzd() throws RemoteException;

    IFragmentWrapper zze() throws RemoteException;

    IFragmentWrapper zzf() throws RemoteException;

    IObjectWrapper zzg() throws RemoteException;

    IObjectWrapper zzh() throws RemoteException;

    IObjectWrapper zzi() throws RemoteException;

    String zzj() throws RemoteException;

    void zzk(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzn(boolean z) throws RemoteException;

    void zzo(boolean z) throws RemoteException;

    boolean zzs() throws RemoteException;

    boolean zzt() throws RemoteException;

    boolean zzu() throws RemoteException;

    boolean zzv() throws RemoteException;

    boolean zzw() throws RemoteException;

    boolean zzx() throws RemoteException;

    boolean zzy() throws RemoteException;

    boolean zzz() throws RemoteException;
}
