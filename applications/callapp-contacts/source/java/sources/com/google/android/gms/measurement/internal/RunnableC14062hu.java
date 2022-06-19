package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
/* renamed from: com.google.android.gms.measurement.internal.hu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hu.class */
public final class RunnableC14062hu implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzas f51828a;

    /* renamed from: b */
    final /* synthetic */ String f51829b;

    /* renamed from: c */
    final /* synthetic */ AbstractC13706nc f51830c;

    /* renamed from: d */
    final /* synthetic */ C14079ik f51831d;

    public RunnableC14062hu(C14079ik c14079ik, zzas zzasVar, String str, AbstractC13706nc abstractC13706nc) {
        this.f51831d = c14079ik;
        this.f51828a = zzasVar;
        this.f51829b = str;
        this.f51830c = abstractC13706nc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C13979es c13979es = null;
        byte[] bArr = null;
        try {
            try {
                AbstractC13938df abstractC13938df = this.f51831d.f51890b;
                if (abstractC13938df == null) {
                    this.f51831d.f51637t.mo11661c().f51395c.m12092a("Discarding data. Failed to send event to service to bundle");
                    c13979es = this.f51831d.f51637t;
                    bArr = null;
                } else {
                    byte[] mo11890b = abstractC13938df.mo11890b(this.f51828a, this.f51829b);
                    this.f51831d.m11736i();
                    c13979es = this.f51831d.f51637t;
                    bArr = mo11890b;
                }
            } catch (RemoteException e) {
                c13979es = bArr;
                this.f51831d.f51637t.mo11661c().f51395c.m12091a("Failed to send event to the service to bundle", e);
                c13979es = this.f51831d.f51637t;
            }
            c13979es.m11988g().m11593a(this.f51830c, bArr);
        } catch (Throwable th) {
            this.f51831d.f51637t.m11988g().m11593a(this.f51830c, c13979es);
            throw th;
        }
    }
}
