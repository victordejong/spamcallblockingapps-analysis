package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.ib */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ib.class */
public final class RunnableC14070ib implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51862a;

    /* renamed from: b */
    final /* synthetic */ String f51863b;

    /* renamed from: c */
    final /* synthetic */ zzp f51864c;

    /* renamed from: d */
    final /* synthetic */ AbstractC13706nc f51865d;

    /* renamed from: e */
    final /* synthetic */ C14079ik f51866e;

    public RunnableC14070ib(C14079ik c14079ik, String str, String str2, zzp zzpVar, AbstractC13706nc abstractC13706nc) {
        this.f51866e = c14079ik;
        this.f51862a = str;
        this.f51863b = str2;
        this.f51864c = zzpVar;
        this.f51865d = abstractC13706nc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        C13979es c13979es = arrayList;
        ArrayList<Bundle> arrayList2 = arrayList;
        try {
            try {
                AbstractC13938df abstractC13938df = this.f51866e.f51890b;
                if (abstractC13938df == null) {
                    this.f51866e.f51637t.mo11661c().f51395c.m12090a("Failed to get conditional properties; not connected to service", this.f51862a, this.f51863b);
                    c13979es = this.f51866e.f51637t;
                    arrayList2 = arrayList;
                } else {
                    C12045o.m19162a(this.f51864c);
                    ArrayList<Bundle> m11574a = C14116ju.m11574a(abstractC13938df.mo11895a(this.f51862a, this.f51863b, this.f51864c));
                    this.f51866e.m11736i();
                    c13979es = this.f51866e.f51637t;
                    arrayList2 = m11574a;
                }
            } catch (RemoteException e) {
                c13979es = arrayList2;
                this.f51866e.f51637t.mo11661c().f51395c.m12089a("Failed to get conditional properties; remote exception", this.f51862a, this.f51863b, e);
                c13979es = this.f51866e.f51637t;
            }
            c13979es.m11988g().m11595a(this.f51865d, arrayList2);
        } catch (Throwable th) {
            this.f51866e.f51637t.m11988g().m11595a(this.f51865d, c13979es);
            throw th;
        }
    }
}
