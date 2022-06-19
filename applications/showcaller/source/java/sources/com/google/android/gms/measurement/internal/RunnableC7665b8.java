package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.AbstractC7441kc;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.b8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/b8.class */
public final class RunnableC7665b8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35018d;

    /* renamed from: e */
    final /* synthetic */ String f35019e;

    /* renamed from: f */
    final /* synthetic */ zzp f35020f;

    /* renamed from: g */
    final /* synthetic */ AbstractC7441kc f35021g;

    /* renamed from: h */
    final /* synthetic */ C7773k8 f35022h;

    public RunnableC7665b8(C7773k8 c7773k8, String str, String str2, zzp zzpVar, AbstractC7441kc abstractC7441kc) {
        this.f35022h = c7773k8;
        this.f35018d = str;
        this.f35019e = str2;
        this.f35020f = zzpVar;
        this.f35021g = abstractC7441kc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7708f3 abstractC7708f3;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        C7858s4 c7858s4 = arrayList;
        ArrayList<Bundle> arrayList2 = arrayList;
        try {
            try {
                abstractC7708f3 = this.f35022h.f35402d;
                if (abstractC7708f3 == null) {
                    this.f35022h.f35460a.mo6047C().m6195m().m6214c("Failed to get conditional properties; not connected to service", this.f35018d, this.f35019e);
                    c7858s4 = this.f35022h.f35460a;
                    arrayList2 = arrayList;
                } else {
                    C6155o.m17018j(this.f35020f);
                    ArrayList<Bundle> m5977Y = C7885u9.m5977Y(abstractC7708f3.mo6243M0(this.f35018d, this.f35019e, this.f35020f));
                    this.f35022h.m6289D();
                    c7858s4 = this.f35022h.f35460a;
                    arrayList2 = m5977Y;
                }
            } catch (RemoteException e) {
                c7858s4 = arrayList2;
                this.f35022h.f35460a.mo6047C().m6195m().m6213d("Failed to get conditional properties; remote exception", this.f35018d, this.f35019e, e);
                c7858s4 = this.f35022h.f35460a;
            }
            c7858s4.m6043G().m5978X(this.f35021g, arrayList2);
        } catch (Throwable th) {
            this.f35022h.f35460a.m6043G().m5978X(this.f35021g, c7858s4);
            throw th;
        }
    }
}
