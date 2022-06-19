package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.AccountType;
import com.telguarder.ApplicationConstants;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzam.class */
public final class zzam extends zzgf {
    private long zza;
    private String zzb;
    private AccountManager zzc;
    private Boolean zzd;
    private long zze;

    public zzam(zzfl zzflVar) {
        super(zzflVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgf
    protected final boolean zza() {
        Calendar calendar = Calendar.getInstance();
        this.zza = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.zzb = sb.toString();
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
        long currentTimeMillis = this.zzx.zzax().currentTimeMillis();
        if (currentTimeMillis - this.zze > ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE) {
            this.zzd = null;
        }
        Boolean bool = this.zzd;
        if (bool == null) {
            if (ContextCompat.checkSelfPermission(this.zzx.zzaw(), "android.permission.GET_ACCOUNTS") != 0) {
                this.zzx.zzat().zzf().zza("Permission error checking for dasher/unicorn accounts");
                this.zze = currentTimeMillis;
                this.zzd = false;
                return false;
            }
            if (this.zzc == null) {
                this.zzc = AccountManager.get(this.zzx.zzaw());
            }
            try {
                result = this.zzc.getAccountsByTypeAndFeatures(AccountType.GOOGLE, new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                this.zzx.zzat().zzc().zzb("Exception checking account types", e);
            }
            if (result != null && result.length > 0) {
                this.zzd = true;
                this.zze = currentTimeMillis;
                return true;
            }
            Account[] result2 = this.zzc.getAccountsByTypeAndFeatures(AccountType.GOOGLE, new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.zzd = true;
                this.zze = currentTimeMillis;
                return true;
            }
            this.zze = currentTimeMillis;
            this.zzd = false;
            return false;
        }
        return bool.booleanValue();
    }
}
