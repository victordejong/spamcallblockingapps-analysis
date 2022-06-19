package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.Context;
/* renamed from: com.google.android.gms.internal.consent_sdk.bb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bb.class */
public abstract class AbstractC13198bb {

    /* renamed from: a */
    private static AbstractC13198bb f50377a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.consent_sdk.bb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bb$a.class */
    public interface AbstractC13199a {
        /* renamed from: a */
        AbstractC13199a mo13533a(Application application);

        /* renamed from: a */
        AbstractC13198bb mo13534a();
    }

    /* renamed from: a */
    public static AbstractC13198bb m13567a(Context context) {
        AbstractC13198bb abstractC13198bb;
        synchronized (AbstractC13198bb.class) {
            try {
                if (f50377a == null) {
                    f50377a = new C13250j(null).mo13533a((Application) context.getApplicationContext()).mo13534a();
                }
                abstractC13198bb = f50377a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC13198bb;
    }

    /* renamed from: a */
    public abstract C13228cc mo13541a();

    /* renamed from: b */
    public abstract C13170aa mo13539b();
}
