package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.core.p017a.C0438a;
import com.google.android.gms.common.util.AbstractC2708e;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.measurement.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l.class */
public final class C4444l extends AbstractC4317fy {

    /* renamed from: a */
    private long f19366a;

    /* renamed from: b */
    private String f19367b;

    /* renamed from: c */
    private Boolean f19368c;

    /* renamed from: d */
    private AccountManager f19369d;

    /* renamed from: e */
    private Boolean f19370e;

    /* renamed from: f */
    private long f19371f;

    public C4444l(C4296fd c4296fd) {
        super(c4296fd);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: a */
    protected final boolean mo4046a() {
        Calendar calendar = Calendar.getInstance();
        this.f19366a = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        this.f19367b = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()).append(lowerCase).append("-").append(lowerCase2).toString();
        return false;
    }

    /* renamed from: a */
    public final boolean m4045a(Context context) {
        if (this.f19368c == null) {
            mo4026y();
            this.f19368c = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f19368c = true;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return this.f19368c.booleanValue();
    }

    /* renamed from: c */
    public final String m4044c() {
        m4445A();
        return this.f19367b;
    }

    /* renamed from: d */
    public final long m4043d() {
        mo4037o();
        return this.f19371f;
    }

    /* renamed from: e */
    public final void m4042e() {
        mo4037o();
        this.f19370e = null;
        this.f19371f = 0L;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00f3 -> B:31:0x002f). Please submit an issue!!! */
    /* renamed from: f */
    public final boolean m4041f() {
        boolean z;
        Account[] result;
        mo4037o();
        long mo13862a = mo4035q().mo13862a();
        if (mo13862a - this.f19371f > 86400000) {
            this.f19370e = null;
        }
        if (this.f19370e != null) {
            z = this.f19370e.booleanValue();
        } else if (C0438a.m20898a(mo4034r(), "android.permission.GET_ACCOUNTS") != 0) {
            mo4030v().m4661f().m4654a("Permission error checking for dasher/unicorn accounts");
            this.f19371f = mo13862a;
            this.f19370e = false;
            z = false;
        } else {
            if (this.f19369d == null) {
                this.f19369d = AccountManager.get(mo4034r());
            }
            try {
                result = this.f19369d.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e) {
                mo4030v().m4664c().m4653a("Exception checking account types", e);
            }
            if (result == null || result.length <= 0) {
                Account[] result2 = this.f19369d.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
                if (result2 != null && result2.length > 0) {
                    this.f19370e = true;
                    this.f19371f = mo13862a;
                    z = true;
                }
                this.f19371f = mo13862a;
                this.f19370e = false;
                z = false;
            } else {
                this.f19370e = true;
                this.f19371f = mo13862a;
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void mo4038n() {
        super.mo4038n();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final /* bridge */ /* synthetic */ void mo4037o() {
        super.mo4037o();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    /* renamed from: w_ */
    public final long m4028w_() {
        m4445A();
        return this.f19366a;
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
