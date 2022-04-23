package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.core.content.b;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m.class */
public final class m extends fn {

    /* renamed from: a  reason: collision with root package name */
    Boolean f29955a;

    /* renamed from: b  reason: collision with root package name */
    long f29956b;

    /* renamed from: c  reason: collision with root package name */
    private long f29957c;

    /* renamed from: d  reason: collision with root package name */
    private String f29958d;
    private AccountManager e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(es esVar) {
        super(esVar);
    }

    public final long Z_() {
        g();
        return this.f29957c;
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        Calendar instance = Calendar.getInstance();
        this.f29957c = TimeUnit.MINUTES.convert(instance.get(15) + instance.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append(VerificationLanguage.REGION_PREFIX);
        sb.append(lowerCase2);
        this.f29958d = sb.toString();
        return false;
    }

    public final String aa_() {
        g();
        return this.f29958d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean ab_() {
        Account[] result;
        S_();
        long a2 = this.t.j.a();
        if (a2 - this.f29956b > 86400000) {
            this.f29955a = null;
        }
        Boolean bool = this.f29955a;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (b.a(this.t.f29583a, "android.permission.GET_ACCOUNTS") != 0) {
            this.t.c().g.a("Permission error checking for dasher/unicorn accounts");
            this.f29956b = a2;
            this.f29955a = Boolean.FALSE;
            return false;
        }
        if (this.e == null) {
            this.e = AccountManager.get(this.t.f29583a);
        }
        try {
            result = this.e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            this.t.c().f29507d.a("Exception checking account types", e);
        }
        if (result == null || result.length <= 0) {
            Account[] result2 = this.e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f29955a = Boolean.TRUE;
                this.f29956b = a2;
                return true;
            }
            this.f29956b = a2;
            this.f29955a = Boolean.FALSE;
            return false;
        }
        this.f29955a = Boolean.TRUE;
        this.f29956b = a2;
        return true;
    }
}
