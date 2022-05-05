package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.WorkerThread;
import androidx.core.content.ContextCompat;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzal.class */
public final class zzal extends zzgr {

    /* renamed from: c */
    private long f8862c;

    /* renamed from: d */
    private String f8863d;

    /* renamed from: e */
    private Boolean f8864e;

    /* renamed from: f */
    private AccountManager f8865f;

    /* renamed from: g */
    private Boolean f8866g;

    /* renamed from: h */
    private long f8867h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzal(zzfv zzfvVar) {
        super(zzfvVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        Calendar instance = Calendar.getInstance();
        this.f8862c = TimeUnit.MINUTES.convert(instance.get(15) + instance.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
        sb.append(lowerCase2);
        this.f8863d = sb.toString();
        return false;
    }

    /* renamed from: s */
    public final boolean m11710s(Context context) {
        if (this.f8864e == null) {
            this.f8864e = Boolean.FALSE;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f8864e = Boolean.TRUE;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return this.f8864e.booleanValue();
    }

    /* renamed from: t */
    public final long m11709t() {
        m11310n();
        return this.f8862c;
    }

    /* renamed from: u */
    public final String m11708u() {
        m11310n();
        return this.f8863d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: v */
    public final long m11707v() {
        mo11316e();
        return this.f8867h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: w */
    public final void m11706w() {
        mo11316e();
        this.f8866g = null;
        this.f8867h = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: x */
    public final boolean m11705x() {
        Account[] result;
        mo11316e();
        long a = mo11085a().mo14335a();
        if (a - this.f8867h > 86400000) {
            this.f8866g = null;
        }
        Boolean bool = this.f8866g;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (ContextCompat.m19678a(mo11075f(), "android.permission.GET_ACCOUNTS") != 0) {
            mo11081c().m11556H().m11540a("Permission error checking for dasher/unicorn accounts");
            this.f8867h = a;
            this.f8866g = Boolean.FALSE;
            return false;
        }
        if (this.f8865f == null) {
            this.f8865f = AccountManager.get(mo11075f());
        }
        try {
            result = this.f8865f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            mo11081c().m11559E().m11539b("Exception checking account types", e);
        }
        if (result == null || result.length <= 0) {
            Account[] result2 = this.f8865f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f8866g = Boolean.TRUE;
                this.f8867h = a;
                return true;
            }
            this.f8867h = a;
            this.f8866g = Boolean.FALSE;
            return false;
        }
        this.f8866g = Boolean.TRUE;
        this.f8867h = a;
        return true;
    }
}
