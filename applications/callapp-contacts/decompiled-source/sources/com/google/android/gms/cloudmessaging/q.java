package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/q.class */
abstract class q<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f22567a;

    /* renamed from: b  reason: collision with root package name */
    final i<T> f22568b = new i<>();

    /* renamed from: c  reason: collision with root package name */
    final int f22569c;

    /* renamed from: d  reason: collision with root package name */
    final Bundle f22570d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(int i, int i2, Bundle bundle) {
        this.f22567a = i;
        this.f22569c = i2;
        this.f22570d = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(zzp zzpVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzpVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length());
            sb.append("Failing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
        }
        this.f22568b.a(zzpVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
        }
        this.f22568b.a((i<T>) t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    public String toString() {
        int i = this.f22569c;
        int i2 = this.f22567a;
        boolean a2 = a();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(a2);
        sb.append("}");
        return sb.toString();
    }
}
