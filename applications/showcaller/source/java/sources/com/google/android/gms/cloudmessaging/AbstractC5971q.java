package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.cloudmessaging.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/q.class */
abstract class AbstractC5971q<T> {

    /* renamed from: a */
    final int f19128a;

    /* renamed from: b */
    final C7968h<T> f19129b = new C7968h<>();

    /* renamed from: c */
    final int f19130c;

    /* renamed from: d */
    final Bundle f19131d;

    public AbstractC5971q(int i, int i2, Bundle bundle) {
        this.f19128a = i;
        this.f19130c = i2;
        this.f19131d = bundle;
    }

    /* renamed from: a */
    public abstract void mo17510a(Bundle bundle);

    /* renamed from: b */
    public final void m17515b(zzp zzpVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(valueOf.length() + 14 + valueOf2.length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f19129b.m5806b(zzpVar);
    }

    /* renamed from: c */
    public final void m17514c(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16 + valueOf2.length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f19129b.m5805c(t);
    }

    /* renamed from: d */
    public abstract boolean mo17509d();

    public String toString() {
        int i = this.f19130c;
        int i2 = this.f19128a;
        boolean mo17509d = mo17509d();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(mo17509d);
        sb.append("}");
        return sb.toString();
    }
}
