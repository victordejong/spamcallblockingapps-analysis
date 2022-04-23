package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dp.class */
final class dp implements dm {

    /* renamed from: b  reason: collision with root package name */
    private static dp f28965b;

    /* renamed from: a  reason: collision with root package name */
    final Context f28966a;

    /* renamed from: c  reason: collision with root package name */
    private final ContentObserver f28967c;

    private dp() {
        this.f28966a = null;
        this.f28967c = null;
    }

    private dp(Context context) {
        this.f28966a = context;
        Cdo doVar = new Cdo(this, null);
        this.f28967c = doVar;
        context.getContentResolver().registerContentObserver(de.f28950a, true, doVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dp a(Context context) {
        dp dpVar;
        synchronized (dp.class) {
            try {
                if (f28965b == null) {
                    f28965b = c.a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new dp(context) : new dp();
                }
                dpVar = f28965b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        Context context;
        synchronized (dp.class) {
            try {
                dp dpVar = f28965b;
                if (!(dpVar == null || (context = dpVar.f28966a) == null || dpVar.f28967c == null)) {
                    context.getContentResolver().unregisterContentObserver(f28965b.f28967c);
                }
                f28965b = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final String a(final String str) {
        if (this.f28966a == null) {
            return null;
        }
        try {
            return (String) dk.a(new dl(this, str) { // from class: com.google.android.gms.internal.measurement.dn

                /* renamed from: a  reason: collision with root package name */
                private final dp f28963a;

                /* renamed from: b  reason: collision with root package name */
                private final String f28964b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28963a = this;
                    this.f28964b = str;
                }

                @Override // com.google.android.gms.internal.measurement.dl
                public final Object a() {
                    dp dpVar = this.f28963a;
                    return de.a(dpVar.f28966a.getContentResolver(), this.f28964b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }
}
