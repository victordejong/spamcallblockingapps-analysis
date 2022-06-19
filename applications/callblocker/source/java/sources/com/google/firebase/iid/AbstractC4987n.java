package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.firebase.iid.n */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/n.class */
abstract class AbstractC4987n<T> {

    /* renamed from: a */
    final int f21164a;

    /* renamed from: b */
    final C4470h<T> f21165b = new C4470h<>();

    /* renamed from: c */
    final int f21166c;

    /* renamed from: d */
    final Bundle f21167d;

    public AbstractC4987n(int i, int i2, Bundle bundle) {
        this.f21164a = i;
        this.f21166c = i2;
        this.f21167d = bundle;
    }

    /* renamed from: a */
    public abstract void mo1912a(Bundle bundle);

    /* renamed from: a */
    public final void m1923a(zzam zzamVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzamVar);
            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length()).append("Failing ").append(valueOf).append(" with ").append(valueOf2).toString());
        }
        this.f21165b.m3888a(zzamVar);
    }

    /* renamed from: a */
    public final void m1922a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length()).append("Finishing ").append(valueOf).append(" with ").append(valueOf2).toString());
        }
        this.f21165b.m3887a((C4470h<T>) t);
    }

    /* renamed from: a */
    public abstract boolean mo1913a();

    public String toString() {
        int i = this.f21166c;
        int i2 = this.f21164a;
        return new StringBuilder(55).append("Request { what=").append(i).append(" id=").append(i2).append(" oneWay=").append(mo1913a()).append("}").toString();
    }
}
