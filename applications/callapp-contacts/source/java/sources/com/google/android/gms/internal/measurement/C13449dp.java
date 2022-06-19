package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.C0793c;
/* renamed from: com.google.android.gms.internal.measurement.dp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dp.class */
public final class C13449dp implements AbstractC13446dm {

    /* renamed from: b */
    private static C13449dp f50650b;

    /* renamed from: a */
    final Context f50651a;

    /* renamed from: c */
    private final ContentObserver f50652c;

    private C13449dp() {
        this.f50651a = null;
        this.f50652c = null;
    }

    private C13449dp(Context context) {
        this.f50651a = context;
        C13448do c13448do = new C13448do(this, null);
        this.f50652c = c13448do;
        context.getContentResolver().registerContentObserver(C13438de.f50622a, true, c13448do);
    }

    /* renamed from: a */
    public static C13449dp m12914a(Context context) {
        C13449dp c13449dp;
        synchronized (C13449dp.class) {
            try {
                if (f50650b == null) {
                    f50650b = C0793c.m44489a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C13449dp(context) : new C13449dp();
                }
                c13449dp = f50650b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c13449dp;
    }

    /* renamed from: a */
    public static void m12915a() {
        Context context;
        synchronized (C13449dp.class) {
            try {
                C13449dp c13449dp = f50650b;
                if (c13449dp != null && (context = c13449dp.f50651a) != null && c13449dp.f50652c != null) {
                    context.getContentResolver().unregisterContentObserver(f50650b.f50652c);
                }
                f50650b = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final String mo12899a(String str) {
        if (this.f50651a == null) {
            return null;
        }
        try {
            return (String) C13444dk.m12917a(new AbstractC13445dl(this, str) { // from class: com.google.android.gms.internal.measurement.dn

                /* renamed from: a */
                private final C13449dp f50648a;

                /* renamed from: b */
                private final String f50649b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f50648a = this;
                    this.f50649b = str;
                }

                @Override // com.google.android.gms.internal.measurement.AbstractC13445dl
                /* renamed from: a */
                public final Object mo12916a() {
                    C13449dp c13449dp = this.f50648a;
                    return C13438de.m12924a(c13449dp.f50651a.getContentResolver(), this.f50649b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }
}
