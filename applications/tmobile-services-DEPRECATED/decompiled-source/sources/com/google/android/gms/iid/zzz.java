package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzz.class */
abstract class zzz<T> {

    /* renamed from: a */
    final int f7811a;

    /* renamed from: b */
    final TaskCompletionSource<T> f7812b;

    /* renamed from: c */
    final int f7813c;

    /* renamed from: d */
    final Bundle f7814d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m14126a(zzaa zzaaVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzaaVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f7812b.m10829b(zzaaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void mo14125b(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract boolean mo14124c();

    public String toString() {
        int i = this.f7813c;
        int i2 = this.f7811a;
        mo14124c();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=false}");
        return sb.toString();
    }
}
