package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.cloudmessaging.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/q.class */
abstract class AbstractC11794q<T> {

    /* renamed from: a */
    final int f39132a;

    /* renamed from: b */
    final C14186i<T> f39133b = new C14186i<>();

    /* renamed from: c */
    final int f39134c;

    /* renamed from: d */
    final Bundle f39135d;

    public AbstractC11794q(int i, int i2, Bundle bundle) {
        this.f39132a = i;
        this.f39134c = i2;
        this.f39135d = bundle;
    }

    /* renamed from: a */
    public abstract void mo19479a(Bundle bundle);

    /* renamed from: a */
    public final void m19485a(zzp zzpVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
        }
        this.f39133b.m11472a(zzpVar);
    }

    /* renamed from: a */
    public final void m19484a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
        }
        this.f39133b.m11471a((C14186i<T>) t);
    }

    /* renamed from: a */
    public abstract boolean mo19480a();

    public String toString() {
        int i = this.f39134c;
        int i2 = this.f39132a;
        boolean mo19480a = mo19480a();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(mo19480a);
        sb.append("}");
        return sb.toString();
    }
}
