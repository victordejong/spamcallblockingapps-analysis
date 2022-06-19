package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.p017a.C0454b;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.internal.measurement.be */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/be.class */
public final class C3816be implements AbstractC3810az {

    /* renamed from: a */
    private static C3816be f17879a;
    @Nullable

    /* renamed from: b */
    private final Context f17880b;
    @Nullable

    /* renamed from: c */
    private final ContentObserver f17881c;

    private C3816be() {
        this.f17880b = null;
        this.f17881c = null;
    }

    private C3816be(Context context) {
        this.f17880b = context;
        this.f17881c = new C3818bg(this, null);
        context.getContentResolver().registerContentObserver(C3805au.f17844a, true, this.f17881c);
    }

    /* renamed from: a */
    public static C3816be m5887a(Context context) {
        C3816be c3816be;
        synchronized (C3816be.class) {
            try {
                if (f17879a == null) {
                    f17879a = C0454b.m20828a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C3816be(context) : new C3816be();
                }
                c3816be = f17879a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c3816be;
    }

    /* renamed from: a */
    public static void m5888a() {
        synchronized (C3816be.class) {
            try {
                if (f17879a != null && f17879a.f17880b != null && f17879a.f17881c != null) {
                    f17879a.f17880b.getContentResolver().unregisterContentObserver(f17879a.f17881c);
                }
                f17879a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final String mo5853a(String str) {
        String str2;
        if (this.f17880b == null) {
            str2 = null;
        } else {
            try {
                str2 = (String) C3814bc.m5890a(new AbstractC3813bb(this, str) { // from class: com.google.android.gms.internal.measurement.bd

                    /* renamed from: a */
                    private final C3816be f17877a;

                    /* renamed from: b */
                    private final String f17878b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f17877a = this;
                        this.f17878b = str;
                    }

                    @Override // com.google.android.gms.internal.measurement.AbstractC3813bb
                    /* renamed from: a */
                    public final Object mo5889a() {
                        return this.f17877a.m5886b(this.f17878b);
                    }
                });
            } catch (IllegalStateException | SecurityException e) {
                String valueOf = String.valueOf(str);
                Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
                str2 = null;
            }
        }
        return str2;
    }

    /* renamed from: b */
    public final /* synthetic */ String m5886b(String str) {
        return C3805au.m5904a(this.f17880b.getContentResolver(), str, (String) null);
    }
}
