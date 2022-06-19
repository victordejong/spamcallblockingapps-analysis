package com.google.firebase.perf.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzan;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase-perf.zzch;
import com.google.android.gms.internal.firebase_perf.zzch;
import com.google.android.gms.internal.firebase_perf.zzco;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzt.class */
public class zzt implements Parcelable {
    public static final Parcelable.Creator<zzt> CREATOR = new zzs();
    private String zzdt;
    private boolean zzdu;
    private zzaz zzdv;

    private zzt(Parcel parcel) {
        boolean z = false;
        this.zzdu = false;
        this.zzdt = parcel.readString();
        this.zzdu = parcel.readByte() != 0 ? true : z;
        this.zzdv = (com.google.android.gms.internal.firebase_perf.zzaz) parcel.readParcelable(zzaz.class.getClassLoader());
    }

    public /* synthetic */ zzt(Parcel parcel, zzs zzsVar) {
        this(parcel);
    }

    private zzt(String str, zzan zzanVar) {
        this.zzdu = false;
        this.zzdt = str;
        this.zzdv = new com.google.android.gms.internal.firebase_perf.zzaz();
    }

    public static zzch[] zza(List<zzt> list) {
        if (list.isEmpty()) {
            return null;
        }
        zzch[] zzchVarArr = new zzch[list.size()];
        com.google.android.gms.internal.firebase-perf.zzch zzay = list.get(0).zzay();
        boolean z = false;
        for (int i = 1; i < list.size(); i++) {
            com.google.android.gms.internal.firebase-perf.zzch zzay2 = list.get(i).zzay();
            if (z || !list.get(i).zzdu) {
                zzchVarArr[i] = zzay2;
            } else {
                zzchVarArr[0] = zzay2;
                zzchVarArr[i] = zzay;
                z = true;
            }
        }
        if (!z) {
            zzchVarArr[0] = zzay;
        }
        return zzchVarArr;
    }

    public static zzt zzau() {
        String replaceAll = UUID.randomUUID().toString().replaceAll("\\-", "");
        zzt zztVar = new zzt(replaceAll, (zzan) new com.google.android.gms.internal.firebase_perf.zzan());
        zztVar.zzdu = Math.random() * 100.0d < ((double) FeatureControl.zzad().zzaf());
        Log.d("FirebasePerformance", String.format("Creating a new %s Session: %s", zztVar.zzdu ? "Verbose" : "Non Verbose", replaceAll));
        return zztVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final boolean isExpired() {
        return TimeUnit.MICROSECONDS.toMinutes(this.zzdv.zzby()) > FeatureControl.zzad().zzak();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzdt);
        parcel.writeByte(this.zzdu ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.zzdv, 0);
    }

    public final String zzav() {
        return this.zzdt;
    }

    public final zzaz zzaw() {
        return this.zzdv;
    }

    public final boolean zzax() {
        return this.zzdu;
    }

    public final com.google.android.gms.internal.firebase-perf.zzch zzay() {
        zzch.zza zzab = com.google.android.gms.internal.firebase_perf.zzch.zzeq().zzab(this.zzdt);
        if (this.zzdu) {
            zzab.zzb(zzco.zzli);
        }
        return (com.google.android.gms.internal.firebase_perf.zzch) zzab.zzgm();
    }
}
