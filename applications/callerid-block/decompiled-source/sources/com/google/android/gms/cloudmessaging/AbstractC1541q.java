package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.C2398h;
/* renamed from: com.google.android.gms.cloudmessaging.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/q.class */
abstract class AbstractC1541q<T> {

    /* renamed from: a */
    final int f5792a;

    /* renamed from: b */
    final C2398h<T> f5793b = new C2398h<>();

    /* renamed from: c */
    final int f5794c;

    /* renamed from: d */
    final Bundle f5795d;

    AbstractC1541q(int i, int i2, Bundle bundle) {
        this.f5792a = i;
        this.f5794c = i2;
        this.f5795d = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void m8480a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8479b(zzp zzpVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f5793b.m3768b(zzpVar);
    }

    /* renamed from: c */
    final void m8478c(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f5793b.m3767c(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract boolean m8477d();

    public String toString() {
        int i = this.f5794c;
        int i2 = this.f5792a;
        boolean d = m8477d();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(d);
        sb.append("}");
        return sb.toString();
    }
}
