package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeq.class */
public final class zzeq extends zza implements zzeo {
    public zzeq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(zzm zzmVar, boolean z) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzmVar);
        zzb.zza(m3778a_, z);
        Parcel zza = zza(7, m3778a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzkl.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, zzmVar);
        Parcel zza = zza(16, m3778a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzv.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, String str3) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        m3778a_.writeString(str3);
        Parcel zza = zza(17, m3778a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzv.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, String str3, boolean z) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        m3778a_.writeString(str3);
        zzb.zza(m3778a_, z);
        Parcel zza = zza(15, m3778a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzkl.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, boolean z, zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, z);
        zzb.zza(m3778a_, zzmVar);
        Parcel zza = zza(14, m3778a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzkl.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(long j, String str, String str2, String str3) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeLong(j);
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        m3778a_.writeString(str3);
        zzb(10, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzanVar);
        zzb.zza(m3778a_, zzmVar);
        zzb(1, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, String str, String str2) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzanVar);
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb(5, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzkl zzklVar, zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzklVar);
        zzb.zza(m3778a_, zzmVar);
        zzb(2, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzmVar);
        zzb(4, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzvVar);
        zzb(13, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar, zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzvVar);
        zzb.zza(m3778a_, zzmVar);
        zzb(12, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] zza(zzan zzanVar, String str) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzanVar);
        m3778a_.writeString(str);
        Parcel zza = zza(9, m3778a_);
        byte[] createByteArray = zza.createByteArray();
        zza.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzb(zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzmVar);
        zzb(6, m3778a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String zzc(zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzmVar);
        Parcel zza = zza(11, m3778a_);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzd(zzm zzmVar) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, zzmVar);
        zzb(18, m3778a_);
    }
}
