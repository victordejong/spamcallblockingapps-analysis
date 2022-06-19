package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.a8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a8.class */
public final class RunnableC7653a8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f34990d;

    /* renamed from: e */
    final /* synthetic */ String f34991e;

    /* renamed from: f */
    final /* synthetic */ String f34992f;

    /* renamed from: g */
    final /* synthetic */ zzp f34993g;

    /* renamed from: h */
    final /* synthetic */ C7773k8 f34994h;

    public RunnableC7653a8(C7773k8 c7773k8, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar) {
        this.f34994h = c7773k8;
        this.f34990d = atomicReference;
        this.f34991e = str2;
        this.f34992f = str3;
        this.f34993g = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC7708f3 abstractC7708f3;
        synchronized (this.f34990d) {
            try {
                abstractC7708f3 = this.f34994h.f35402d;
            } catch (RemoteException e) {
                this.f34994h.f35460a.mo6047C().m6195m().m6213d("(legacy) Failed to get conditional properties; remote exception", null, this.f34991e, e);
                this.f34990d.set(Collections.emptyList());
                atomicReference = this.f34990d;
            }
            if (abstractC7708f3 == null) {
                this.f34994h.f35460a.mo6047C().m6195m().m6213d("(legacy) Failed to get conditional properties; not connected to service", null, this.f34991e, this.f34992f);
                this.f34990d.set(Collections.emptyList());
                this.f34990d.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C6155o.m17018j(this.f34993g);
                this.f34990d.set(abstractC7708f3.mo6243M0(this.f34991e, this.f34992f, this.f34993g));
            } else {
                this.f34990d.set(abstractC7708f3.mo6242M2(null, this.f34991e, this.f34992f));
            }
            this.f34994h.m6289D();
            atomicReference = this.f34990d;
            atomicReference.notify();
        }
    }
}
