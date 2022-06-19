package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zbn.class */
public final class zbn {

    /* renamed from: c */
    public static zbn f5571c;
    @VisibleForTesting

    /* renamed from: a */
    public final Storage f5572a;
    @VisibleForTesting

    /* renamed from: b */
    public GoogleSignInAccount f5573b;

    public zbn(Context context) {
        Storage m39113a = Storage.m39113a(context);
        this.f5572a = m39113a;
        this.f5573b = m39113a.m39112b();
        m39113a.m39111c();
    }

    /* renamed from: a */
    public static zbn m39098a(Context context) {
        zbn zbnVar;
        synchronized (zbn.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                synchronized (zbn.class) {
                    zbnVar = f5571c;
                    if (zbnVar == null) {
                        zbnVar = new zbn(applicationContext);
                        f5571c = zbnVar;
                    }
                }
                return zbnVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zbnVar;
    }

    /* renamed from: b */
    public final void m39097b() {
        synchronized (this) {
            Storage storage = this.f5572a;
            storage.f5562a.lock();
            storage.f5563b.edit().clear().apply();
            storage.f5562a.unlock();
            this.f5573b = null;
        }
    }
}
