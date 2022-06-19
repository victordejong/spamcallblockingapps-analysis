package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.core.content.C0790b;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.measurement.internal.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m.class */
public final class C14135m extends AbstractC14001fn {

    /* renamed from: a */
    Boolean f52050a;

    /* renamed from: b */
    long f52051b;

    /* renamed from: c */
    private long f52052c;

    /* renamed from: d */
    private String f52053d;

    /* renamed from: e */
    private AccountManager f52054e;

    public C14135m(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: Z_ */
    public final long m11520Z_() {
        m11881g();
        return this.f52052c;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        Calendar calendar = Calendar.getInstance();
        this.f52052c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append(VerificationLanguage.REGION_PREFIX);
        sb.append(lowerCase2);
        this.f52053d = sb.toString();
        return false;
    }

    public final String aa_() {
        m11881g();
        return this.f52053d;
    }

    public final boolean ab_() {
        Account[] result;
        mo11884S_();
        long mo19039a = this.f51637t.f51532j.mo19039a();
        if (mo19039a - this.f52051b > 86400000) {
            this.f52050a = null;
        }
        Boolean bool = this.f52050a;
        if (bool == null) {
            if (C0790b.m44498a(this.f51637t.f51523a, "android.permission.GET_ACCOUNTS") != 0) {
                this.f51637t.mo11661c().f51399g.m12092a("Permission error checking for dasher/unicorn accounts");
                this.f52051b = mo19039a;
                this.f52050a = Boolean.FALSE;
                return false;
            }
            if (this.f52054e == null) {
                this.f52054e = AccountManager.get(this.f51637t.f51523a);
            }
            try {
                result = this.f52054e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                this.f51637t.mo11661c().f51396d.m12091a("Exception checking account types", e);
            }
            if (result != null && result.length > 0) {
                this.f52050a = Boolean.TRUE;
                this.f52051b = mo19039a;
                return true;
            }
            Account[] result2 = this.f52054e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f52050a = Boolean.TRUE;
                this.f52051b = mo19039a;
                return true;
            }
            this.f52051b = mo19039a;
            this.f52050a = Boolean.FALSE;
            return false;
        }
        return bool.booleanValue();
    }
}
