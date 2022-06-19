package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
/* renamed from: com.google.android.gms.measurement.internal.u7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/u7.class */
public final class RunnableC7883u7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzas f35715d;

    /* renamed from: e */
    final /* synthetic */ String f35716e;

    /* renamed from: f */
    final /* synthetic */ AbstractC7441kc f35717f;

    /* renamed from: g */
    final /* synthetic */ C7773k8 f35718g;

    public RunnableC7883u7(C7773k8 c7773k8, zzas zzasVar, String str, AbstractC7441kc abstractC7441kc) {
        this.f35718g = c7773k8;
        this.f35715d = zzasVar;
        this.f35716e = str;
        this.f35717f = abstractC7441kc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        C7858s4 c7858s4 = null;
        byte[] bArr = null;
        try {
            try {
                abstractC7708f3 = this.f35718g.f35402d;
                if (abstractC7708f3 == null) {
                    this.f35718g.f35460a.mo6047C().m6195m().m6216a("Discarding data. Failed to send event to service to bundle");
                    c7858s4 = this.f35718g.f35460a;
                    bArr = null;
                } else {
                    byte[] mo6227u3 = abstractC7708f3.mo6227u3(this.f35715d, this.f35716e);
                    this.f35718g.m6289D();
                    c7858s4 = this.f35718g.f35460a;
                    bArr = mo6227u3;
                }
            } catch (RemoteException e) {
                c7858s4 = bArr;
                this.f35718g.f35460a.mo6047C().m6195m().m6215b("Failed to send event to the service to bundle", e);
                c7858s4 = this.f35718g.f35460a;
            }
            c7858s4.m6043G().m5981U(this.f35717f, bArr);
        } catch (Throwable th) {
            this.f35718g.f35460a.m6043G().m5981U(this.f35717f, c7858s4);
            throw th;
        }
    }
}
