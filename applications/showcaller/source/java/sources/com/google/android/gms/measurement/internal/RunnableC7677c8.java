package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.c8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/c8.class */
public final class RunnableC7677c8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AtomicReference f35128d;

    /* renamed from: e */
    final /* synthetic */ String f35129e;

    /* renamed from: f */
    final /* synthetic */ String f35130f;

    /* renamed from: g */
    final /* synthetic */ zzp f35131g;

    /* renamed from: h */
    final /* synthetic */ boolean f35132h;

    /* renamed from: i */
    final /* synthetic */ C7773k8 f35133i;

    public RunnableC7677c8(C7773k8 c7773k8, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.f35133i = c7773k8;
        this.f35128d = atomicReference;
        this.f35129e = str2;
        this.f35130f = str3;
        this.f35131g = zzpVar;
        this.f35132h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC7708f3 abstractC7708f3;
        synchronized (this.f35128d) {
            try {
                abstractC7708f3 = this.f35133i.f35402d;
            } catch (RemoteException e) {
                this.f35133i.f35460a.mo6047C().m6195m().m6213d("(legacy) Failed to get user properties; remote exception", null, this.f35129e, e);
                this.f35128d.set(Collections.emptyList());
                atomicReference = this.f35128d;
            }
            if (abstractC7708f3 == null) {
                this.f35133i.f35460a.mo6047C().m6195m().m6213d("(legacy) Failed to get user properties; not connected to service", null, this.f35129e, this.f35130f);
                this.f35128d.set(Collections.emptyList());
                this.f35128d.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C6155o.m17018j(this.f35131g);
                this.f35128d.set(abstractC7708f3.mo6245I2(this.f35129e, this.f35130f, this.f35132h, this.f35131g));
            } else {
                this.f35128d.set(abstractC7708f3.mo6228r6(null, this.f35129e, this.f35130f, this.f35132h));
            }
            this.f35133i.m6289D();
            atomicReference = this.f35128d;
            atomicReference.notify();
        }
    }
}
