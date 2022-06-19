package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
import com.google.android.gms.internal.measurement.C13620jy;
/* renamed from: com.google.android.gms.measurement.internal.hp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hp.class */
public final class RunnableC14057hp implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51817a;

    /* renamed from: b */
    final /* synthetic */ AbstractC13706nc f51818b;

    /* renamed from: c */
    final /* synthetic */ C14079ik f51819c;

    public RunnableC14057hp(C14079ik c14079ik, zzp zzpVar, AbstractC13706nc abstractC13706nc) {
        this.f51819c = c14079ik;
        this.f51817a = zzpVar;
        this.f51818b = abstractC13706nc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C13979es c13979es;
        String str = null;
        try {
            try {
                C13620jy.m12411b();
                if (!this.f51819c.f51637t.f51529g.m12061d(null, C13935dc.f51333au) || this.f51819c.f51637t.m11991b().m12036e().m11957c()) {
                    AbstractC13938df abstractC13938df = this.f51819c.f51890b;
                    if (abstractC13938df == null) {
                        this.f51819c.f51637t.mo11661c().f51395c.m12092a("Failed to get app instance id");
                        c13979es = this.f51819c.f51637t;
                        str = null;
                    } else {
                        C12045o.m19162a(this.f51817a);
                        String mo11888c = abstractC13938df.mo11888c(this.f51817a);
                        if (mo11888c != null) {
                            this.f51819c.f51637t.m11989f().m11862a(mo11888c);
                            this.f51819c.f51637t.m11991b().f51460f.m12042a(mo11888c);
                        }
                        this.f51819c.m11736i();
                        c13979es = this.f51819c.f51637t;
                        str = mo11888c;
                    }
                } else {
                    this.f51819c.f51637t.mo11661c().f51400h.m12092a("Analytics storage consent denied; will not get app instance id");
                    this.f51819c.f51637t.m11989f().m11862a((String) null);
                    this.f51819c.f51637t.m11991b().f51460f.m12042a(null);
                    c13979es = this.f51819c.f51637t;
                    str = null;
                }
            } catch (RemoteException e) {
                this.f51819c.f51637t.mo11661c().f51395c.m12091a("Failed to get app instance id", e);
                c13979es = this.f51819c.f51637t;
            }
            c13979es.m11988g().m11596a(this.f51818b, str);
        } catch (Throwable th) {
            this.f51819c.f51637t.m11988g().m11596a(this.f51818b, (String) null);
            throw th;
        }
    }
}
