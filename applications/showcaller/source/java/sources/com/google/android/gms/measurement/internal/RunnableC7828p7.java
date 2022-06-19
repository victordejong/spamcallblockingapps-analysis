package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
import com.google.android.gms.internal.measurement.C7382g9;
/* renamed from: com.google.android.gms.measurement.internal.p7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/p7.class */
public final class RunnableC7828p7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzp f35585d;

    /* renamed from: e */
    final /* synthetic */ AbstractC7441kc f35586e;

    /* renamed from: f */
    final /* synthetic */ C7773k8 f35587f;

    public RunnableC7828p7(C7773k8 c7773k8, zzp zzpVar, AbstractC7441kc abstractC7441kc) {
        this.f35587f = c7773k8;
        this.f35585d = zzpVar;
        this.f35586e = abstractC7441kc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7858s4 c7858s4;
        AbstractC7708f3 abstractC7708f3;
        String str = null;
        try {
            try {
                C7382g9.m7385a();
                if (!this.f35587f.f35460a.m6006y().m6471u(null, C7672c3.f35107w0) || this.f35587f.f35460a.m6005z().m6460r().m6443h()) {
                    abstractC7708f3 = this.f35587f.f35402d;
                    if (abstractC7708f3 == null) {
                        this.f35587f.f35460a.mo6047C().m6195m().m6216a("Failed to get app instance id");
                        c7858s4 = this.f35587f.f35460a;
                        str = null;
                    } else {
                        C6155o.m17018j(this.f35585d);
                        String mo6230r1 = abstractC7708f3.mo6230r1(this.f35585d);
                        if (mo6230r1 != null) {
                            this.f35587f.f35460a.m6044F().m5907p(mo6230r1);
                            this.f35587f.f35460a.m6005z().f35198h.m6557b(mo6230r1);
                        }
                        this.f35587f.m6289D();
                        c7858s4 = this.f35587f.f35460a;
                        str = mo6230r1;
                    }
                } else {
                    this.f35587f.f35460a.mo6047C().m6190r().m6216a("Analytics storage consent denied; will not get app instance id");
                    this.f35587f.f35460a.m6044F().m5907p(null);
                    this.f35587f.f35460a.m6005z().f35198h.m6557b(null);
                    c7858s4 = this.f35587f.f35460a;
                    str = null;
                }
            } catch (RemoteException e) {
                this.f35587f.f35460a.mo6047C().m6195m().m6215b("Failed to get app instance id", e);
                c7858s4 = this.f35587f.f35460a;
            }
            c7858s4.m6043G().m5984R(this.f35586e, str);
        } catch (Throwable th) {
            this.f35587f.f35460a.m6043G().m5984R(this.f35586e, null);
            throw th;
        }
    }
}
