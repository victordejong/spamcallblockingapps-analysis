package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zzq.class */
public final class zzq {
    private static zzq zzcq;
    @VisibleForTesting
    private Storage zzcr;
    @VisibleForTesting
    private GoogleSignInAccount zzcs;
    @VisibleForTesting
    private GoogleSignInOptions zzct;

    private zzq(Context context) {
        Storage storage = Storage.getInstance(context);
        this.zzcr = storage;
        this.zzcs = storage.getSavedDefaultGoogleSignInAccount();
        this.zzct = this.zzcr.getSavedDefaultGoogleSignInOptions();
    }

    public static zzq zzd(Context context) {
        zzq zze;
        synchronized (zzq.class) {
            try {
                zze = zze(context.getApplicationContext());
            } catch (Throwable th) {
                throw th;
            }
        }
        return zze;
    }

    private static zzq zze(Context context) {
        synchronized (zzq.class) {
            try {
                zzq zzqVar = zzcq;
                if (zzqVar != null) {
                    return zzqVar;
                }
                zzq zzqVar2 = new zzq(context);
                zzcq = zzqVar2;
                return zzqVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void clear() {
        synchronized (this) {
            this.zzcr.clear();
            this.zzcs = null;
            this.zzct = null;
        }
    }

    public final void zzc(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        synchronized (this) {
            this.zzcr.saveDefaultGoogleSignInAccount(googleSignInAccount, googleSignInOptions);
            this.zzcs = googleSignInAccount;
            this.zzct = googleSignInOptions;
        }
    }

    public final GoogleSignInAccount zzr() {
        GoogleSignInAccount googleSignInAccount;
        synchronized (this) {
            googleSignInAccount = this.zzcs;
        }
        return googleSignInAccount;
    }

    public final GoogleSignInOptions zzs() {
        GoogleSignInOptions googleSignInOptions;
        synchronized (this) {
            googleSignInOptions = this.zzct;
        }
        return googleSignInOptions;
    }
}
