package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.core.content.C0586a;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.measurement.internal.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m.class */
public final class C7787m extends AbstractC7804n5 {

    /* renamed from: c */
    private long f35446c;

    /* renamed from: d */
    private String f35447d;

    /* renamed from: e */
    private AccountManager f35448e;

    /* renamed from: f */
    private Boolean f35449f;

    /* renamed from: g */
    private long f35450g;

    public C7787m(C7858s4 c7858s4) {
        super(c7858s4);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        Calendar calendar = Calendar.getInstance();
        this.f35446c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f35447d = sb.toString();
        return false;
    }

    /* renamed from: m */
    public final long m6221m() {
        m6209j();
        return this.f35446c;
    }

    /* renamed from: n */
    public final String m6220n() {
        m6209j();
        return this.f35447d;
    }

    /* renamed from: o */
    public final long m6219o() {
        mo6113f();
        return this.f35450g;
    }

    /* renamed from: p */
    public final void m6218p() {
        mo6113f();
        this.f35449f = null;
        this.f35450g = 0L;
    }

    /* renamed from: q */
    public final boolean m6217q() {
        Account[] result;
        mo6113f();
        long mo16807a = this.f35460a.mo6007x().mo16807a();
        if (mo16807a - this.f35450g > 86400000) {
            this.f35449f = null;
        }
        Boolean bool = this.f35449f;
        if (bool == null) {
            if (C0586a.m33353a(this.f35460a.mo6030a(), "android.permission.GET_ACCOUNTS") != 0) {
                this.f35460a.mo6047C().m6191q().m6216a("Permission error checking for dasher/unicorn accounts");
                this.f35450g = mo16807a;
                this.f35449f = Boolean.FALSE;
                return false;
            }
            if (this.f35448e == null) {
                this.f35448e = AccountManager.get(this.f35460a.mo6030a());
            }
            try {
                result = this.f35448e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                this.f35460a.mo6047C().m6194n().m6215b("Exception checking account types", e);
            }
            if (result != null && result.length > 0) {
                this.f35449f = Boolean.TRUE;
                this.f35450g = mo16807a;
                return true;
            }
            Account[] result2 = this.f35448e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f35449f = Boolean.TRUE;
                this.f35450g = mo16807a;
                return true;
            }
            this.f35450g = mo16807a;
            this.f35449f = Boolean.FALSE;
            return false;
        }
        return bool.booleanValue();
    }
}
