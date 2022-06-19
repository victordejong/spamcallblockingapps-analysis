package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.AccountType;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p066d0.C2134a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzam.class */
public final class zzam extends zzgo {
    private long zza;
    private String zzb;
    private AccountManager zzc;
    private Boolean zzd;
    private long zze;

    public zzam(zzfu zzfuVar) {
        super(zzfuVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    public final boolean zza() {
        Calendar calendar = Calendar.getInstance();
        this.zza = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.zzb = C0608b.m7625j(new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()), lowerCase, "-", lowerCase2);
        return false;
    }

    public final long zzb() {
        zzv();
        return this.zza;
    }

    public final String zzc() {
        zzv();
        return this.zzb;
    }

    public final long zzd() {
        zzg();
        return this.zze;
    }

    public final void zze() {
        zzg();
        this.zzd = null;
        this.zze = 0L;
    }

    public final boolean zzf() {
        Account[] result;
        zzg();
        long currentTimeMillis = this.zzs.zzay().currentTimeMillis();
        if (currentTimeMillis - this.zze > 86400000) {
            this.zzd = null;
        }
        Boolean bool = this.zzd;
        if (bool == null) {
            if (C2134a.m3846a(this.zzs.zzax(), "android.permission.GET_ACCOUNTS") != 0) {
                this.zzs.zzau().zzf().zza("Permission error checking for dasher/unicorn accounts");
                this.zze = currentTimeMillis;
                this.zzd = Boolean.FALSE;
                return false;
            }
            if (this.zzc == null) {
                this.zzc = AccountManager.get(this.zzs.zzax());
            }
            try {
                result = this.zzc.getAccountsByTypeAndFeatures(AccountType.GOOGLE, new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                this.zzs.zzau().zzc().zzb("Exception checking account types", e);
            }
            if (result != null && result.length > 0) {
                this.zzd = Boolean.TRUE;
                this.zze = currentTimeMillis;
                return true;
            }
            Account[] result2 = this.zzc.getAccountsByTypeAndFeatures(AccountType.GOOGLE, new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.zzd = Boolean.TRUE;
                this.zze = currentTimeMillis;
                return true;
            }
            this.zze = currentTimeMillis;
            this.zzd = Boolean.FALSE;
            return false;
        }
        return bool.booleanValue();
    }
}
