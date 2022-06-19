package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.l7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l7.class */
public final class RunnableC7784l7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35428d;

    /* renamed from: e */
    final /* synthetic */ String f35429e;

    /* renamed from: f */
    final /* synthetic */ zzp f35430f;

    /* renamed from: g */
    final /* synthetic */ boolean f35431g;

    /* renamed from: h */
    final /* synthetic */ AbstractC7441kc f35432h;

    /* renamed from: i */
    final /* synthetic */ C7773k8 f35433i;

    public RunnableC7784l7(C7773k8 c7773k8, String str, String str2, zzp zzpVar, boolean z, AbstractC7441kc abstractC7441kc) {
        this.f35433i = c7773k8;
        this.f35428d = str;
        this.f35429e = str2;
        this.f35430f = zzpVar;
        this.f35431g = z;
        this.f35432h = abstractC7441kc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        AbstractC7708f3 abstractC7708f3;
        Bundle bundle2 = new Bundle();
        try {
            try {
                abstractC7708f3 = this.f35433i.f35402d;
                if (abstractC7708f3 == null) {
                    this.f35433i.f35460a.mo6047C().m6195m().m6214c("Failed to get user properties; not connected to service", this.f35428d, this.f35429e);
                    this.f35433i.f35460a.m6043G().m5979W(this.f35432h, bundle2);
                    return;
                }
                C6155o.m17018j(this.f35430f);
                List<zzkl> mo6245I2 = abstractC7708f3.mo6245I2(this.f35428d, this.f35429e, this.f35431g, this.f35430f);
                bundle = new Bundle();
                if (mo6245I2 != null) {
                    for (zzkl zzklVar : mo6245I2) {
                        String str = zzklVar.f35880h;
                        if (str != null) {
                            bundle.putString(zzklVar.f35877e, str);
                        } else {
                            Long l = zzklVar.f35879g;
                            if (l != null) {
                                bundle.putLong(zzklVar.f35877e, l.longValue());
                            } else {
                                Double d = zzklVar.f35882j;
                                if (d != null) {
                                    bundle.putDouble(zzklVar.f35877e, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    this.f35433i.m6289D();
                    this.f35433i.f35460a.m6043G().m5979W(this.f35432h, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.f35433i.f35460a.mo6047C().m6195m().m6214c("Failed to get user properties; remote exception", this.f35428d, e);
                    this.f35433i.f35460a.m6043G().m5979W(this.f35432h, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                this.f35433i.f35460a.m6043G().m5979W(this.f35432h, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            this.f35433i.f35460a.m6043G().m5979W(this.f35432h, bundle2);
            throw th;
        }
    }
}
