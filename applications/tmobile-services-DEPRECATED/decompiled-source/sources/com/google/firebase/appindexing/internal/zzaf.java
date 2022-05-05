package com.google.firebase.appindexing.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appindexing.FirebaseAppIndexingException;
import com.google.firebase.appindexing.FirebaseAppIndexingInvalidArgumentException;
import com.google.firebase.appindexing.FirebaseAppIndexingTooManyArgumentsException;
import com.google.firebase.appindexing.zza;
import com.google.firebase.appindexing.zzb;
import com.google.firebase.appindexing.zzc;
import com.google.firebase.appindexing.zzd;
import com.google.firebase.appindexing.zze;
import com.google.firebase.appindexing.zzf;
import com.google.firebase.appindexing.zzg;
import com.google.firebase.appindexing.zzh;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzaf.class */
public final class zzaf {
    public static FirebaseAppIndexingException zza(@NonNull Status status, String str) {
        Preconditions.m14523k(status);
        String I = status.m14999I();
        String str2 = str;
        if (I != null) {
            str2 = I.isEmpty() ? str : I;
        }
        int B = status.m15000B();
        if (B == 17510) {
            return new FirebaseAppIndexingInvalidArgumentException(str2);
        }
        if (B == 17511) {
            return new FirebaseAppIndexingTooManyArgumentsException(str2);
        }
        if (B == 17602) {
            return new zzh(str2);
        }
        switch (B) {
            case 17513:
                return new zzb(str2);
            case 17514:
                return new zza(str2);
            case 17515:
                return new zzg(str2);
            case 17516:
                return new zze(str2);
            case 17517:
                return new zzf(str2);
            case 17518:
                return new zzd(str2);
            case 17519:
                return new zzc(str2);
            default:
                return new FirebaseAppIndexingException(str2);
        }
    }
}
