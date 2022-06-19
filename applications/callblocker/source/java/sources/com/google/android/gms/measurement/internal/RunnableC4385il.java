package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC4132mj;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.il */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/il.class */
public final class RunnableC4385il implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f19165a;

    /* renamed from: b */
    private final /* synthetic */ String f19166b;

    /* renamed from: c */
    private final /* synthetic */ C4430kb f19167c;

    /* renamed from: d */
    private final /* synthetic */ AbstractC4132mj f19168d;

    /* renamed from: e */
    private final /* synthetic */ C4367hu f19169e;

    public RunnableC4385il(C4367hu c4367hu, String str, String str2, C4430kb c4430kb, AbstractC4132mj abstractC4132mj) {
        this.f19169e = c4367hu;
        this.f19165a = str;
        this.f19166b = str2;
        this.f19167c = c4430kb;
        this.f19168d = abstractC4132mj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC4255dq abstractC4255dq;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        ArrayList<Bundle> arrayList2 = arrayList;
        ArrayList<Bundle> arrayList3 = arrayList;
        try {
            try {
                abstractC4255dq = this.f19169e.f19103b;
                if (abstractC4255dq == null) {
                    arrayList2 = arrayList;
                    arrayList3 = arrayList;
                    this.f19169e.mo4030v().m4655x_().m4652a("Failed to get conditional properties; not connected to service", this.f19165a, this.f19166b);
                    this.f19169e.mo4032t().m4128a(this.f19168d, arrayList);
                } else {
                    ArrayList<Bundle> m4094b = C4424jw.m4094b(abstractC4255dq.mo4455a(this.f19165a, this.f19166b, this.f19167c));
                    arrayList2 = m4094b;
                    arrayList3 = m4094b;
                    this.f19169e.m4338K();
                    this.f19169e.mo4032t().m4128a(this.f19168d, m4094b);
                }
            } catch (RemoteException e) {
                arrayList3 = arrayList2;
                this.f19169e.mo4030v().m4655x_().m4651a("Failed to get conditional properties; remote exception", this.f19165a, this.f19166b, e);
                this.f19169e.mo4032t().m4128a(this.f19168d, arrayList2);
            }
        } catch (Throwable th) {
            this.f19169e.mo4032t().m4128a(this.f19168d, arrayList3);
            throw th;
        }
    }
}
