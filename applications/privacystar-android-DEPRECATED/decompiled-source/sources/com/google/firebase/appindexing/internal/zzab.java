package com.google.firebase.appindexing.internal;

import android.support.annotation.NonNull;
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
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzab.class */
public final class zzab {
    public static FirebaseAppIndexingException zza(@NonNull Status status, String str) {
        Preconditions.checkNotNull(status);
        String statusMessage = status.getStatusMessage();
        String str2 = str;
        if (statusMessage != null) {
            str2 = statusMessage.isEmpty() ? str : statusMessage;
        }
        int statusCode = status.getStatusCode();
        if (statusCode == 17602) {
            return new zzf(str2);
        }
        switch (statusCode) {
            case 17510:
                return new FirebaseAppIndexingInvalidArgumentException(str2);
            case 17511:
                return new FirebaseAppIndexingTooManyArgumentsException(str2);
            default:
                switch (statusCode) {
                    case 17513:
                        return new zzb(str2);
                    case 17514:
                        return new zza(str2);
                    case 17515:
                        return new zzg(str2);
                    case 17516:
                        return new zze(str2);
                    case 17517:
                        return new zzd(str2);
                    case 17518:
                        return new zzc(str2);
                    default:
                        return new FirebaseAppIndexingException(str2);
                }
        }
    }
}
