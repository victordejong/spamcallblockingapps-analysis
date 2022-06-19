package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.C0594c;
/* renamed from: com.google.android.gms.internal.measurement.k3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/k3.class */
public final class C7432k3 implements AbstractC7390h3 {

    /* renamed from: a */
    private static C7432k3 f34566a;

    /* renamed from: b */
    private final Context f34567b;

    /* renamed from: c */
    private final ContentObserver f34568c;

    private C7432k3() {
        this.f34567b = null;
        this.f34568c = null;
    }

    private C7432k3(Context context) {
        this.f34567b = context;
        C7418j3 c7418j3 = new C7418j3(this, null);
        this.f34568c = c7418j3;
        context.getContentResolver().registerContentObserver(C7619y2.f34774a, true, c7418j3);
    }

    /* renamed from: a */
    public static C7432k3 m7214a(Context context) {
        C7432k3 c7432k3;
        synchronized (C7432k3.class) {
            try {
                if (f34566a == null) {
                    f34566a = C0594c.m33324b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C7432k3(context) : new C7432k3();
                }
                c7432k3 = f34566a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c7432k3;
    }

    /* renamed from: c */
    public static void m7212c() {
        Context context;
        synchronized (C7432k3.class) {
            try {
                C7432k3 c7432k3 = f34566a;
                if (c7432k3 != null && (context = c7432k3.f34567b) != null && c7432k3.f34568c != null) {
                    context.getContentResolver().unregisterContentObserver(f34566a.f34568c);
                }
                f34566a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final String mo6741B(String str) {
        if (this.f34567b == null) {
            return null;
        }
        try {
            return (String) C7362f3.m7534a(new AbstractC7376g3(this, str) { // from class: com.google.android.gms.internal.measurement.i3

                /* renamed from: a */
                private final C7432k3 f34517a;

                /* renamed from: b */
                private final String f34518b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f34517a = this;
                    this.f34518b = str;
                }

                @Override // com.google.android.gms.internal.measurement.AbstractC7376g3
                public final Object zza() {
                    return this.f34517a.m7211d(this.f34518b);
                }
            });
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    /* renamed from: d */
    public final /* synthetic */ String m7211d(String str) {
        return C7619y2.m6744a(this.f34567b.getContentResolver(), str, null);
    }
}
